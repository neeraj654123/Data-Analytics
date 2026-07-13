try:
    num = int(input("Enter a number: "))
    result = 100 / num

except ValueError:
    print("Invalid input. Please enter a number.")

except ZeroDivisionError:
    print("Cannot divide by zero.")

else:
    # Runs only if no exception occurs
    print("Division Successful")
    print("Result:", result)
 
finally:
    # Always runs
    print("Thank you for using the program.")

# Raising an Exception
def check_age(age):
    if age < 18:
        raise ValueError("Age must be at least 18.") 
    print("Eligible")
try: 
    check_age("abc")
except TypeError as e:
    print(e) 