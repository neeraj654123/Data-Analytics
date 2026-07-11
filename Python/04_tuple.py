tup=(1,"hello",1.23,None,4,72,64.5,1,1)
print(tup,type(tup))

# count how many times element present in tuple 
print(tup.count(1))
# returns index of first occurence
print(tup.index("hello"))
# indexing
print(tup[4])
print(tup[-3])
# slicing
print(tup[1:4])
print(tup[::2])
print(tup[::-1])

