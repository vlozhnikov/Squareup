//
//  BusinessBookingProfile.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

/// - BusinessBookingProfile:
/// https://developer.squareup.com/reference/square/objects/BusinessBookingProfile
open class BusinessBookingProfile: Codable {
    
    /// - SellerId: The ID of the seller, obtainable using the Merchants API.
    /// Max Length 32
    var SellerId: String?
    /// - CreatedAt: Read only The RFC 3339 timestamp specifying the booking's creation time.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - BookingEnabled: Indicates whether the seller is open for booking.
    var BookingEnabled: Bool?
    /// -CustomerTimezoneChoice: The choice of customer's time zone information of a booking. The Square online booking site and all notifications to customers uses either the seller location’s time zone or the time zone the customer chooses at booking.
    var CustomerTimezoneChoice: BusinessBookingProfileCustomerTimezoneChoice?
    /// - BookingPolicy: The policy for the seller to automatically accept booking requests (ACCEPT_ALL) or not (REQUIRES_ACCEPTANCE).
    var BookingPolicy: BusinessBookingProfileBookingPolicy?
    /// - AllowUserCancel: Indicates whether customers can cancel or reschedule their own bookings (true) or not (false).
    var AllowUserCancel: Bool?
    /// - BusinessAppointmentSettings: Settings for appointment-type bookings.
    var businessAppointmentSettings: BusinessAppointmentSettings?
    /// - SupportSellerLevelWrites: Indicates whether the seller's subscription to Square Appointments supports creating, updating or canceling an appointment through the API (true) or not (false) using seller permission.
    var SupportSellerLevelWrites: Bool?
    
    enum CodingKeys: String, CodingKey {
        case SellerId = "seller_id"
        case CreatedAt = "created_at"
        case BookingEnabled = "booking_enabled"
        case CustomerTimezoneChoice = "customer_timezone_choice"
        case BookingPolicy = "booking_policy"
        case AllowUserCancel = "allow_user_cancel"
        case businessAppointmentSettings = "business_appointment_settings"
        case SupportSellerLevelWrites = "support_seller_level_writes"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.SellerId = try container.decodeIfPresent(String.self, forKey: .SellerId)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        self.BookingEnabled = try container.decodeIfPresent(Bool.self, forKey: .BookingEnabled)
//        self.CustomerTimezoneChoice = try container.decodeIfPresent(BusinessBookingProfileCustomerTimezoneChoice.self, forKey: .CustomerTimezoneChoice)
//        self.BookingPolicy = try container.decodeIfPresent(BusinessBookingProfileBookingPolicy.self, forKey: .BookingPolicy)
//        self.AllowUserCancel = try container.decodeIfPresent(Bool.self, forKey: .AllowUserCancel)
//        self.businessAppointmentSettings = try container.decodeIfPresent(BusinessAppointmentSettings.self, forKey: .businessAppointmentSettings)
//        self.SupportSellerLevelWrites = try container.decodeIfPresent(Bool.self, forKey: .SupportSellerLevelWrites)
//    }
}
