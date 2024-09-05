import Cocoa

// How to use trailing closures and shorthand syntax

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let sortedTeam = team.sorted()
print(sortedTeam)  // ["Gloria", "Piper", "Suzanne", "Tasha", "Tiffany"]


/*
 The sorted method demands that a function/closure supplied for a
 custom sort, takes two strings and returns a Bool.  Since our closure fits these requirements, Swift allows this to be written without the types.
 
 When the closure is supplied as the parameter for another function, as is the case with sorted, the wrapping parentheses may be ommitted like so.
 
 */
let captainFirstTeam = team.sorted { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    return a < b
}

print(captainFirstTeam)  //["Suzanne", "Gloria", "Piper", "Tasha", "Tiffany"]
