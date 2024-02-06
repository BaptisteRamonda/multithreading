# multithreading
This repository includes all of Baptiste Ramonda's SRI 3A multithreading tutorials at UPSSITECH.

## Objective

The aim of this project is to set up an architecture to demonstrate multithreading in Python. To achieve this, we'll be using a queue manager to manage interactions between a boss, who will fill the task queue, and minions, who will process tasks and send them to the results queue.

## References

[Git setup](https://homepages.laas.fr/gsaurel/teach/2023-2024/3A_SRI/a-tp-1.pdf)

[Subject Part 1](https://homepages.laas.fr/gsaurel/teach/2023-2024/3A_SRI/b-tp-2.pdf)

[Subject Part 2](https://homepages.laas.fr/gsaurel/teach/2023-2024/3A_SRI/c-tp-3.pdf)

[Subject Part 3](https://homepages.laas.fr/gsaurel/teach/2023-2024/3A_SRI/d-tp-4.pdf)

Source : Guilhem Saurel, LAAS-CNRS


## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/BaptisteRamonda/multithreading.git
    cd multithreading
    ```

2. Generate build files using CMake:

    ```bash
    cmake -B build -S .
    ```

3. Build the project:

    ```bash
    cmake --build build
    ```

## Usage

Open multiple terminals for different components:

1. In a second terminal, run:

    ```bash
    python ./multithreading/QueueManager.py
    ```

2. In a third terminal, run:

    ```bash
    python ./multithreading/proxy.py
    ```

3. In a fourth terminal, run:

    ```bash
    python ./multithreading/Boss.py
    ```

    Then provide the number of tasks to be executed by the Boss.

4. In the first terminal, run:

    ```bash
    ./build/low_level
    ```

## Unit tests

In the test folder you will find unit tests testing the different classes of the project. To run these tests, open an IDE like PyCharm and execute these tests directly in it. (Make sure all the dependencies are installed)

## License

This project is licensed under the MIT License - see the [LICENSE](https://en.wikipedia.org/wiki/MIT_License) for details.
