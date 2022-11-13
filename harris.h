#include <hls_stream.h>

#define ROW_SIZE 128
#define COL_SIZE 128
#define DATA_SIZE 16384
#define WINDOW_SIZE 3

#define VECTOR_SIZE 8

typedef int DTYPE;

typedef struct {
    DTYPE var[VECTOR_SIZE];
} data_t;

typedef hls::stream<data_t> stream_t;

void harris(DTYPE imgSrc[DATA_SIZE], DTYPE imgDst[DATA_SIZE], double alpha);
