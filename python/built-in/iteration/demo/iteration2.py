#!/usr/bin/python3
class MyNumbers(object):
    def __iter__(self):
        self.a = 1
        return self

    def __next__(self):
        # TODO: StopIteration
        if self.a < 20:
            x = self.a
            self.a += 1
            return x
        else:
            raise StopIteration
