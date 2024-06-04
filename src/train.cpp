#include "train.h"
#include "signal_controller.h"
#include <iostream>

Train::Train(const std::string &name, SignalController *controller)
    : name(name), position(0), controller(controller) {}

void Train::move() {
    position++;
    std::cout << "Train " << name << " is moving to position: " << position << std::endl;
}

int Train::getPosition() const {
    return position;
}
