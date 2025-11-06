//
//  NetworkManagerTests.swift
//  
//
//  Created by Nima Salehi on 11/6/25.
//

import XCTest
@testable import Core

/*01*/
/// Tests for NetworkManager with a real API call.
/// تست‌های NetworkManager با API واقعی.
final class NetworkManagerTests: XCTestCase {
    
    /*02*/
    /// Sample model for decoding the API response
    /// مدل نمونه برای ساختار پاسخ JSON.
    struct Todo: Codable {
        let userId: Int
        let id: Int
        let title: String
        let completed: Bool
    }
    
    /*03*/
    /// Test fetching a real API using async/await
    /// تست درخواست واقعی از jsonplaceholder.
    func testFetchTodo() async throws {
        // Breakpoint point 1️⃣: watch async request start
        print("🔄 Starting network request...")
        
        /*04*/
        let todo: Todo = try await NetworkManager.shared.fetch(from: "https://jsonplaceholder.typicode.com/todos/1")
        
        // Breakpoint point 2️⃣: after decoding
        print("✅ Received Todo:", todo)
        
        /*05*/
        XCTAssertEqual(todo.id, 1)
        XCTAssertEqual(todo.userId, 1)
        XCTAssertFalse(todo.title.isEmpty)
    }
}

