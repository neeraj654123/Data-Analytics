# While Loop

# This is an infinite loop
'''
while 0<5:
    print("hello")'''

# This is an finite loop
'''
var=0
while var<10:
    var+=1
    print(var)
else:
    print("Work is done")'''

# break, continue and pass
var = 0
while var < 10:
    var += 1
    if var == 3:
        continue  # skip printing 3
    if var == 7:
        break     # stop the loop at 7
    print(var)
    if var ==0:   # pass 
        pass    
