//
//  main.swift
//  CalculateValue
//
//  Created by Ilham Rizki Baharsyah on 13/03/22.
//

import Foundation

print("Welcome to BINUS University")
print("---------------------------")
print("""
This program made for calculate grades
If it doesn't accurate, i'm sorry \u{1F97A}
i'm still learning, this simple code got me awake for 8hours+ \u{1F634}
""")
print("---------------------------")
var allValue = [Double]()
print("1. Attendance            :", terminator: " "); let attendance = Double(readLine() ?? "") ?? 0
allValue.append(attendance)
print("2. Forum Discussion      :", terminator: " "); let forum = Double(readLine() ?? "") ?? 0
allValue.append(forum)
print("3. Final Exam            :", terminator: " "); let exam = Double(readLine() ?? "") ?? 0
allValue.append(exam)
for i in 1...4 {
    print("\(i+3). Team Assignment-\(i)     :", terminator: " "); let teamAssignment = Double(readLine() ?? "") ?? 0
    allValue.append(teamAssignment)
}
for index in 1...2 {
    print("\(index+7). Personal Assignment-\(index) :", terminator: " "); let personalAssignment: Double = Double(readLine() ?? "") ?? 0
    allValue.append(personalAssignment)
}
print("10. Quiz                 :", terminator: " "); let quiz = Double(readLine() ?? "") ?? 0
allValue.append(quiz)
print("---------------------------")
var sum = 0
for value in allValue {
    sum += Int(value)
}
let average = sum / 10
var grade = ""
print("Total score is \(average)")
switch average {
case 0...49:
    grade = "E"
    print("Hmmm... \u{1F62D}, you got \(grade) from \(allValue.count) existing value. which is Fail")
    break
case 50...64:
    grade = "D"
    print("Hmmm... \u{1F62D}, you got \(grade) from \(allValue.count) existing value. which is Near Pass")
    break
case 65...69:
    grade = "C"
    print("Don't forget to study! \u{1F525}, you got \(grade) from \(allValue.count) existing value. which is Pass")
    break
case 70...74:
    grade = "B-"
    print("Don't forget to study! \u{1F525}, you got \(grade) from \(allValue.count) existing value. which is Distinction")
    break
case 75...79:
    grade = "B"
    print("Not bad.. keep fighting! \u{1F91F}, you got \(grade) from \(allValue.count) existing value. which is Distinction")
    break
case 80...84:
    grade = "B+"
    print("Not bad.. keep fighting! \u{1F91F}, you got \(grade) from \(allValue.count) existing value. which is High Distinction")
    break
case 85...89:
    grade = "A-"
    print("You doing great! \u{1F60D}, you got \(grade) from \(allValue.count) existing value. which is High Distinction")
    break
case 90...100:
    grade = "A"
    print("You doing great! \u{1F60D}, you got \(grade) from \(allValue.count) existing value. which is High Distinction")
    break
default:
    break
}
