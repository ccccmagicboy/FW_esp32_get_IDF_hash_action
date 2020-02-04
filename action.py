import os
#print(os.listdir(os.getcwd()))
#print("hello the world from python!!!")
command = 'cd my_micropython/ports/esp32 && pwd && make'
print(command)
result = os.popen(command).read()
print(result)
for line in result:
    if 'Supported git hash' in line:
        print(line)

command = 'echo "::set-output name=hash_v3::{0:s}"'.format('V333333')
print(command)
print(os.popen(command).read())

command = 'echo "::set-output name=hash_v4::{0:s}"'.format('V444444')
print(command)
print(os.popen(command).read())


