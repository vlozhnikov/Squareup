//
//  InvoicePaymentReminder.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 17.06.23.
//

import Foundation

/// - InvoicePaymentReminder: Describes a payment request reminder (automatic notification) that Square sends to the customer.
/// You configure a reminder relative to the payment request due_date.
/// https://developer.squareup.com/reference/square/objects/InvoicePaymentReminder
open class InvoicePaymentReminder: Codable {
    
    /// - UID: Read only A Square-assigned ID that uniquely identifies the reminder within the InvoicePaymentRequest.
    public var UID: String?
    /// - RelativeScheduledDays: The number of days before (a negative number) or after (a positive number) the payment request due_date when the reminder is sent. For example, -3 indicates that the reminder should be sent 3 days before the payment request due_date.
    /// Min -32767
    /// Max  32767
    public var RelativeScheduledDays: Int?
    /// - Message: The reminder message.
    /// Min Length 1
    /// Max Length 1000
    public var Message: String?
    /// - Status: Read only The status of the reminder.
    public var Status: InvoicePaymentReminderStatus?
    /// - SentAt: Read only If sent, the timestamp when the reminder was sent, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    ///  Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var SentAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case RelativeScheduledDays = "relative_scheduled_days"
        case Message = "message"
        case Status = "status"
        case SentAt = "sent_at"
    }
}
