#contagem regressiva de 10 até 0 com 1 segundo
import time
for c in range(10,0,-1):
    print(c)
    time.sleep(1)
print('BOOM!')