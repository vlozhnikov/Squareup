//
//  LoyaltyPromotionAvailableTimeData.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyPromotionAvailableTimeData: Represents scheduling information that determines when purchases can qualify to earn points from a loyalty promotion.
/// https://developer.squareup.com/reference/square/objects/LoyaltyPromotionAvailableTimeData
open class LoyaltyPromotionAvailableTimeData: Codable {
    
    /// - StartDate: Read only The date that the promotion starts, in YYYY-MM-DD format. Square populates this field based on the provided time_periods.
//    var StartDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> public var StartDate: Date?
    /// - EndDate: Read only The date that the promotion ends, in YYYY-MM-DD format. Square populates this field based on the provided time_periods. If an end date is not specified, an ACTIVE promotion remains available until it is canceled.
//    var EndDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> public var EndDate: Date?
    /// - TimePeriods: A list of iCalendar (RFC 5545) events (VEVENT). Each event represents an available time period per day or days of the week. A day can have a maximum of one available time period.
    /// Only DTSTART, DURATION, and RRULE are supported. DTSTART and DURATION are required and timestamps must be in local (unzoned) time format. Include RRULE to specify recurring promotions, an end date (using the UNTIL keyword), or both. For more information, see Available time.
    /// Note that BEGIN:VEVENT and END:VEVENT are optional in a CreateLoyaltyPromotion request but are always included in the response.
    public var TimePeriods: [String]?
    
    enum CodingKeys: String, CodingKey {
        case StartDate = "start_date"
        case EndDate = "end_date"
        case TimePeriods = "time_periods"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .StartDate), !dateString.isEmpty {
//            self.StartDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .StartDate)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EndDate), !dateString.isEmpty {
//            self.EndDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .EndDate)
//        }
//        self.TimePeriods = try container.decodeIfPresent([String].self, forKey: .TimePeriods)
//    }
}
