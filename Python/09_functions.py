# Functions
def great():
    print("Hello,What's up")
great()

# Parameters and Arguments
def great(name):
    print(f"Hello,What's up {name}")
great("Rahul")
great("Rohan")

# Keyword and default arguments
def great(first_name="Guest", last_name="User"):
    print(f"Hello, What's up {first_name} {last_name}")
great(last_name="Kumar", first_name="Neeraj")
great()

# Return
def add(num1=10,num2=20):
    return num1+num2
print(add(10,20))

# *args and **kwargs
def super_sum(*args,**kwargs):
    total=0
    for items in kwargs.values():
        total+=items
    return sum(args)+total
print(super_sum(10,20,30,40,50,a=10,b=20,c=30,d=40,e=50))
