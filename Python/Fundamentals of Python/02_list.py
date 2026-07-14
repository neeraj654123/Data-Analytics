li_1=[123,12.3,"hello",True]
print(li_1,type(li_1))

# List Slicing
print(li_1[1:3])
print(li_1[::-1])

# List Functions
li_2=[1,2]
print(li_2)
# adds element at last
li_2.append(11)
print(li_2)
# adds elements at last
li_2.extend([19,20])
print(li_2)
# inserts element at specific index
li_2.insert(0,11.5)
print(li_2)
# changes element at specific index
li_2[0]=100
print(li_2)
# removes element at specific value
li_2.remove(11)
print(li_2)
# removes last element
li_2.pop()
print(li_2)
# returns index of element 
print(li_2.index(100))
# removes all elements
li_2.clear()
print(li_2)
# new list will not be affected if any change in li_1 is done due to [:]
new_li=li_1[:]
li_1.append(123456)
print(new_li)
print(li_1)


# Matrix
matrix=[[1,2,3],[4,5,6],[7,8,9]]
print(matrix)
print(matrix[1][2])
for i in matrix:
    print(i)


li_3=[1,6,3,78,4,7,9,4,54]
# Sorts in ascending order
li_3.sort()
print(li_3)
# Sorts in descending order
li_3.sort(reverse=True)
print(li_3)
# reverse the list
li_3.reverse()
print(li_3)
# count of element
print(li_3.count(4))
# copy of list
new_li_3=li_3.copy()
print(new_li_3)

# li remains same sorted() doesn't affect li
li = [5, 2, 9, 1, 7]
new_list = sorted(li)
print(new_list)
print(li) 

# Join
sentence=' '
print(sentence.join(['i','am','from','coimbatore']))

# List Unpacking
nums=(1,2,3,4,5,6,7,8,9,0)
a,b,c,*other,d=nums
print(a)
print(b)
print(c)
print(other)
print(d)