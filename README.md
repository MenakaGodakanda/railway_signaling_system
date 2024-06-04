# Railway Signaling System
## Overview
The Railway Signaling System project simulates the operation of a signaling system in a railway network. It involves the movement of trains along a track and the updating of signals to ensure safe and efficient train operations.

## Features
- Simulates the movement of trains along a track.
- Updates signals based on the position of trains.
- Real-time and distributed system simulation.

## Requirements
- C/C++ programming knowledge.
- Tools and Libraries:
  - CMake: For managing the build process.
    ```sh
    sudo apt update
    sudo apt install cmake
    ```
  - gcc/g++: GNU compiler for compiling C/C++ code.
    ```sh
    sudo apt install build-essential
    ```
  - Git: For version control.
    ```sh
    sudo apt install git
    ```
  - Boost Libraries: For additional C++ functionalities.
    ```sh
    sudo apt install libboost-all-dev
    ```
  - ZeroMQ: For messaging between distributed components.
    ```sh
    sudo apt install libzmq3-dev
    ```

## File Structure
```
railway_signaling_system/
├── CMakeLists.txt              # The main CMake configuration file.
├── cmake/
│   └── FindZeroMQ.cmake        # Custom CMake module to find ZeroMQ.
├── include/
│   ├── messaging.h             # Header file for the messaging component.
│   ├── signal_controller.h     # Header file for the signal controller component.
│   └── train.h                 # Header file for the train component.
├── src/
│   ├── main.cpp                # Main application file.
│   ├── messaging.cpp           # Source file for the messaging component.
│   ├── signal_controller.cpp   # Source file for the signal controller component.
│   └── train.cpp               # Source file for the train component.
└── build/                      # Directory for build artifacts.
```

## Installation
1. Clone the repository:

```bash
git clone https://github.com/MenakaGodakanda/railway_signaling_system.git
```

2. Build the project using CMake:
```bash
cd railway_signaling_system
mkdir build
cd build
cmake ..
make
```

## Usage
1. Run the compiled executable:
```bash
./RailwaySignalingSystem
```

The output should display the following: <br><br>

The output simulates the movement of a train along a railway track and the concurrent updating of signals by the signaling system to ensure safe operation. This output is typical of a real-time distributed system simulation, where multiple components (trains and signaling system) interact to achieve a specific goal (safe and efficient train operation).

- `Train Train1 is moving to position: 1`: This line indicates that a train named "Train1" is moving and has reached position 1. This is likely part of the simulation where the train is moving along a track.

- `Updating signals for train at position: 1`: This line indicates that the signaling system is updating the signals for the train at position 1. In railway systems, signals are crucial for ensuring safe operations, and they need to be updated according to the position of the trains.

- `Train Train1 is moving to position: 2`: Similar to the first line, this indicates that the train named "Train1" has moved to position 2.

- `Updating signals for train at position: 2`: Similar to the second line, this indicates that the signaling system is updating the signals for the train at position 2.

- The pattern continues with subsequent lines indicating the movement of the train and the updating of signals as the train progresses along the track.

2. Monitor the output to observe the movement of trains and updates to signals.

## License
This project is licensed under the MIT License.

## Acknowledgements
- Inspired by real-world railway signaling systems.
- Built with C/C++ and open source tools.
