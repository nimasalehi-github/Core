import Foundation

// MARK: - ErrorHandler
public struct ErrorHandler { /*01*/
    
    // Shared static function for centralized handling
    // تابع سراسری برای مدیریت خطاها
    public static func handle(_ error: Error, file: String = #file, function: String = #function, line: Int = #line) { /*02*/
        
        // Step 1: Log the error using our Logger
        // مرحله اول: ثبت خطا در Logger
        Logger.shared.log("Error: \(error.localizedDescription)", level: .error, file: file, function: function, line: line) /*03*/
        
        // Step 2: (Future) - Could show alert, retry, or analytics event
        // مرحله دوم (آینده): نمایش هشدار، تلاش مجدد، یا ارسال به آنالیتیکس
    }
}
