from functools import wraps


class logit(object):
    def __init__(self, log_file='out.log'):
        self.log_file = log_file

    def __call__(self, func):
        @wraps(func)
        def logging_decorator(*args, **kwargs):
            logging_string = func.__name__ + " was called"
            print(logging_string)
            with open(self.log_file, 'a') as opened_file:
                opened_file.write(logging_string + '\n')
            return func(*args, **kwargs)
        return logging_decorator


@logit(log_file='out2.log')
def func():
    pass


func()
