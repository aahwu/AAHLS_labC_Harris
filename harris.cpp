#include "harris.h"
#include <ap_int.h>
#include <ap_fixed.h>
#include <iostream>

void read_input(DTYPE in[DATA_SIZE], stream_t& inStream, int size) {
#pragma HLS INTERFACE mode=ap_ctrl_chain port=return

mem_rd:
    for (int i = 0; i < size; i += VECTOR_SIZE) {
    	data_t obj;
obj_rd:
    	for (int j = 0; j<VECTOR_SIZE; j++) {
#pragma HLS UNROLL
    		obj.var[j] = in[i+j];
    	}
		inStream.write(obj);
    }
}

void transfer(stream_t& inStream, stream_t& outStream, int size) {
execute:
    for (int i = 0; i < size; i += VECTOR_SIZE) {
        outStream << inStream.read();
	}
}

void write_result(DTYPE out[DATA_SIZE], stream_t& outStream, int size) {
#pragma HLS INTERFACE mode=ap_ctrl_chain port=return
mem_wr:
    for (int i = 0; i < size; i += VECTOR_SIZE) {
		data_t obj = outStream.read();
obj_wr:
		for (int j = 0; j<VECTOR_SIZE; j++) {
#pragma HLS UNROLL
			out[i+j] = obj.var[j];
		}
    }
}

void consumer(stream_t& inputStream) {
    for (int i = 0; i < DATA_SIZE; i += VECTOR_SIZE) {
		data_t obj = inputStream.read();
    }
}

void windowShiftLeft(DTYPE windowBuffer[WINDOW_SIZE][VECTOR_SIZE*2], DTYPE input[WINDOW_SIZE][VECTOR_SIZE]) {
#pragma HLS INLINE
	char i, j;
	for (i = 0; i<WINDOW_SIZE; i++) {
#pragma HLS UNROLL
		for (j = 0; j<VECTOR_SIZE; j++) {
#pragma HLS UNROLL
			windowBuffer[i][j] = windowBuffer[i][j+VECTOR_SIZE];
			windowBuffer[i][j+VECTOR_SIZE] = input[i][j];
		}
	}
}

void sobel_x(DTYPE windowBuffer[WINDOW_SIZE][VECTOR_SIZE*2], data_t& Gx)
{
#pragma HLS INLINE
   	int i, idx;

   	for (i = 0; i<VECTOR_SIZE; i++) {
#pragma HLS UNROLL
   		idx = i + VECTOR_SIZE;
   		Gx.var[i] = (windowBuffer[0][idx] - windowBuffer[0][idx-2]) +
    		        ((windowBuffer[1][idx] - windowBuffer[1][idx-2]) << 1) +
			        (windowBuffer[2][idx] - windowBuffer[2][idx-2]);
   	}
}

void sobel_y(DTYPE windowBuffer[WINDOW_SIZE][VECTOR_SIZE*2], data_t& Gy)
{
#pragma HLS INLINE
   	int i, idx;

   	for (i = 0; i<VECTOR_SIZE; i++) {
#pragma HLS UNROLL
   		idx = i + VECTOR_SIZE;
       	Gy.var[i] = (windowBuffer[2][idx-2] - windowBuffer[0][idx-2]) +
    		        ((windowBuffer[2][idx-1] - windowBuffer[0][idx-1]) << 1) +
			        (windowBuffer[2][idx] - windowBuffer[0][idx]);
   	}
}

DTYPE divideByNine(DTYPE input) {
	DTYPE res;
	res = input * 7;
	res += (res >> 6);
	res += (res >> 12);
	res += (res >> 24);
	res = res >> 6;
	return res;
}

void boxFilter(DTYPE windowBuffer[WINDOW_SIZE][VECTOR_SIZE*2], DTYPE S[VECTOR_SIZE])
{
#pragma HLS INLINE
	const int colNum = VECTOR_SIZE + WINDOW_SIZE - 1;
	const int offset = VECTOR_SIZE - WINDOW_SIZE + 1;
	DTYPE res[colNum];

	int i, j;

	for (i = 0; i<colNum; i++) {
#pragma HLS UNROLL
		res[i] = windowBuffer[0][i+offset] + windowBuffer[1][i+offset] + windowBuffer[2][i+offset];
	}
	for (j = 0; j<VECTOR_SIZE; j++) {
#pragma HLS UNROLL
		S[j] = divideByNine(res[j] + res[j+1] + res[j+2]);
	}
}

bool compareNeighbor(DTYPE center, DTYPE up, DTYPE down, DTYPE right, DTYPE left) {
#pragma HLS INLINE
	bool res;
	if (center > up && center > down && center > right && center > left) {
		res = true;
	} else {
		res = false;
	}
	return res;
}

void localMaximum(DTYPE windowBuffer[WINDOW_SIZE][VECTOR_SIZE*2], bool res[VECTOR_SIZE])
{
#pragma HLS INLINE
	int i;
	int offset = VECTOR_SIZE - WINDOW_SIZE + 2;

	for (i = 0; i<VECTOR_SIZE; i++) {
#pragma HLS UNROLL
		res[i] = compareNeighbor(
			windowBuffer[1][i+offset],
			windowBuffer[0][i+offset],
			windowBuffer[2][i+offset],
			windowBuffer[1][i+offset+1],
			windowBuffer[1][i+offset-1]
		);
	}
}

// G stream: (128 - 2) * (128 / 8) = 126 * 16
// first 4 columns per row: (x, x, obj(row, 0), obj(row, 1))
void sobel(stream_t& inStream, stream_t& GxxStream, stream_t& GyyStream, stream_t& GxyStream)
{
#pragma HLS INTERFACE mode=ap_ctrl_none port=return
	int i, j, k, l, m, idx;
	data_t obj;
	DTYPE input[WINDOW_SIZE][VECTOR_SIZE];
#pragma HLS ARRAY_RESHAPE dim=0 type=complete variable=input
	data_t Gx, Gy;
	data_t Gxx, Gyy, Gxy;
	DTYPE windowBuffer[WINDOW_SIZE][VECTOR_SIZE*2];
#pragma HLS ARRAY_RESHAPE dim=0 type=complete variable=windowBuffer
	DTYPE rowBuffer[WINDOW_SIZE][VECTOR_SIZE][COL_SIZE/VECTOR_SIZE];
#pragma HLS ARRAY_RESHAPE dim=1 type=complete variable=rowBuffer
#pragma HLS ARRAY_RESHAPE dim=2 type=complete variable=rowBuffer

	// (0, 0) at up-left corner
	for (i = 0; i<ROW_SIZE; i++) {
		for (j = 0; j<COL_SIZE/VECTOR_SIZE; j++) {

			// read from stream
			obj = inStream.read();

			// rowBuffer shift up
			for (k = 0; k<VECTOR_SIZE; k++) {
#pragma HLS UNROLL
				input[0][k] = rowBuffer[1][k][j];
				input[1][k] = rowBuffer[2][k][j];
				input[2][k] = obj.var[k];
			}

			// insert to rowBuffer
			for (l = 0; l<VECTOR_SIZE; l++) {
#pragma HLS UNROLL
				rowBuffer[0][l][j] = input[0][l];
				rowBuffer[1][l][j] = input[1][l];
				rowBuffer[2][l][j] = input[2][l];
			}
			
			// fill windowBuffer
			if (i < 2) { // pass
				continue;
			}
			// windowBuffer shift right & fill new column
			windowShiftLeft(windowBuffer, input);

			// calculate sobel
			sobel_x(windowBuffer, Gx);
			sobel_y(windowBuffer, Gy);

			for (m = 0; m<VECTOR_SIZE; m++) {
#pragma HLS UNROLL
				if (j==0 && (m == 0 || m == 1)) {
					Gxx.var[m] = 0;
					Gyy.var[m] = 0;
					Gxy.var[m] = 0;
				} else {
					Gxx.var[m] = (Gx.var[m] * Gx.var[m]) >> 6;
					Gyy.var[m] = (Gy.var[m] * Gy.var[m]) >> 6;
					Gxy.var[m] = (Gx.var[m] * Gy.var[m]) >> 6;
				}
			}

			GxxStream.write(Gxx);
			GyyStream.write(Gyy);
			GxyStream.write(Gxy);
		}
	}
}

// S stream: (128 - 2) * ((128 / 8) + 1) = 126 * 17
// first 8 columns per row: (x, x, x, obj(row, 0), ...)
// last 8 columns per row: (obj(row, last), x, ..., x, x)
void filterSingle(
	stream_t& GStream,
	stream_t& SStream
)
{
#pragma HLS INTERFACE mode=ap_ctrl_none port=return
	unsigned int i, k, l, m, n;
	char j;
	int idx;
	data_t obj;
	DTYPE input[WINDOW_SIZE][VECTOR_SIZE];
#pragma HLS ARRAY_RESHAPE dim=0 type=complete variable=input
	DTYPE tmp_S[VECTOR_SIZE];
	data_t res_S;
	DTYPE windowBuffer[WINDOW_SIZE][VECTOR_SIZE*2];
#pragma HLS ARRAY_RESHAPE dim=0 type=complete variable=windowBuffer
	DTYPE rowBuffer[WINDOW_SIZE][VECTOR_SIZE][COL_SIZE/VECTOR_SIZE];
#pragma HLS ARRAY_RESHAPE dim=1 type=complete variable=rowBuffer
#pragma HLS ARRAY_RESHAPE dim=2 type=complete variable=rowBuffer

	// (0, 0) at up-left corner
	for (i = 0; i<ROW_SIZE; i++) {
		for (j = 0; j<COL_SIZE/VECTOR_SIZE + 1; j++) { // + 1 for last obj

			if (j != COL_SIZE/VECTOR_SIZE) {
				// read from stream
				if (i == 0 || i == ROW_SIZE-1) {
					obj = {0, 0, 0, 0, 0, 0, 0, 0};
				} else {
					obj = GStream.read();
				}
				// rowBuffer shift up
				for (k = 0; k<VECTOR_SIZE; k++) {
#pragma HLS UNROLL
					input[0][k] = rowBuffer[1][k][j];
					input[1][k] = rowBuffer[2][k][j];
					input[2][k] = obj.var[k];
				}

				// insert to rowBuffer
				for (l = 0; l<VECTOR_SIZE; l++) {
#pragma HLS UNROLL
					rowBuffer[0][l][j] = input[0][l];
					rowBuffer[1][l][j] = input[1][l];
					rowBuffer[2][l][j] = input[2][l];
				}
			} else {
				for (n = 0; n<VECTOR_SIZE; n++) {
#pragma HLS UNROLL
					input[0][n] = 0;
					input[1][n] = 0;
					input[2][n] = 0;
				}
			}
			
			// fill windowBuffer
			if (i < 2) { // pass
				continue;
			}
			// windowBuffer shift right & fill new column
			windowShiftLeft(windowBuffer, input);

			// calculate sobel
			boxFilter(windowBuffer, tmp_S);

			for (m = 0; m<VECTOR_SIZE; m++) {
#pragma HLS UNROLL
				if (j == 0 && m < 3) {
					res_S.var[m] = 0;
				} else if (j == COL_SIZE/VECTOR_SIZE && m != 0) {
					res_S.var[m] = 0;
				} else {
					res_S.var[m] = tmp_S[m] >> 2;
				}
			}
			SStream.write(res_S);
		}
	}
}

void filter(
	stream_t& GxxStream, stream_t& GyyStream, stream_t& GxyStream,
	stream_t& SxxStream, stream_t& SyyStream, stream_t& SxyStream
)
{
#pragma HLS DATAFLOW
	filterSingle(GxxStream, SxxStream);
	filterSingle(GyyStream, SyyStream);
	filterSingle(GxyStream, SxyStream);
}

void response(
	stream_t& SxxStream, stream_t& SyyStream, stream_t& SxyStream, double alpha,
	stream_t& RStream
)
{
#pragma HLS INTERFACE mode=ap_ctrl_none port=return
    int i, j, k;
    data_t Sxx, Sxy, Syy;
    data_t det1, det2, det;
	data_t trace, traceSquare;
	data_t res;

	ap_fixed<39, 32> response[VECTOR_SIZE];

    for (i = 1; i < ROW_SIZE-1; i++) {
        for (j = 0; j < COL_SIZE/VECTOR_SIZE + 1; j++) {
            Sxx = SxxStream.read();
            Syy = SyyStream.read();
            Sxy = SxyStream.read();

			for (k = 0; k<VECTOR_SIZE; k++) {
#pragma HLS UNROLL
				trace.var[k] = Sxx.var[k] + Syy.var[k];
				traceSquare.var[k] = trace.var[k] * trace.var[k];
				det1.var[k] = Sxx.var[k] * Syy.var[k];
				det2.var[k] = Sxy.var[k] * Sxy.var[k];
				det.var[k] = det1.var[k] - det2.var[k];

				response[k] = det.var[k] - (ap_ufixed<21, 1>)alpha * traceSquare.var[k];

				if (response[k] > 442) {
					res.var[k] = DTYPE(response[k]);
				} else {
					res.var[k] = 0;
				}
			}
			RStream.write(res);
        }
    }
}

void findCorner(
	stream_t& RStream,
	stream_t& outStream
)
{
#pragma HLS INTERFACE mode=ap_ctrl_none port=return
	int i, j, k, l, m, idx;
	data_t obj;
	data_t corner;
	const data_t zero = {0, 0, 0, 0};
	bool res[VECTOR_SIZE];
	bool resTmp[VECTOR_SIZE-3];


	DTYPE input[WINDOW_SIZE][VECTOR_SIZE];
#pragma HLS ARRAY_RESHAPE dim=0 type=complete variable=input
	DTYPE windowBuffer[WINDOW_SIZE][VECTOR_SIZE*2];
#pragma HLS ARRAY_RESHAPE dim=0 type=complete variable=windowBuffer
	DTYPE rowBuffer[WINDOW_SIZE][VECTOR_SIZE][COL_SIZE/VECTOR_SIZE + 1];
#pragma HLS ARRAY_RESHAPE dim=1 type=complete variable=rowBuffer
#pragma HLS ARRAY_RESHAPE dim=2 type=complete variable=rowBuffer

	// (0, 0) at up-left corner
	for (i = 0; i<ROW_SIZE; i++) {
		for (j = 0; j<COL_SIZE/VECTOR_SIZE + 1; j++) { // + 1 for last obj

			// read from stream
			if (i == 0 || i == ROW_SIZE-1) {
				obj = {0, 0, 0, 0, 0, 0, 0, 0};
			} else {
				obj = RStream.read();
			}

			// rowBuffer shift up
			for (k = 0; k<VECTOR_SIZE; k++) {
#pragma HLS UNROLL
				input[0][k] = rowBuffer[1][k][j];
				input[1][k] = rowBuffer[2][k][j];
				input[2][k] = obj.var[k];
			}

			// insert to rowBuffer
			for (l = 0; l<VECTOR_SIZE; l++) {
#pragma HLS UNROLL
				rowBuffer[0][l][j] = input[0][l];
				rowBuffer[1][l][j] = input[1][l];
				rowBuffer[2][l][j] = input[2][l];
			}

			
			// fill windowBuffer
			if (i < 2) { // pass
				if (i == 0 && j != COL_SIZE/VECTOR_SIZE) {
					outStream.write(zero);
				}
				continue;
			}

			// windowBuffer shift right & fill new column
			windowShiftLeft(windowBuffer, input);

			// calculate sobel
			localMaximum(windowBuffer, res);

			if (j == 1) {
				for (m = VECTOR_SIZE-1; m>3; m--) {
#pragma HLS UNROLL
					resTmp[m-3] = res[m];
				}
				resTmp[0] = 0;
			}

			if (j == COL_SIZE/VECTOR_SIZE) {
				for (m = 0; m<VECTOR_SIZE-3; m++) {
#pragma HLS UNROLL
					corner.var[m] = resTmp[m] ? 255 : 0;
				}
				corner.var[VECTOR_SIZE-3] = res[0] ? 255 : 0;
				corner.var[VECTOR_SIZE-2] = res[1] ? 255 : 0;
				corner.var[VECTOR_SIZE-1] = 0;
			}

			if (j != 0 && j != 1 && j != COL_SIZE/VECTOR_SIZE) {
				for (m = 0; m<VECTOR_SIZE-3; m++) {
#pragma HLS UNROLL
					corner.var[m] = resTmp[m] ? 255 : 0;
				}
				corner.var[VECTOR_SIZE-3] = res[0] ? 255 : 0;
				corner.var[VECTOR_SIZE-2] = res[1] ? 255 : 0;
				corner.var[VECTOR_SIZE-1] = res[2] ? 255 : 0;
				for (m = VECTOR_SIZE-1; m>=3; m--) {
#pragma HLS UNROLL
					resTmp[m-3] = res[m];
				}
			}
			if (j != 0) {
				outStream.write(corner);
			}
		}
	}
	for (m = 0; m<COL_SIZE/VECTOR_SIZE; m++) {
		outStream.write(zero);
	}
}
void harris(DTYPE imgSrc[DATA_SIZE], DTYPE imgDst[DATA_SIZE], double alpha)
{
#pragma HLS ARRAY_RESHAPE dim=1 factor=8 type=cyclic variable=imgDst
#pragma HLS ARRAY_RESHAPE dim=1 factor=8 type=cyclic variable=imgSrc
#pragma HLS INTERFACE mode=ap_ctrl_chain port=return
	//Write your code here
    static stream_t inStream("input_stream");
    static stream_t outStream("output_stream");
    static stream_t GxxStream("Gxx_stream");
    static stream_t GyyStream("Gyy_stream");
    static stream_t GxyStream("Gxy_stream");
    static stream_t SxxStream("Sxx_stream");
    static stream_t SyyStream("Syy_stream");
    static stream_t SxyStream("Sxy_stream");
    static stream_t RStream("response_stream");
#pragma HLS STREAM variable = inStream depth=16
#pragma HLS STREAM variable = outStream depth=16
#pragma HLS STREAM variable = GxxStream depth=16
#pragma HLS STREAM variable = GyyStream depth=16
#pragma HLS STREAM variable = GxyStream depth=16
#pragma HLS STREAM variable = SxxStream depth=16
#pragma HLS STREAM variable = SyyStream depth=16
#pragma HLS STREAM variable = SxyStream depth=16
#pragma HLS STREAM variable = RStream depth=16

#pragma HLS DATAFLOW
    read_input(imgSrc, inStream, DATA_SIZE);
	sobel(inStream, GxxStream, GyyStream, GxyStream);
	filter(GxxStream, GyyStream, GxyStream, SxxStream, SyyStream, SxyStream);
	response(SxxStream, SyyStream, SxyStream, alpha, RStream);
	findCorner(RStream, outStream);
	write_result(imgDst, outStream, DATA_SIZE);
}
