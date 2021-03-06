#ifndef TESTS_SERIALIZATION_DEVICE_IDENTITY_H
#define TESTS_SERIALIZATION_DEVICE_IDENTITY_H

#include "basictest.h"

namespace test
{
namespace serialization
{

class DeviceIdentity : public BasicTest
{
public:
    explicit DeviceIdentity(QObject* parent = nullptr);

private:
    void makeTestData() override;

};

} // serialization
} // test

#endif // TESTS_SERIALIZATION_DEVICE_IDENTITY_H
