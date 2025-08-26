a = "1234567^①^890"
for i in range(len(a)):
    if a[i] == "^":
        if a[i+2] == "^":
            print(a[i+1])
            break
        else:
            print(a[i])
            break