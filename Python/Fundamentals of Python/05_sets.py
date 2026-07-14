my_set={1,2,2,3,4,5,1,8,8}
print(my_set)
print(1 in my_set) # it checks whether the element is present in the set or not
print(9 in my_set) # it checks whether the element is present in the set or not

#it adds the element to the set
my_set.add(6)
print(my_set)
#it removes the element from the set 
my_set.remove(2)
print(my_set)
# it removes the element from the set
my_set.pop()
print(my_set) 
# it removes the element from the set
my_set.discard(4)
print(my_set) 
# it removes all the elements from the set
my_set.clear()
print(my_set) 
# it updates the set with the elements from the iterable
my_set.update([1,6,7,8,9])
print(my_set) 

s1={1,2,3,9,0}
s2={1,2,3,4,5,6,7,8}
# it performs union operation
print(s2.union(s1)) 
# it performs intersection operation
print(s2.intersection(s1)) 
# it performs difference operation
print(s2.difference(s1)) 
# it performs symmetric difference operation
print(s2.symmetric_difference(s1)) 
# it checks if the set is subset of another set
print(s2.issubset(s1)) 
# it checks if the set is superset of another set
print(s2.issuperset(s1)) 
# it checks if the set is disjoint from another set
print(s2.isdisjoint(s1)) 
print(s2) 
