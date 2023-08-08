//
//  InvoicePaymentRequest.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

/// - InvoicePaymentRequest: Represents a payment request for an invoice.
/// Invoices can specify a maximum of 13 payment requests, with up to 12 INSTALLMENT request types. For more information, see Configuring payment requests.
/// Adding INSTALLMENT payment requests to an invoice requires an Invoices Plus subscription.
/// https://developer.squareup.com/reference/square/objects/InvoicePaymentRequest
open class InvoicePaymentRequest: Codable {
    
    /// - UID: The Square-generated ID of the payment request in an invoice.
    /// Min Length 1
    /// Max Length 255
    var UID: String?
    /// - RequestMethod: Indicates how Square processes the payment request. DEPRECATED at version 2021-01-21. Replaced by the Invoice.delivery_method and InvoicePaymentRequest.automatic_payment_source fields.
    /// One of the following is required when creating an invoice:
    ///
    /// (Recommended) The delivery_method field of the invoice. To configure an automatic payment, the automatic_payment_source field of the payment request is also required.
    /// This request_method field. Note that invoice objects returned in responses do not include request_method.
    var RequestMethod: InvoiceRequestMethod?
    /// - RequestType: Identifies the payment request type. This type defines how the payment request amount is determined. This field is required to create a payment request.
    var RequestType: InvoiceRequestType?
    /// - DueDate: The due date (in the invoice's time zone) for the payment request, in YYYY-MM-DD format. This field is required to create a payment request. If an automatic_payment_source is defined for the request, Square charges the payment source on this date.
    /// After this date, the invoice becomes overdue. For example, a payment due_date of 2021-03-09 with a timezone of America/Los_Angeles becomes overdue at midnight on March 9 in America/Los_Angeles (which equals a UTC timestamp of 2021-03-10T08:00:00Z).
//    var DueDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> var DueDate: Date?
    /// - FixedAmountRequestedMoney: If the payment request specifies DEPOSIT or INSTALLMENT as the request_type, this indicates the request amount. You cannot specify this when request_type is BALANCE or when the payment request includes the percentage_requested field.
    var FixedAmountRequestedMoney: Money?
    /// - PercentageRequested: Specifies the amount for the payment request in percentage:
    /// When the payment request_type is DEPOSIT, it is the percentage of the order's total amount.
    /// When the payment request_type is INSTALLMENT, it is the percentage of the order's total less the deposit, if requested. The sum of the percentage_requested in all installment payment requests must be equal to 100.
    ///
    /// You cannot specify this when the payment request_type is BALANCE or when the payment request specifies the fixed_amount_requested_money field.
    var PercentageRequested: String?
    /// - TippingEnabled: If set to true, the Square-hosted invoice page (the public_url field of the invoice) provides a place for the customer to pay a tip.
    /// This field is allowed only on the final payment request
    /// and the payment request_type must be BALANCE or INSTALLMENT.
    var TippingEnabled: Bool?
    /// - AutomaticPaymentSource: The payment method for an automatic payment.
    /// The default value is NONE.
    var AutomaticPaymentSource: InvoiceAutomaticPaymentSource?
    /// - CardId:  The ID of the credit or debit card on file to charge for the payment request. To get the cards on file for a customer, call ListCards and include the customer_id of the invoice recipient.
    /// Min Length 1
    /// Max Length 255
    var CardId: String?
    /// - Reminders: A list of one or more reminders to send for the payment request.
    var Reminders: [InvoicePaymentReminder]?
    /// - ComputedAmountMoney: Read only The amount of the payment request, computed using the order amount and information from the various payment request fields (request_type, fixed_amount_requested_money, and percentage_requested).
    var ComputedAmountMoney: Money?
    /// - TotalCompletedAmountMoney: Read only The amount of money already paid for the specific payment request. This amount might include a rounding adjustment if the most recent invoice payment was in cash in a currency that rounds cash payments (such as, CAD or AUD).
    var TotalCompletedAmountMoney: Money?
    /// - RoundingAdjustmentIncludedMoney: Read only If the most recent payment was a cash payment in a currency that rounds cash payments (such as, CAD or AUD) and the payment is rounded from computed_amount_money in the payment request, then this field specifies the rounding adjustment applied. This amount might be negative.
    var RoundingAdjustmentIncludedMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case RequestMethod = "request_method"
        case RequestType = "request_type"
        case DueDate = "due_date"
        case FixedAmountRequestedMoney = "fixed_amount_requested_money"
        case PercentageRequested = "percentage_requested"
        case TippingEnabled = "tipping_enabled"
        case AutomaticPaymentSource = "automatic_payment_source"
        case CardId = "card_id"
        case Reminders = "reminders"
        case ComputedAmountMoney = "computed_amount_money"
        case TotalCompletedAmountMoney = "total_completed_amount_money"
        case RoundingAdjustmentIncludedMoney = "rounding_adjustment_included_money"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.UID = try container.decodeIfPresent(String.self, forKey: .UID)
//        self.RequestMethod = try container.decodeIfPresent(InvoiceRequestMethod.self, forKey: .RequestMethod)
//        self.RequestType = try container.decodeIfPresent(InvoiceRequestType.self, forKey: .RequestType)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .DueDate), !dateString.isEmpty {
//            self.DueDate = try dateString.decode_RFC3339_Date(container, forKey: .DueDate)
//        }
//        self.FixedAmountRequestedMoney = try container.decodeIfPresent(Money.self, forKey: .FixedAmountRequestedMoney)
//        self.PercentageRequested = try container.decodeIfPresent(String.self, forKey: .PercentageRequested)
//        self.TippingEnabled = try container.decodeIfPresent(Bool.self, forKey: .TippingEnabled)
//        self.AutomaticPaymentSource = try container.decodeIfPresent(InvoiceAutomaticPaymentSource.self, forKey: .AutomaticPaymentSource)
//        self.CardId = try container.decodeIfPresent(String.self, forKey: .CardId)
//        self.Reminders = try container.decodeIfPresent([InvoicePaymentReminder].self, forKey: .Reminders)
//        self.ComputedAmountMoney = try container.decodeIfPresent(Money.self, forKey: .ComputedAmountMoney)
//        self.TotalCompletedAmountMoney = try container.decodeIfPresent(Money.self, forKey: .TotalCompletedAmountMoney)
//        self.RoundingAdjustmentIncludedMoney = try container.decodeIfPresent(Money.self, forKey: .RoundingAdjustmentIncludedMoney)
//    }
}