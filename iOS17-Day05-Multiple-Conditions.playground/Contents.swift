import Cocoa

//How to check multiple conditions
let age = 16

if age >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}


if age >= 18 {
    print("You can vote in the next election")
} else if age == 16 {
    print("You can get a job.")
} else {
    print("You have to finish school.")
}


//Check a range of values
let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}
