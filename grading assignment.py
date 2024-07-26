def get_grade(marks):
    if marks >= 90:
        return 'A'
    elif marks >= 80:
        return 'B'
    elif marks >= 70:
        return 'C'
    elif marks >= 60:
        return 'D'
    elif marks >= 50:
        return 'E'
    else:
        return 'F'

def main():
    while True:
        try:
            marks = float(input("Enter the marks (or type 'exit' to terminate): "))
            grade = get_grade(marks)
            print(f"The grade for {marks} marks is: {grade}")
        except ValueError:
            command = input("Do you want to exit? Type 'yes' to exit or 'no' to continue: ").strip().lower()
            if command == 'yes':
                print("Exiting the program. Goodbye!")
                break
            elif command == 'no':
                continue
            else:
                print("Invalid command. Please enter a valid number or 'yes' to exit.")

if __name__ == "__main__":
    main()
