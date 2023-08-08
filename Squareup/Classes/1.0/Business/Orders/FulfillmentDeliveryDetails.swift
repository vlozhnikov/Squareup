//
//  FulfillmentDeliveryDetails.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - FulfillmentDeliveryDetails: Describes delivery details of an order fulfillment.
/// https://developer.squareup.com/reference/square/objects/FulfillmentDeliveryDetails
open class FulfillmentDeliveryDetails: Codable {
    
    /// - Recipient: The contact information for the person to receive the fulfillment.
    public var Recipient: FulfillmentRecipient?
    /// - ScheduleType: Indicates the fulfillment delivery schedule type. If SCHEDULED, then deliver_at is required. If ASAP, then prep_time_duration is required. The default is SCHEDULED
    public var ScheduleType: FulfillmentDeliveryDetailsOrderFulfillmentDeliveryDetailsScheduleType?
    /// - PlacedAt: Read only The timestamp indicating when the fulfillment was placed. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Must be in RFC 3339 timestamp format, e.g., "2016-09-04T23:59:33.123Z".
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var PlacedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var PlacedAt: Date?
    /// - DeliverAt: The timestamp that represents the start of the delivery period. When the fulfillment schedule_type is ASAP, the field is automatically set to the current time plus the prep_time_duration. Otherwise, the application can set this field while the fulfillment state is PROPOSED, RESERVED, or PREPARED (any time before the terminal state such as COMPLETED, CANCELED, and FAILED).
    /// The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    ///  UTC: 2020-01-26T02:25:34Z
    ///
    ///  Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var DeliverAt: Date?
    @FormattedDate<RFC3339_Strategy> public var DeliverAt: Date?
    /// - PrepTimeDuration: The duration of time it takes to prepare and deliver this fulfillment. The timestamp must be in RFC 3339 format (for example, "P1W3D").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var PrepTimeDuration: Date?
    @FormattedDate<RFC3339_Strategy> public var PrepTimeDuration: Date?
    /// - DeliveryWindowDuration: The time period after the deliver_at timestamp in which to deliver the order. Applications can set this field when the fulfillment state is PROPOSED, RESERVED, or PREPARED (any time before the terminal state such as COMPLETED, CANCELED, and FAILED).
    /// The timestamp must be in RFC 3339 format (for example, "P1W3D").
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var DeliveryWindowDuration: Date?
    @FormattedDate<RFC3339_Strategy> public var DeliveryWindowDuration: Date?
    /// - Note: Provides additional instructions about the delivery fulfillment. It is displayed in the Square Point of Sale application and set by the API.
    /// Max Length 550
    var Note: String?
    /// - CompletedAt: The timestamp indicates when the seller completed the fulfillment. This field is automatically set when fulfillment state changes to COMPLETED. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CompletedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CompletedAt: Date?
    /// - InProgressAt: Read only The timestamp indicates when the seller started processing the fulfillment. This field is automatically set when the fulfillment state changes to RESERVED. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var InProgressAt: Date?
    @FormattedDate<RFC3339_Strategy> public var InProgressAt: Date?
    /// - RejectedAt: Read only The timestamp indicating when the fulfillment was rejected. This field is automatically set when the fulfillment state changes to FAILED. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var RejectedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var RejectedAt: Date?
    /// - ReadyAt: Read only The timestamp indicating when the seller marked the fulfillment as ready for courier pickup. This field is automatically set when the fulfillment state changes to PREPARED. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var ReadyAt: Date?
    @FormattedDate<RFC3339_Strategy> public var ReadyAt: Date?
    /// - DeliveredAt: Read only The timestamp indicating when the fulfillment was delivered to the recipient. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var DeliveredAt: Date?
    @FormattedDate<RFC3339_Strategy> public var DeliveredAt: Date?
    /// - CanceledAt: Read only The timestamp indicating when the fulfillment was canceled. This field is automatically set when the fulfillment state changes to CANCELED.
    /// The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CanceledAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CanceledAt: Date?
    /// - CancelReason: The delivery cancellation reason. Max length: 100 characters.
    /// Max Length 100
    public var CancelReason: String?
    /// - CourierPickupAt: The timestamp indicating when an order can be picked up by the courier for delivery. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CourierPickupAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CourierPickupAt: Date?
    /// - CourierPickupWindowDuration: The period of time in which the order should be picked up by the courier after the courier_pickup_at timestamp. The time must be in RFC 3339 format (for example, "P1W3D").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CourierPickupWindowDuration: Date?
    @FormattedDate<RFC3339_Strategy> public var CourierPickupWindowDuration: Date?
    /// - IsNoContactDelivery: Whether the delivery is preferred to be no contact.
    public var IsNoContactDelivery: Bool?
    /// - DropoffNotes: A note to provide additional instructions about how to deliver the order.
    /// Max Length 550
    public var DropoffNotes: String?
    /// - CourierProviderName: The name of the courier provider.
    /// Max Lengthc 255
    public var CourierProviderName: String?
    /// - CourierSupportphoneNumber: The support phone number of the courier.
    /// Max Length 17
    public var CourierSupportPhoneNumber: String?
    /// - SquareDeliveryId: The identifier for the delivery created by Square.
    /// Max Length 50
    public var SquareDeliveryId: String?
    /// - ExternalDeliveryId: The identifier for the delivery created by the third-party courier service.
    /// Max Length 50
    public var ExternalDeliveryId: String?
    /// - ManagedDelivery: The flag to indicate the delivery is managed by a third party (ie DoorDash), which means we may not receive all recipient information for PII purposes.
    public var ManagedDelivery: Bool?
    
    enum CodingKeys: String, CodingKey {
        case Recipient = "recipient"
        case ScheduleType = "schedule_type"
        case PlacedAt = "placed_at"
        case DeliverAt = "deliver_at"
        case PrepTimeDuration = "prep_time_duration"
        case DeliveryWindowDuration = "delivery_window_duration"
        case Note = "note"
        case CompletedAt = "completed_at"
        case InProgressAt = "in_progress_at"
        case RejectedAt = "rejected_at"
        case ReadyAt = "ready_at"
        case DeliveredAt = "delivered_at"
        case CanceledAt = "canceled_at"
        case CancelReason = "cancel_reason"
        case CourierPickupAt = "courier_pickup_at"
        case CourierPickupWindowDuration = "courier_pickup_window_duration"
        case IsNoContactDelivery = "is_no_contact_delivery"
        case DropoffNotes = "dropoff_notes"
        case CourierProviderName = "courier_provider_name"
        case CourierSupportPhoneNumber = "courier_support_phone_number"
        case SquareDeliveryId = "square_delivery_id"
        case ExternalDeliveryId = "external_delivery_id"
        case ManagedDelivery = "managed_delivery"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Recipient = try container.decodeIfPresent(FulfillmentRecipient.self, forKey: .Recipient)
//        self.ScheduleType = try container.decodeIfPresent(FulfillmentDeliveryDetailsOrderFulfillmentDeliveryDetailsScheduleType.self, forKey: .ScheduleType)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .PlacedAt), !dateString.isEmpty {
//            self.PlacedAt = try dateString.decode_RFC3339_Date(container, forKey: .PlacedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .DeliverAt), !dateString.isEmpty {
//            self.DeliverAt = try dateString.decode_RFC3339_Date(container, forKey: .DeliverAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .PrepTimeDuration), !dateString.isEmpty {
//            self.PrepTimeDuration = try dateString.decode_RFC3339_Date(container, forKey: .PrepTimeDuration)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .DeliveryWindowDuration), !dateString.isEmpty {
//            self.DeliveryWindowDuration = try dateString.decode_RFC3339_Date(container, forKey: .DeliveryWindowDuration)
//        }
//        self.Note = try container.decodeIfPresent(String.self, forKey: .Note)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CompletedAt), !dateString.isEmpty {
//            self.CompletedAt = try dateString.decode_RFC3339_Date(container, forKey: .CompletedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .InProgressAt), !dateString.isEmpty {
//            self.InProgressAt = try dateString.decode_RFC3339_Date(container, forKey: .InProgressAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .RejectedAt), !dateString.isEmpty {
//            self.RejectedAt = try dateString.decode_RFC3339_Date(container, forKey: .RejectedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ReadyAt), !dateString.isEmpty {
//            self.ReadyAt = try dateString.decode_RFC3339_Date(container, forKey: .ReadyAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .DeliveredAt), !dateString.isEmpty {
//            self.DeliveredAt = try dateString.decode_RFC3339_Date(container, forKey: .DeliveredAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CanceledAt), !dateString.isEmpty {
//            self.CanceledAt = try dateString.decode_RFC3339_Date(container, forKey: .CanceledAt)
//        }
//        self.CancelReason = try container.decodeIfPresent(String.self, forKey: .CancelReason)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CourierPickupAt), !dateString.isEmpty {
//            self.CourierPickupAt = try dateString.decode_RFC3339_Date(container, forKey: .CourierPickupAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CourierPickupWindowDuration), !dateString.isEmpty {
//            self.CourierPickupWindowDuration = try dateString.decode_RFC3339_Date(container, forKey: .CourierPickupWindowDuration)
//        }
//        self.IsNoContactDelivery = try container.decodeIfPresent(Bool.self, forKey: .IsNoContactDelivery)
//        self.DropoffNotes = try container.decodeIfPresent(String.self, forKey: .DropoffNotes)
//        self.CourierProviderName = try container.decodeIfPresent(String.self, forKey: .CourierProviderName)
//        self.CourierSupportPhoneNumber = try container.decodeIfPresent(String.self, forKey: .CourierSupportPhoneNumber)
//        self.SquareDeliveryId = try container.decodeIfPresent(String.self, forKey: .SquareDeliveryId)
//        self.ExternalDeliveryId = try container.decodeIfPresent(String.self, forKey: .ExternalDeliveryId)
//        self.ManagedDelivery = try container.decodeIfPresent(Bool.self, forKey: .ManagedDelivery)
//    }
}
