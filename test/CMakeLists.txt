cmake_minimum_required(VERSION 3.0)
enable_testing()

cmake_policy(SET CMP0048 NEW)
project(my_gtest_pkgconfig VERSION 0.0.1 LANGUAGES CXX C)

find_package(PkgConfig)
pkg_search_module(GTEST REQUIRED gtest_main)

include_directories(../hippomocks/HippoMocks
../include
config
src/common
src/testOD/generated)

add_executable(testapp src/main.cpp 
src/testOD/generated/testNodeMaster.c
src/testOD/generated/testNodeSlave.c
src/common/testCanDriver.cpp
src/common/testCommon.c
src/common/timerFixture.cpp
src/drivers/mock.cpp
src/testSDO/testSDO.cpp
src/testStates/testStates.cpp
src/testSync/testSync.cpp
src/testTimer/testTimer.cpp
../src/dcf.c
../src/emcy.c 
../src/lifegrd.c 
../src/lss.c 
../src/nmtMaster.c 
../src/nmtSlave.c 
../src/objacces.c 
../src/pdo.c 
../src/sdo.c 
../src/states.c 
../src/sync.c 
../src/timer.c 
)
target_link_libraries(testapp ${GTEST_LDFLAGS})
target_compile_options(testapp PUBLIC ${GTEST_CFLAGS})

include(CTest)
add_test(first_and_only_test testapp)