import Foundation


class Year {
    var calendarYear: Int = 0
    
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
    }
    
    func isLeapYear() -> Bool {
        if calendarYear % 4 == 0 && (calendarYear % 100 != 0 || calendarYear % 400 == 0) {
            return true
        } else {
            return false
        }
    }
}