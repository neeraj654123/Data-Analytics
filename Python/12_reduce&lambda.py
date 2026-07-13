from functools import reduce

#  Lambda Function
square = lambda x: x ** 2
add = lambda a, b: a + b
print(square(5))
print(add(10, 20))

# Function to compare two numbers
def maximum(x, y):
    if x > y:
        return x
    else:
        return y

numbers = [25, 10, 80, 45, 60]

largest = reduce(maximum, numbers)

print(largest)