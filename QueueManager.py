from multiprocessing.managers import BaseManager
from queue import Queue

# Create a Queue instance
queue = Queue()


# Define a custom QueueManager that inherits from BaseManager
class QueueManager(BaseManager):
    pass


# Register the 'get_queue' method with the QueueManager, making it accessible remotely
QueueManager.register('get_queue', callable=lambda: queue)

# Create an instance of the QueueManager with a specified address and authentication key
m = QueueManager(address=('', 50000), authkey=b'abracadabra')

# Get the server object from the QueueManager
s = m.get_server()

# Start serving requests forever
s.serve_forever()
