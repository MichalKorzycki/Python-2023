def print_log(message):
    print(message)


def noop_log(message):
    pass


def get_log(mode):
    s = {'dev': print_log}
    return s.get(mode, noop_log)

env_mode = "dev"

log = get_log(env_mode)

x = 4
log(f'x is {x}')
x *= x
log(f'x is now {x}')

env_mode = "prod"

log = get_log(env_mode)

x = 4
log(f'x is {x}')
x *= x
log(f'x is now {x}')
