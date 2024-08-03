#include <stdio.h>
#include <iostream>
#include <cstdint>
#include <string>


#include "uint4/uint4.h"
#include "messagePreprocess/messagePreprocess.h"


#define FUNCTION_ROUND1(B, C, D) (B & C) | ((~B) & D)       // function used in Round 1
#define FUNCTION_ROUND2(B, C, D) (D & B) | ((~D) & C)       // function used in Round 2
#define FUNCTION_ROUND3(B, C, D) (B ^ C ^ D)                // function used in Round 3
#define FUNCTION_ROUND4(B, C, D) (C ^ (B | (~D)))           // function used in Round 4


#define A_INIT 0x67452301
#define B_INIT 0xefcdab89
#define C_INIT 0x98badcfe
#define D_INIT 0x10325476

using namespace std;




// Shift Amount per each iteration:
const uint32_t S[] = {7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
                      5,  9, 14, 20, 5,  9, 14, 20, 5,  9, 14, 20, 5,  9, 14, 20,
                      4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23,
                      6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21};

// K constants :
const uint32_t K[] = {0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee,
                      0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501,
                      0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be,
                      0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821,
                      0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa,
                      0xd62f105d, 0x02441453, 0xd8a1e681, 0xe7d3fbc8,
                      0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed,
                      0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a,
                      0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c,
                      0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70,
                      0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x04881d05,
                      0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665,
                      0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039,
                      0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1,
                      0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1,
                      0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391};




// Rotational Shift left function (32-bit width)
uint32_t rotateLeft(uint32_t var, uint32_t shiftAmount){
    return (var << shiftAmount) | (var >> (32 - shiftAmount));
}


//The following function stores A, B, C, D in the hashResultArray (which has a size of 16), 
// with each register arranged in little-endian order.
void convertResultToLittleEndian(uint32_t* hashRegisters, uint8_t* hashResultArray)
{
    for(int i = 0; i < 4; i++)
    {
        hashResultArray[4*i]     = (uint8_t)(hashRegisters[i] & 0x000000FF);
        hashResultArray[4*i + 1] = (uint8_t)((hashRegisters[i] >> 8) & 0x000000FF);
        hashResultArray[4*i + 2] = (uint8_t)((hashRegisters[i] >> 16) & 0x000000FF);
        hashResultArray[4*i + 3] = (uint8_t)((hashRegisters[i] >> 24) & 0x000000FF);
    }
}



void MD5SingleBlock(uint32_t* blockChunks, uint8_t* hashArray)
{
    // initialization of 4 main 32-bits registers (A, B, C, D):
    uint32_t A = A_INIT;
    uint32_t B = B_INIT;
    uint32_t C = C_INIT;
    uint32_t D = D_INIT;

    uint32_t F;     // F is the result of non-linear function on each round
    uint32_t temp;
    uint4_t j;     // j is 4-bits width only

    for(int i = 0; i < 64; i++)
    {
        switch (i / 16)
        {
        case 0:     // Round 1
            F = FUNCTION_ROUND1(B, C, D);
            j = i;
            break;
        
        case 1:     // Round 2
            F = FUNCTION_ROUND2(B, C, D);
            j = (uint4_t)((i * 5) + 1);
            break;

        case 2:     // Round 3
            F = FUNCTION_ROUND3(B, C, D);
            j = (uint4_t)((i * 3) + 5);
            break;

        case 3:     // Round 4
            F = FUNCTION_ROUND4(B, C, D);
            j = (uint4_t)(7 * i);
            break;
        
        }

        temp = D;   // saving previous value of D for exchanging it with A
        D = C;      // D <= C
        C = B;      // C <= B
        B = B + rotateLeft(A + F + K[i] + blockChunks[j.val()], S[i]);
        A = temp;   // storing previous value of D (temp) in A
    }

    A += A_INIT;
    B += B_INIT;
    C += C_INIT;
    D += D_INIT;

    
    uint32_t hashRegisters[4] = {A, B, C, D};
    convertResultToLittleEndian(hashRegisters, hashArray);

    
}

void printResult(uint8_t* result)
{
    for(int i = 0; i < 16; i++)
        printf("%x", result[i]);
    
    printf("\n");
}

int main()
{
    uint32_t preprocessedMessage[16];
    uint8_t result[16];
    string inputString;

    // getting message from user
    std::cout << "input string : " ;
    getline(cin, inputString);
    
    // preprocess message to create a single block :
    preprocessMessage(inputString, preprocessedMessage);
    writePreprocessedDataToFile(preprocessedMessage);

    // process a signle block message :
    MD5SingleBlock(preprocessedMessage, result);

    // print the hash result :
    cout << "user string Hash : ";
    printResult(result);

    
    return 0;

}