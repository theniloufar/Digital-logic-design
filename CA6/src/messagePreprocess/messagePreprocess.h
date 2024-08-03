#ifndef __MSGPP_H__
#define __MSGPP_H__

#include <cstdint>
#include <string>
#include <fstream>
#include <vector>
#include <iostream>

#define MESSAGE_FILE_NAME "output/inputMessage.mem"

void preprocessMessage(std::string message, uint32_t* chunkList);
void writePreprocessedDataToFile(uint32_t* chunkList);



#endif