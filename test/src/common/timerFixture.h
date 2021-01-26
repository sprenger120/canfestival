#include "gtest/gtest.h"
extern "C" {
#include "canfestival/applicfg.h"
#include "canfestival/timer.h"
}

class TimerFixture : public ::testing::Test {
protected:
	virtual void SetUp();
};