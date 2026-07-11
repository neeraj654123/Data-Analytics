dictionary={"a":1,"b":2,"c":3}
print(dictionary)
print(type(dictionary))

# Accessing elements
print(dictionary["a"])
print(dictionary.get("b"))
# Adding elements
dictionary["d"]=4
print(dictionary)
# Removing elements
dictionary.pop("a")
print(dictionary)
# Updating elements
dictionary["b"]=20
print(dictionary)
# Iterating through dictionary
for key,value in dictionary.items():
    print(key,value)
# returns keys
print(dictionary.keys())
# returns values
print(dictionary.values())
# returns items
print(dictionary.items())
# popitem removes random key-value pair
print(dictionary.popitem())
print(dictionary)
# updates value 
dictionary.update({"a":11,"b":22})
print(dictionary)
# copy
dic_copy=dictionary.copy()
print(dic_copy)
# clear
dic_copy.clear()
print(dic_copy)
# checks key | value present in dictionary or not
print("a" in dictionary)
print(11 in dictionary.values())