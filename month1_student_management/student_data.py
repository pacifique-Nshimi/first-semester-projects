students = []

def add_student():
    """Prompt user to enter student details and append to students list."""
    while True:
        try:
            name = input("Enter student's full name: ").strip()
            if not name or not all(part.isalpha() or part.isspace() for part in name.split()):
                print("Invalid name. Use letters and spaces only.")
                continue
            
            age = input("Enter student's age (1–120): ")
            age = int(age)
            if not 1 <= age <= 120:
                print("Invalid age. Must be between 1 and 120.")
                continue
            
            grade = input("Enter student's grade (0–100): ")
            grade = float(grade)
            if not 0 <= grade <= 100:
                print("Invalid grade. Must be between 0 and 100.")
                continue
            
            student = {'name': name, 'age': age, 'grade': grade}
            students.append(student)
            print(f"Student {name} successfully added.")
        except ValueError:
            print("Invalid input. Please enter a valid value.")
          
def view_students():
    """Display all students in the students list."""
    for student in students:
        print(f"Name: {student['name']}, Age: {student['age']}, Grade: {student['grade']}")

def get_average_grade():
    """Calculate and return the average grade of all students."""
    if not students:
        return 0.0
    total = sum(student['grade'] for student in students)
    average = total / len(students)
    return round(average, 2)