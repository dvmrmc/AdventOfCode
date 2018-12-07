import Foundation

public class Day_1 {

    public static var data: [Int] = Input.read(file: "day1")
    
    public static func exercise_1() -> Int {
        
        var frequency = 0
        for change in data {
            let newFrequency = frequency + change
            Logger.log("Current frequency: \(frequency) with change of: \(change) results in frequency: \(newFrequency)")
            frequency = newFrequency
        }
        return frequency
    }
    
    public static func exercise_2() -> Int {
        
        var searching = true
        var frequency = 0
        var seen = Set([frequency])
        var index = 0 // Keep index within bounds of changes
        
        while searching {
            let change = data[index]
            let newFrequency = frequency + change
            Logger.log("Current frequency: \(frequency) with change of: \(change) results in frequency: \(newFrequency)")
            frequency = newFrequency
            if (seen.contains(frequency)) { searching = false }
            seen.insert(frequency)
            index = (index + 1) % data.count // Keep index within bounds of changes
        }
        return frequency
    }
}
