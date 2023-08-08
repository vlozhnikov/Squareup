//
//  Booking.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

/// - Booking: Represents a booking as a time-bound service contract for a seller's staff member to provide a specified service at a given location to a requesting customer in one or more appointment segments.
/// https://developer.squareup.com/reference/square/objects/Booking
open class Booking: Codable {
    
    /// - Id: Read only A unique ID of this object representing a booking.
    /// Max Length 36
    public var Id: String?
    /// - Version: The revision number for the booking used for optimistic concurrency.
    public var Version: Int?
    /// - Status: Read only The status of the booking, describing where the booking stands with respect to the booking state machine.
    public var Status: BookingStatus?
    /// - CreatedAt: Read only The RFC 3339 timestamp specifying the creation time of this booking.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: Read only The RFC 3339 timestamp specifying the most recent update time of this booking.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    /// - StartAt: The RFC 3339 timestamp specifying the starting time of this booking.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var StartAt: Date?
    @FormattedDate<RFC3339_Strategy> public var StartAt: Date?
    /// - LocationId: The ID of the Location object representing the location where the booked service is provided. Once set when the booking is created, its value cannot be changed.
    /// Max Length 32
    public var LocationId: String?
    /// - CustomerId: The ID of the Customer object representing the customer receiving the booked service.
    /// Max Length 192
    public var CustomerId: String?
    /// - CustomerNote: The free-text field for the customer to supply notes about the booking. For example, the note can be preferences that cannot be expressed by supported attributes of a relevant CatalogObject instance.
    /// Max Length 4096
    public var CustomerNote: String?
    /// - SellerNote: The free-text field for the seller to supply notes about the booking. For example, the note can be preferences that cannot be expressed by supported attributes of a specific CatalogObject instance. This field should not be visible to customers.
    /// Max Length 4096
    public var SellerNote: String?
    /// - AppointmentSegments: A list of appointment segments for this booking.
    public var AppointmentSegments: [AppointmentSegment]?
    /// - TransitionTimeMinutes: Read only Additional time at the end of a booking. Applications should not make this field visible to customers of a seller.
    public var TransitionTimeMinutes: Int?
    /// - AllDay: Read only Whether the booking is of a full business day.
    public var AllDay: Bool?
    /// - LocationType: The type of location where the booking is held. Access to this field requires seller-level permissions.
    public var LocationType: BusinessAppointmentSettingsBookingLocationType?
    /// - CreatorDetails: Read only Information about the booking creator.
    public var CreatorDetails: BookingCreatorDetails?
    /// - Source: Read only The source of the booking. Access to this field requires seller-level permissions.
    public var Source: BookingBookingSource?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Version = "version"
        case Status = "status"
        case CreatedAt = "CreatedAt"
        case UpdatedAt = "updated_at"
        case StartAt = "start_at"
        case LocationId = "location_id"
        case CustomerId = "customer_id"
        case CustomerNote = "customer_note"
        case SellerNote = "seller_note"
        case AppointmentSegments = "appointment_segments"
        case TransitionTimeMinutes = "transition_time_minutes"
        case AllDay = "all_day"
        case LocationType = "location_type"
        case CreatorDetails = "creator_details"
        case Source = "Source"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.Version = try container.decodeIfPresent(Int.self, forKey: .Version)
//        self.Status = try container.decodeIfPresent(BookingStatus.self, forKey: .Status)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .StartAt), !dateString.isEmpty {
//            self.StartAt = try dateString.decode_RFC3339_Date(container, forKey: .StartAt)
//        }
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.CustomerId = try container.decodeIfPresent(String.self, forKey: .CustomerId)
//        self.CustomerNote = try container.decodeIfPresent(String.self, forKey: .CustomerNote)
//        self.SellerNote = try container.decodeIfPresent(String.self, forKey: .SellerNote)
//        self.AppointmentSegments = try container.decodeIfPresent([AppointmentSegment].self, forKey: .AppointmentSegments)
//        self.TransitionTimeMinutes = try container.decodeIfPresent(Int.self, forKey: .TransitionTimeMinutes)
//        self.AllDay = try container.decodeIfPresent(Bool.self, forKey: .AllDay)
//        self.LocationType = try container.decodeIfPresent(BusinessAppointmentSettingsBookingLocationType.self, forKey: .LocationType)
//        self.CreatorDetails = try container.decodeIfPresent(BookingCreatorDetails.self, forKey: .CreatorDetails)
//        self.Source = try container.decodeIfPresent(BookingBookingSource.self, forKey: .Source)
//    }
}
