//
//  ListCashDrawerShiftEventsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 30.06.23.
//

import Foundation

open class ListCashDrawerShiftEventsResponse: SquareupResponse {
    
    /// - Cursor: Opaque cursor for fetching the next page. Cursor is not present in the last page of results.
    public var Cursor: String?
    /// - CashDrawerShiftEvents: All of the events (payments, refunds, etc.) for a cash drawer during the shift.
    public var CashDrawerShiftEvents: [CashDrawerShiftEvent]?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case CashDrawerShiftEvents = "cash_drawer_shift_events"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
        self.CashDrawerShiftEvents = try container.decodeIfPresent([CashDrawerShiftEvent].self, forKey: .CashDrawerShiftEvents)
    }
}
