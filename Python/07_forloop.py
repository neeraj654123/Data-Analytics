# For Loop
for item in "My Home":
    for i in range(0,5):
        print(i)
    print("hello")

# Iterables
for i in range(10):
    print(i)

user={
    "name":"John",
    "age":30,
    "city":"New York"
}

for item in user.items():
    print(item)

for key,value in user.items():
    print(key,value)

# range : returns values between start and stop with step size
for i in range(10,2,-2):
    print(i)

# enumerate : returns index as well as value
for index,value in enumerate(["a","b","c",2,"Hello"],start=1):
    print(index,value)
