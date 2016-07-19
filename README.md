# README

This app is developed to solve the following problem

## PROBLEM
Company X is developing a new app for student education. Students complete lessons and their progress is recorded.
Each lesson has 3 parts - 1, 2 and 3. There are 100 lessons in total.

### PART 1
Generate a rails app that persists students and their progress.
Define routes for:

1. setting a student's progress - progress should consist of a lesson and part number.
2. returning a JSON representation of a student and their associated progress.

### PART 2
Teachers have classes containing number of students.

1. Add a teacher model that is related to students
2. Create a reports page for a teacher to view progress of all their students.

### PART 3
Calculating progress

1. add a method for updating student progress - this should verify that the
student is only able to complete the next part number in sequence e.g.
L1 P1, L1 P2, L1 P3, L2 P1, L2 P2 etc

### PART 4 (OPTIONAL)
1. the first 50 lessons now have 5 parts. Ensure the system will still work as expected and no students progress will be lost
