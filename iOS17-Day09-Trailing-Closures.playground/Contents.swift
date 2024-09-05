import Cocoa

// How to use trailing closures and shorthand syntax

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let sortedTeam = team.sorted()
print(sortedTeam)  // ["Gloria", "Piper", "Suzanne", "Tasha", "Tiffany"]


/*
 The sorted method demands that a function/closure supplied for a
 custom sort, takes two strings and returns a Bool.  Since our closure fits these requirements, Swift allows this to be written without the types.
 
 When the closure is supplied as the parameter for another function, as is the case with sorted, the wrapping parentheses may be ommitted like so.
 
 Additionally, Swift can employ automatic naming with trailing closures allowing the parameter names to be removed entirely.
 $0 & $1 correspond to the parameters in the order in which they should appear.
 */
let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}

print(captainFirstTeam)  //["Suzanne", "Gloria", "Piper", "Tasha", "Tiffany"]


let reverseTeam = team.sorted {
    return $0 > $1
}
print(reverseTeam)  //["Tiffany", "Tasha", "Suzanne", "Piper", "Gloria"]
