//
//  ListGiftCardActivitiesResponse.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

open class ListGiftCardActivitiesResponse: SquareupResponse {
    
    /// - GiftCardActivities: The requested gift card activities or an empty object if none are found.
    var GiftCardActivities: [GiftCardActivity]?
    /// - Cursor: When a response is truncated, it includes a cursor that you can use in a subsequent request to retrieve the next set of activities. If a cursor is not present, this is the final response. For more information, see Pagination.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case GiftCardActivities = "gift_card_activities"
        case Cursor = "cursor"
    }
}
