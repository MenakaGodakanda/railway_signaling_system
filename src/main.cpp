#include <iostream>
#include <thread>
#include <chrono>
#include "signal_controller.h"
#include "train.h"

int main() {
    SignalController signalController;
    Train train("Train1", &signalController);

    // Start the train's operation
    for (int i = 0; i < 10; ++i) {
        train.move();
        signalController.updateSignals(train);
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }

    return 0;
}
