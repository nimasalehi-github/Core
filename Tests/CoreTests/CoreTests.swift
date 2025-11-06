//import XCTest
//@testable import Core
//
//final class CoreTests: XCTestCase {
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct
//        // results.
//        XCTAssertEqual(Core().text, "Hello, World!")
//    }
//}
import XCTest
@testable import Core

/*01*/
final class CoreTests: XCTestCase {

    // MARK: - 🧩 تست ساده مدل
    func testExampleModelInitialization() throws {
        /*02*/ let example = ExampleModel(id: 1, name: "Test User")
        /*03*/ XCTAssertEqual(example.id, 1)
        /*04*/ XCTAssertEqual(example.name, "Test User")
    }

    // MARK: - ⚙️ تست عملکرد async برای اطمینان از هم‌زمانی
    // ⬇️ این متد فقط در iOS 15+ یا macOS 12+ قابل استفاده است چون از async/await استفاده می‌کند.
    @available(iOS 15.0, macOS 12.0, *)
    func testAsyncUtilityFunction() async throws {
        /*05*/ let util = CoreUtility()
        /*06*/ let result: String = try await util.performAsyncTask()
        /*07*/ XCTAssertEqual(result, "Async Done")
    }

}
