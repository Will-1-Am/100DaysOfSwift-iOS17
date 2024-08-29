import Cocoa

//How to store and find data in dictionaries
//Define a dictionary

let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville",
]

// Read values by supplying the key
employee2["name"]
employee2["job"]
employee2["location"]

print(employee2["name"])
/* A warning is displayed here:
   Expression implicitly coerced from 'String?' to 'Any'
 Swift is saying that the existance of data here is entirely optional 
 */
