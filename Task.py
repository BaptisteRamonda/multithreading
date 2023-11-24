import time
import numpy as np


class Task:

    def __init__(self, identifier, size=None):
        # Unique identifier for the task
        self.identifier = identifier

        # Choose the size of the problem. If 'size' is not provided, generate a random size between 300 and 3,000.
        self.size = size or np.random.randint(300, 3_000)

        # Generate the input of the problem: a random matrix 'a' of size (self.size, self.size) and
        # a random vector 'b' of size self.size
        self.a = np.random.rand(self.size, self.size)
        self.b = np.random.rand(self.size)

        # Prepare room for the results: initialize an array 'x' of zeros with the same size as 'b'
        self.x = np.zeros(self.size)

        # Initialize the 'time' attribute to 0
        self.time = 0

    def work(self):
        # Record the start time
        start = time.perf_counter()

        # Solve the linear system of equations Ax = b and store the result in the 'x' attribute
        self.x = np.linalg.solve(self.a, self.b)

        # Calculate the time taken for the computation and store it in the 'time' attribute
        self.time = time.perf_counter() - start
