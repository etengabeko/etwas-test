#ifndef TESTS_SERIALIZATION_BRIGHT_OPTIONS_H
#define TESTS_SERIALIZATION_BRIGHT_OPTIONS_H

#include "basictest.h"

namespace test
{
namespace serialization
{

class BrightOptions : public BasicTest
{
public:
    explicit BrightOptions(QObject* parent = nullptr);

private:
    void makeTestData() override;

};

} // serialization
} // test

#endif // TESTS_SERIALIZATION_BRIGHT_OPTIONS_H
