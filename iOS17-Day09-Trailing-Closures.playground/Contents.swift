import Cocoa

// How to use trailing closures and shorthand syntax

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let sortedTeam = team.sorted()
print(sortedTeam)  // ["Gloria", "Piper", "Suzanne", "Tasha", "Tiffany"]

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})

print(captainFirstTeam)  //["Suzanne", "Gloria", "Piper", "Tasha", "Tiffany"]
