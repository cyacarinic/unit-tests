import random
import unittest

class TestSequenceFunctions(unittest.TestCase):

    def setUp(self):
        self.seq = range(10)

    def test_pechy(self):
        element = random.choice(self.seq)
        self.assertFalse(element in self.seq)


if __name__ == '__main__':
    unittest.main()