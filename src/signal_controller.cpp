#include "signal_controller.h"
#include "train.h"
#include <iostream>

void SignalController::updateSignals(const Train &train) {
    std::cout << "Updating signals for train at position: " << train.getPosition() << std::endl;
}
