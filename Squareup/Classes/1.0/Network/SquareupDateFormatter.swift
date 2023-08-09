//
//  SquareupDateFormatter.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.08.23.
//

import Foundation

public protocol DateValueCodableStrategy {
    
    associatedtype RawValue: Codable

    static func decode(_ value: RawValue?) throws -> Date?
    static func encode(_ date: Date) -> RawValue
}

@propertyWrapper
public struct FormattedDate<Formatter: DateValueCodableStrategy>: Codable {

    public var wrappedValue: Date? = nil
    
    public init?(value: Date?) {
        self.wrappedValue = value
    }
    
    public init(from decoder: Decoder) throws {
        
        let container = try decoder.singleValueContainer()
        if let dateString = try? container.decode(String.self), !dateString.isEmpty {
            self.wrappedValue = try dateString.decode_RFC3339_Date()
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        try self.wrappedValue.encode(to: encoder)
    }
}

public struct RFC3339_Strategy: DateValueCodableStrategy {
    
    private static var formatter = DateFormatter.RFC3339_DateFormatter
    
    public static func decode(_ value: String?) throws -> Date? {
        formatter.date(from: value ?? "")
    }
    
    public static func encode(_ date: Date) -> String {
        formatter.string(from: date)
    }
}

public struct YYYYMMDD_Strategy: DateValueCodableStrategy {
    
    private static var formatter = DateFormatter.YYYYMMDD_DateFormatter
    
    public static func decode(_ value: String?) throws -> Date? {
        formatter.date(from: value ?? "")
    }
    
    public static func encode(_ date: Date) -> String {
        formatter.string(from: date)
    }
}

public struct HHMMSS_Strategy: DateValueCodableStrategy {
    
    private static var formatter = DateFormatter.HHMMSS_DateFormatter
    
    public static func decode(_ value: String?) throws -> Date? {
        formatter.date(from: value ?? "")
    }
    
    public static func encode(_ date: Date) -> String {
        formatter.string(from: date)
    }
}
