import Foundation

protocol Helper {
    func getCurrentTime() -> String
}

extension Helper {
    
    func getCurrentTime() -> String {
        let currentDateTime = Date()
        let formatter = DateFormatter()
        formatter.timeStyle = .long
        formatter.dateStyle = .none
        return formatter.string(from: currentDateTime)
    }
    
}


