#include "messagePreprocess.h"

void preprocessMessage(std::string message, uint32_t* chunkList)
{
    uint64_t messageSize = message.size();
    std::vector<unsigned char> messageBinList(message.begin(), message.end());
    
    int offset = messageSize % 64;
    int paddingLength = (offset < 56) ? (56 - offset) : (56 + 64) - offset;
    

    // padding the message so it becomes a multiple of 512
    for(int i = 0; i < paddingLength; i++)  // fill the list until it is 512-bits width
    {
        if(i == 0)
            messageBinList.push_back(char(0x80)); // adding a single 1 with seven zeros
        else
            messageBinList.push_back(0x00);
    }


    // creating the chunks :
    for(int i = 0; i < 14; i++)
    {
        // each four bytes form a single 32-bit data for MD-5 Algorithm
        chunkList[i] = (uint32_t)(messageBinList[4*i + 3] << 24) |
                       (uint32_t)(messageBinList[4*i + 2] << 16) |
                       (uint32_t)(messageBinList[4*i + 1] << 8)  |
                       (uint32_t)(messageBinList[4*i]);
    }


    
    chunkList[14] = (uint32_t)(messageSize * 8);
    chunkList[15] = (uint32_t)((messageSize * 8) >> 32);
    

}



void writePreprocessedDataToFile(uint32_t* chunkList)
{
    std::ofstream file(MESSAGE_FILE_NAME);
    if(!file.is_open())
    {
        throw std::runtime_error("Cannot open file. Abort.");
    }

    for(int i = 0; i < 16; i++)
    {
        file << "0x" << std::hex << chunkList[i];
        if(i < 15)
            file << std::endl;
    }
    
    std::cout << "Preprocessed Message memory initialization file careted as " << MESSAGE_FILE_NAME << std::endl;
    file.close();

}
