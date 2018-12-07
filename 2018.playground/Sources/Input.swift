import Foundation

public class Input {
    
    private static func read(file:String) -> [String] {
        do {
            let fileURL = Bundle.main.url(forResource: file, withExtension: "")
            let contents = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)
            let lines =  contents.components(separatedBy: "\n").filter{$0 != ""}
            return lines
        } catch {
            print("Error happened while reading input file \(file)")
        }
        return [String]()
    }
    
    public static func read(file:String) -> [Int] {
        var inputs = [Int]()
        let lines: [String] = Input.read(file: file)
        for line in lines {
            inputs.append(Int(line)!)
        }
        return inputs
    }
}
