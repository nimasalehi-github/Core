//
//  CoreUtility.swift
//  
//
//  Created by Nima Salehi on 11/6/25.
//

import Foundation

public struct CoreUtility {
    public init() {}

    // یک مثال از متد async برای تست بالا
    @available(iOS 15.0, macOS 12.0, *)
    public func performAsyncTask() async throws -> String {
        try await Task.sleep(nanoseconds: 500_000_000) // 0.5 ثانیه
        return "Async Done"
    }
}
    