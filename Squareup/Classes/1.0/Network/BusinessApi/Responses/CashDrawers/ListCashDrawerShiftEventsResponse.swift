//
//  ListCashDrawerShiftEventsResponse.swift
//  Squareup
//
//  Created by user on 30.06.23.
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
}
