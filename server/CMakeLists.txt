cmake_minimum_required(VERSION 3.10)
project(server)

set(CMAKE_CXX_STANDARD 11)

add_executable(server main.cpp)
target_link_libraries(server -lzmqpp -lzmq)
