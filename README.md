# multithreading
Includes all of Baptiste Ramonda's SRI 3A multithreading tutorials at UPSSITECH.

## Objective

The aim of this project is to set up an architecture to demonstrate multithreading in Python. To achieve this, we'll be using a queue manager to manage interactions between a boss, who will fill the task queue, and minions, who will process tasks and send them to the results queue.

## References

[Git setup](https://homepages.laas.fr/gsaurel/teach/2023-2024/3A_SRI/a-tp-1.pdf)

[Tutorial subject](https://homepages.laas.fr/gsaurel/teach/2023-2024/3A_SRI/b-tp-2.pdf)


## Installation

Before trying to launch the project, make sure you have installed the appropriate dependencies (run the lines below to install them) :

```bash
 pip install numpy
```

```bash
 pip install multiprocessing
```


## Usage

To run the project correctly, execute the three commands below in three different terminals (in that order) :

```bash
 python .\classes\QueueManager.py
```

```bash
 python .\classes\Boss.py
```

```bash
 python .\classes\Minion.py
```
