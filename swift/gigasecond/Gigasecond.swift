import Foundation

class Gigasecond {
    var description: String

    private static let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        return dateFormatter
    }()

    init?(from dateString: String) {
        guard let dateFromString = Gigasecond.dateFormatter.date(from: dateString) else { return nil }
        let gigasecondLived = dateFromString.addingTimeInterval(1000000000)
        description = Gigasecond.dateFormatter.string(from: gigasecondLived)
    }
}
