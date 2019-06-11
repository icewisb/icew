from functools import wraps


class logit(object):
    def __init__(self, log_file='out.log'):
        self.log_file = log_file

    def __call__(self, func):
        @wraps(func)
        def wrapped_function(*args, **kwargs):
            logging_string = func.__name__ + " was called"
            print(logging_string)
            with open(self.log_file, 'a') as opened_file:
                opened_file.write(logging_string + '\n')
            self.notify()
            return func(*args, **kwargs)
        return wrapped_function

    def notify(self):
        print("notify...")


@logit()
def func():
    pass


@logit(log_file="out2.log")
def func2():
    pass


class email_logit(logit):
    def __init__(self, email='test@test.com', *args, **kwargs):
        self.email = email
        super().__init__(*args, **kwargs)

    def notify(self):
        print("email to " + self.email)


@email_logit()
def func3():
    pass


func3()
