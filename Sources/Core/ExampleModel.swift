//
//  ExampleModel.swift
//  
//
//  Created by Nima Salehi on 11/6/25.
//

import Foundation

/*01*/
/// A simple data model for testing the Core package functionality.
/// مدل داده‌ای ساده برای تست ساختار پکیج Core
public struct ExampleModel: Codable, Identifiable, Equatable {
    
    /*02*/
    /// Unique identifier for each instance (to conform to Identifiable)
    /// شناسهٔ یکتا برای هر نمونه
    public let id: Int
    
    /*03*/
    /// Display name or title for the model
    /// نام یا عنوان برای مدل
    public var name: String

    /*04*/
    /// Default initializer
    /// سازندهٔ اولیهٔ عمومی
    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
    /*05*/
    /// Example computed property
    /// ویژگی محاسباتی برای تست
    public var displayName: String {
        "📦 \(name) [#\(id)]"
    }
    
    /*06*/
    /// Example static sample data
    /// دادهٔ نمونه برای تست سریع در Preview یا Unit Test
    public static var sample: ExampleModel {
        ExampleModel(id: 1, name: "Sample Model")
    }
}
