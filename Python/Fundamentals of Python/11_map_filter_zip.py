# map() applies a function to every element of an iterable
numbers = [1, 2, 3, 4, 5,6]

def square(num):
    return num ** 2

result = map(square, numbers)
print(list(result))


# filter() returns only those elements that satisfy the condition
def even(num):
    return num % 2 == 0

result = filter(even, numbers)
print(list(result))


# zip() combines multiple iterables element by element
names = ["Neeraj", "Rahul", "Aman"]
marks = [90, 85, 95]

student_data = zip(names, marks)
print(student_data)
print(list(student_data))