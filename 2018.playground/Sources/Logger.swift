import Foundation

public class Logger {
    // DISCLAMER: Please be aware that with enabled = true, execution time of each exercise DROPS DRASTICALLY, so avoid having IT
    public static let enabled = false
    public static func log(_ message: String) {
        if enabled { print(message) }
    }
}
