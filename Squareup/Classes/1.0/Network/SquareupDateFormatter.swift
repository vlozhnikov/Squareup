//
//  SquareupDateFormatter.swift
//  Squareup
//
//  Created by user on 4.08.23.
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
        self.wrappedValue = try Formatter.RawValue(from: decoder) as? Date
    }
    
    public func encode(to encoder: Encoder) throws {
        try self.wrappedValue.encode(to: encoder)
    }
}

struct RFC3339_Strategy: DateValueCodableStrategy {
    
    private static var formatter = DateFormatter.RFC3339_DateFormatter
    
    static func decode(_ value: String?) throws -> Date? {
        formatter.date(from: value ?? "")
    }
    
    static func encode(_ date: Date) -> String {
        formatter.string(from: date)
    }
}

struct YYYYMMDD_Strategy: DateValueCodableStrategy {
    
    private static var formatter = DateFormatter.YYYYMMDD_DateFormatter
    
    static func decode(_ value: String?) throws -> Date? {
        formatter.date(from: value ?? "")
    }
    
    static func encode(_ date: Date) -> String {
        formatter.string(from: date)
    }
}

struct HHMMSS_Strategy: DateValueCodableStrategy {
    
    private static var formatter = DateFormatter.HHMMSS_DateFormatter
    
    static func decode(_ value: String?) throws -> Date? {
        formatter.date(from: value ?? "")
    }
    
    static func encode(_ date: Date) -> String {
        formatter.string(from: date)
    }
}
