def outer():
    message = "Hello" # Parent local variable

    def inner():
        nonlocal message  # Use parent's variable
        message = "Hi"

    print("Before calling inner():", message)
    inner()
    print("After calling inner():", message)

outer() 