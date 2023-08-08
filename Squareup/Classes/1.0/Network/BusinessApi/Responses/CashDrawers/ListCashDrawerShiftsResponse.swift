//
//  ListCashDrawerShiftsResponse.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class ListCashDrawerShiftsResponse: SquareupResponse {
    
    /// - Cursor: Opaque cursor for fetching the next page of results. Cursor is not present in the last page of results.
    public var Cursor: String?
    /// - CashDrawerShifts: A collection of CashDrawerShiftSummary objects for shifts that match the query.
    public var CashDrawerShifts: [CashDrawerShiftSummary]?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case CashDrawerShifts = "cash_drawer_shifts"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
        self.CashDrawerShifts = try container.decodeIfPresent([CashDrawerShiftSummary].self, forKey: .CashDrawerShifts)
    }
}
