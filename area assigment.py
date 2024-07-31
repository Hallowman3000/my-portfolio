import math

def calculate_area():
    print("Choose the shape:")
    print("1. Circle")
    print("2. Rectangle")
    print("3. Triangle")
    choice = int(input("Enter the number of your choice: "))

    if choice == 1:
        radius = float(input("Enter the radius of the circle: "))
        area = math.pi * (radius ** 2)
        print(f"The area of the circle is {area:.2f}")
    elif choice == 2:
        length = float(input("Enter the length of the rectangle: "))
        width = float(input("Enter the width of the rectangle: "))
        area = length * width
        print(f"The area of the rectangle is {area:.2f}")
    elif choice == 3:
        base = float(input("Enter the base of the triangle: "))
        height = float(input("Enter the height of the triangle: "))
        area = 0.5 * base * height
        print(f"The area of the triangle is {area:.2f}")
    else:
        print("Invalid choice. Please choose a valid shape.")

if name== "__main__":
    calculate_area()
