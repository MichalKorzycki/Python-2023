from my_package import functions
import traceback

if __name__ == '__main__':
    try:
        functions.ok_function()
    except IndexError as e:
        print(e)
        print(traceback.format_exc())
    except Exception as e:
        print(e)
