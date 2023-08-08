//
//  FulfillmentShipmentDetails.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - FulfillmentShipmentDetails: Contains the details necessary to fulfill a shipment order.
/// https://developer.squareup.com/reference/square/objects/FulfillmentShipmentDetails
open class FulfillmentShipmentDetails: Codable {
   
    /// - Recipient: IInformation about the person to receive this shipment fulfillment.
    var Recipient: FulfillmentRecipient?
    /// - Carrier: The shipping carrier being used to ship this fulfillment (such as UPS, FedEx, or USPS).
    /// Max Length 50
    var Carrier: String?
    /// - ShippingNote: A note with additional information for the shipping carrier.
    /// Max Length 500
    var ShippingNote: String?
    /// - ShippingType: A description of the type of shipping product purchased from the carrier (such as First Class, Priority, or Express).
    /// Max Length 50
    var ShippingType: String?
    /// - TrackingNumber: The reference number provided by the carrier to track the shipment's progress.
    /// Max Length 100
    var TrackingNumber: String?
    /// - TrackingUrl: A link to the tracking webpage on the carrier's website.
    /// Max Length 2000
    var TrackingUrl: String?
    /// - PlacedAt: Read only The timestamp indicating when the shipment was requested. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var PlacedAt: Date?
    @FormattedDate<RFC3339_Strategy> var PlacedAt: Date?
    /// - InProgressAt: Read only The timestamp indicating when this fulfillment was moved to the RESERVED state, which indicates that preparation of this shipment has begun. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var InProgressAt: Date?
    @FormattedDate<RFC3339_Strategy> var InProgressAt: Date?
    /// - PackagedAt: Read only The timestamp indicating when this fulfillment was moved to the PREPARED state, which indicates that the fulfillment is packaged. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var PackagedAt: Date?
    @FormattedDate<RFC3339_Strategy> var PackagedAt: Date?
    /// - ExpectedShippedAt: The timestamp indicating when the shipment is expected to be delivered to the shipping carrier. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var ExpectedShippedAt: Date?
    @FormattedDate<RFC3339_Strategy> var ExpectedShippedAt: Date?
    /// - ShippedAt: Read only The timestamp indicating when this fulfillment was moved to the COMPLETED state, which indicates that the fulfillment has been given to the shipping carrier. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var ShippedAt: Date?
    @FormattedDate<RFC3339_Strategy> var ShippedAt: Date?
    /// - CanceledAt: Read only The timestamp indicating when this fulfillment was moved to the COMPLETED state, which indicates that the fulfillment has been given to the shipping carrier. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    ///  Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CanceledAt: Date?
    @FormattedDate<RFC3339_Strategy> var CanceledAt: Date?
    /// - CancelReason: A description of why the shipment was canceled.
    /// Max Length 100
    var CancelReason: String?
    /// - FailedAt: Read only The timestamp indicating when the shipment failed to be completed. The timestamp must be in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var FailedAt: Date?
    @FormattedDate<RFC3339_Strategy> var FailedAt: Date?
    /// - FailureReason: A description of why the shipment failed to be completed.
    /// Max Length 100
    var FailureReason: String?
    
    enum CodingKeys: String, CodingKey {
        case Recipient = "recipient"
        case Carrier = "carrier"
        case ShippingNote = "shipping_note"
        case ShippingType = "shipping_type"
        case TrackingNumber = "tracking_number"
        case TrackingUrl = "tracking_url"
        case PlacedAt = "placed_at"
        case InProgressAt = "in_progress_at"
        case PackagedAt = "packaged_at"
        case ExpectedShippedAt = "expected_shipped_at"
        case ShippedAt = "shipped_at"
        case CanceledAt = "canceled_at"
        case CancelReason = "cancel_reason"
        case FailedAt = "failed_at"
        case FailureReason = "failure_reason"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Recipient = try container.decodeIfPresent(FulfillmentRecipient.self, forKey: .Recipient)
//        self.Carrier = try container.decodeIfPresent(String.self, forKey: .Carrier)
//        self.ShippingNote = try container.decodeIfPresent(String.self, forKey: .ShippingNote)
//        self.ShippingType = try container.decodeIfPresent(String.self, forKey: .ShippingType)
//        self.TrackingNumber = try container.decodeIfPresent(String.self, forKey: .TrackingNumber)
//        self.TrackingUrl = try container.decodeIfPresent(String.self, forKey: .TrackingUrl)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .PlacedAt), !dateString.isEmpty {
//            self.PlacedAt = try dateString.decode_RFC3339_Date(container, forKey: .PlacedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .InProgressAt), !dateString.isEmpty {
//            self.InProgressAt = try dateString.decode_RFC3339_Date(container, forKey: .InProgressAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .PackagedAt), !dateString.isEmpty {
//            self.PackagedAt = try dateString.decode_RFC3339_Date(container, forKey: .PackagedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ExpectedShippedAt), !dateString.isEmpty {
//            self.ExpectedShippedAt = try dateString.decode_RFC3339_Date(container, forKey: .ExpectedShippedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ExpectedShippedAt), !dateString.isEmpty {
//            self.ExpectedShippedAt = try dateString.decode_RFC3339_Date(container, forKey: .ExpectedShippedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CanceledAt), !dateString.isEmpty {
//            self.CanceledAt = try dateString.decode_RFC3339_Date(container, forKey: .CanceledAt)
//        }
//        self.CancelReason = try container.decodeIfPresent(String.self, forKey: .CancelReason)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .FailedAt), !dateString.isEmpty {
//            self.FailedAt = try dateString.decode_RFC3339_Date(container, forKey: .FailedAt)
//        }
//        self.FailureReason = try container.decodeIfPresent(String.self, forKey: .FailureReason)
//    }
}

