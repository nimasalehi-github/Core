import Foundation

// MARK: - Core Root Structure
// ساختار اصلی پکیج که همه چیز از اینجا شروع می‌شود
public struct Core { /*01*/
    
    // Sample text property to confirm module load
    // ویژگی آزمایشی برای بررسی درستی بارگذاری ماژول
    public private(set) var text = "Core package initialized successfully." /*02*/
    
    // Public initializer
    // سازنده‌ی عمومی برای ساخت نمونه
    public init() { /*03*/
        // Initialization log for debugging
        // چاپ پیام راه‌اندازی برای تست
        Logger.shared.log("Core initialized ✅", level: .info) /*04*/
    }
    
    // Example function demonstrating use of Logger and ErrorHandler
    // تابع نمونه برای نشان دادن استفاده از Logger و ErrorHandler
    public func performTestOperation() { /*05*/
        Logger.shared.log("Performing test operation in Core.", level: .info) /*06*/
        
        // Example: simulate success and error cases
        // شبیه‌سازی وضعیت موفق و خطا
        let success = Bool.random() /*07*/
        
        if success { /*08*/
            Logger.shared.log("Operation succeeded 🎉", level: .info) /*09*/
        } else {
            let simulatedError = NSError(domain: "CoreTest", code: -1, userInfo: [NSLocalizedDescriptionKey: "Simulated failure"]) /*10*/
            ErrorHandler.handle(simulatedError) /*11*/
        }
    }
}
