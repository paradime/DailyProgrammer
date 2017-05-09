import unittest
from concat import concat_large, concat_small, concat

class TestConcat(unittest.TestCase):
    def test_5_56_50_large(self):
        self.assertEqual(concat_large(['5', '56', '50']), 56550)

    def test_5_56_50_small(self):
        self.assertEqual(concat_small(['5', '56', '50']), 50556)

    def test_5_56_50_concat(self):
        self.assertEqual(concat('5 56 50'), [50556, 56550])

    def test_challenge_1(self):
        self.assertEqual(concat('79 82 34 83 69'), [3469798283, 8382796934])

    def test_challenge_2(self):
        self.assertEqual(concat('420 34 19 71 341'), [193413442071, 714203434119])

    def test_challenge_3(self):
        self.assertEqual(concat('17 32 91 7 46'), [173246791, 917463217])

if __name__ == '__main__':
    unittest.main()
