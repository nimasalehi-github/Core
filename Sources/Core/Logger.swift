import Foundation

// MARK: - Logger
public final class Logger { /*01*/
    
    // Singleton instance for global access
    // نمونه‌ی singleton برای دسترسی سراسری
    public static let shared = Logger() /*02*/
    
    // Prevent external initialization
    // جلوگیری از ساخت نمونه‌های دیگر
    private init() {} /*03*/
    
    // LogLevel enum for categorizing messages
    // سطح لاگ‌ها (اطلاع، هشدار، خطا)
    public enum LogLevel: String { /*04*/
        case info = "ℹ️ INFO"
        case warning = "⚠️ WARNING"
        case error = "❌ ERROR"
    }
    
    // Main logging function
    // تابع اصلی ثبت پیام
    public func log(_ message: String,
                    level: LogLevel = .info,
                    file: String = #file,
                    function: String = #function,
                    line: Int = #line) { /*05*/
        
        // Extract filename
        let fileName = (file as NSString).lastPathComponent /*06*/
        
        // Format message
        let formatted = "[\(level.rawValue)] \(fileName):\(line) \(function) — \(message)" /*07*/
//        🔹 Breakpoint پیشنهادی: روی خط /08/ قرار بده تا هنگام هر لاگ متوقف بشه و متغیر formatted رو در Debug مشاهده کنی.
        // Print to console
        print(formatted) /*08*/
    }
}
