#ifndef TRAIN_H
#define TRAIN_H

#include <string>

class SignalController;  // Forward declaration

class Train {
public:
    Train(const std::string &name, SignalController *controller);
    void move();
    int getPosition() const;  // Method to access the position
    // Other member functions...

private:
    std::string name;
    int position;
    SignalController *controller;
};

#endif // TRAIN_H
