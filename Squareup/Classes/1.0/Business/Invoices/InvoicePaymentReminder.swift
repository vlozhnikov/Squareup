//
//  InvoicePaymentReminder.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

/// - InvoicePaymentReminder: Describes a payment request reminder (automatic notification) that Square sends to the customer.
/// You configure a reminder relative to the payment request due_date.
/// https://developer.squareup.com/reference/square/objects/InvoicePaymentReminder
open class InvoicePaymentReminder: Codable {
    
    /// - UID: Read only A Square-assigned ID that uniquely identifies the reminder within the InvoicePaymentRequest.
    var UID: String?
    /// - RelativeScheduledDays: The number of days before (a negative number) or after (a positive number) the payment request due_date when the reminder is sent. For example, -3 indicates that the reminder should be sent 3 days before the payment request due_date.
    /// Min -32767
    /// Max  32767
    var RelativeScheduledDays: Int?
    /// - Message: The reminder message.
    /// Min Length 1
    /// Max Length 1000
    var Message: String?
    /// - Status: Read only The status of the reminder.
    var Status: InvoicePaymentReminderStatus?
    /// - SentAt: Read only If sent, the timestamp when the reminder was sent, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    ///  Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var SentAt: Date?
    @FormattedDate<RFC3339_Strategy> var SentAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case RelativeScheduledDays = "relative_scheduled_days"
        case Message = "message"
        case Status = "status"
        case SentAt = "sent_at"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.UID = try container.decodeIfPresent(String.self, forKey: .UID)
//        self.RelativeScheduledDays = try container.decodeIfPresent(Int.self, forKey: .RelativeScheduledDays)
//        self.Message = try container.decodeIfPresent(String.self, forKey: .Message)
//        self.Status = try container.decodeIfPresent(InvoicePaymentReminderStatus.self, forKey: .Status)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .SentAt), !dateString.isEmpty {
//            self.SentAt = try dateString.decode_RFC3339_Date(container, forKey: .SentAt)
//        }
//    }
}
