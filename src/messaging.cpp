#include "messaging.h"

Messaging::Messaging() : context(1), socket(context, ZMQ_PAIR) {}

void Messaging::setup() {
    socket.bind("tcp://*:5555");
}

void Messaging::communicate() {
    zmq::message_t request;
    socket.recv(&request);
    // Handle message
    zmq::message_t reply(5);
    memcpy(reply.data(), "World", 5);
    socket.send(reply);
}
