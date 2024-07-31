def get_grade(marks):
    if 90 <= marks <= 100:
        return 'A'
    elif 87 <= marks < 90:
        return 'A-'
    elif 84 <= marks < 87:
        return 'B+'
    elif 80 <= marks < 84:
        return 'B'
    elif 77 <= marks < 80:
        return 'B-'
    elif 74 <= marks < 77:
        return 'C+'
    elif 70 <= marks < 74:
        return 'C'
    elif 67 <= marks < 70:
        return 'C-'
    elif 64 <= marks < 67:
        return 'D+'
    elif 60 <= marks < 64:
        return 'D'
    elif 0 <= marks < 60:
        return 'F'
    else:
        return 'Invalid marks'

def main():
    while True:
        user_input = input("Enter the marks (or type 'exit' to terminate): ")
        if user_input.lower() == 'exit':
            break
        marks = int(user_input)
        grade = get_grade(marks)
        print(f"The grade for {marks} marks is: {grade}")
        
main()
