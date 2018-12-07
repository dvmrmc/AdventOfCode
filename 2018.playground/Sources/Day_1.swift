import Foundation

public class Day_1 {

    public static var data: [Int] = Input.read(file: "day1")
    
    public static func exercise_1() {
        
        var frequency = 0
        defer { print("Final frequency is: \(frequency)") }
        for change in data {
            let newFrequency = frequency + change
            print("Current frequency: \(frequency) with change of: \(change) results in frequency: \(newFrequency)")
            frequency = newFrequency
        }
        
    }
    
    //================================
    // PART 2 (not stopping D:)
    //================================
    
    public static func exercise_2() {
        
        var searching = true
        var frequency = 0
        var seen = Set([frequency])
        var index = 0 // Keep index within bounds of changes
        
        while searching {
            let change = data[index]
            let newFrequency = frequency + change
            print("Current frequency: \(frequency) with change of: \(change) results in frequency: \(newFrequency)")
            frequency = newFrequency
            if (seen.contains(frequency)) { searching = false }
            seen.insert(frequency)
            index = (index + 1) % data.count // Keep index within bounds of changes
        }
        print("First frequency reached twice is: \(frequency)")
    }
}
