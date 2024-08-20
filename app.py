# menu.py

def display_menu():
    print("Select an app:")
    print("1. Visual Studio Code ARM64")
    print("2. Visual Studio Code AMD64")
    print("3. Multiply two numbers")
    print("4. Exit")

def main():
    while True:
        display_menu()
        choice = input("Enter your choice (1-4): ")
        
        if choice == '1':
            import os
            os.popen('sh codearm64.sh')
        elif choice == '2':
            import os
            os.popen('sh codearm64.sh')
        elif choice == '3':
            import os
            os.popen('sh codearm64.sh')
        elif choice == '4':
            print("Exiting the program.")
            break
        else:
            print("Invalid choice. Please enter a number between 1 and 4.")

if __name__ == "__main__":
    main()

