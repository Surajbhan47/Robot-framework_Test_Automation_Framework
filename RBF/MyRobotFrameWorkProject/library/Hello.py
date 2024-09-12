from robot.api.deco import library, keyword


@library
class Hello:

    def __init__(self):
        pass

    @keyword
    def hello_day(self):
        print("Hello World")
