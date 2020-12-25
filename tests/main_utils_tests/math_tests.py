from main_utils.math import add, random
from unittest import TestCase

class TestAdd(TestCase):
    def test_add(self):
        self.assertEqual(2, add(1, 1))

    def test_random(self):
        print(random())
