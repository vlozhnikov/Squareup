//
//  Invoice.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

/// - Invoice: Stores information about an invoice.
/// You use the Invoices API to create and manage invoices. For more information, see Invoices API Overview.
/// https://developer.squareup.com/reference/square/objects/Invoice
open class Invoice: Codable {
    
    /// - Id: Read only The Square-assigned ID of the invoice.
    var Id: String?
    /// - Version: The Square-assigned version number, which is incremented each time an update is committed to the invoice.
    var Version: Int?
    /// - LocationId: The ID of the location that this invoice is associated with.
    /// If specified in a CreateInvoice request, the value must match the location_id of the associated order.
    /// Min Length 1
    /// Max Length 255
    var LocationId: String?
    /// - OrderId: The ID of the order for which the invoice is created. This field is required when creating an invoice, and the order must be in the OPEN state.
    /// To view the line items and other information for the associated order, call the RetrieveOrder endpoint using the order ID.
    /// Min Length 1
    /// Max Length  255
    var OrderId: String?
    /// - PrimaryRecipient: The customer who receives the invoice. This customer data is displayed on the invoice and used by Square to deliver the invoice.
    /// This field is required to publish an invoice, and it must specify the customer_id.
    var PrimaryRecipient: InvoiceRecipient?
    /// - PaymentRequests: The payment schedule for the invoice, represented by one or more payment requests that define payment settings, such as amount due and due date. An invoice supports the following payment request combinations:
    ///
    /// One balance
    /// One deposit with one balance
    /// 2–12 installments
    /// One deposit with 2–12 installments
    ///
    /// This field is required when creating an invoice. It must contain at least one payment request. All payment requests for the invoice must equal the total order amount. For more information, see Configuring payment requests.
    /// Adding INSTALLMENT payment requests to an invoice requires an Invoices Plus subscription.
    var PaymentRequests: [InvoicePaymentRequest]?
    /// - DeliveryMethod: The delivery method that Square uses to send the invoice, reminders, and receipts to the customer. After the invoice is published, Square processes the invoice based on the delivery method and payment request settings, either immediately or on the scheduled_at date, if specified. For example, Square might send the invoice or receipt for an automatic payment. For invoices with automatic payments, this field must be set to EMAIL.
    ///
    /// One of the following is required when creating an invoice:
    ///
    /// (Recommended) This delivery_method field. To configure an automatic payment, the automatic_payment_source field of the payment request is also required.
    /// The deprecated request_method field of the payment request. Note that invoice objects returned in responses do not include request_method.
    var DeliveryMethod: InvoiceDeliveryMethod?
    /// - InvoiceNumber: A user-friendly invoice number that is displayed on the invoice. The value is unique within a location. If not provided when creating an invoice, Square assigns a value. It increments from 1 and is padded with zeros making it 7 characters long (for example, 0000001 and 0000002).
    /// Min Length 1
    /// Max Length 191
    var InvoiceNumber: String?
    /// - Title: The title of the invoice, which is displayed on the invoice.
    /// Min Length 1
    /// Max Length  255
    var Title: String?
    /// - Description: The description of the invoice, which is displayed on the invoice.
    /// Min Length 1
    /// Max Length 65536
    var Description: String?
    /// - ScheduledAt: The timestamp when the invoice is scheduled for processing, in RFC 3339 format. After the invoice is published, Square processes the invoice on the specified date, according to the delivery method and payment request settings.
    /// If the field is not set, Square processes the invoice immediately after it is published.
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var ScheduledAt: Date?
    @FormattedDate<RFC3339_Strategy> var ScheduledAt: Date?
    /// - PublicUrl: Read only The URL of the Square-hosted invoice page. After you publish the invoice using the PublishInvoice endpoint, Square hosts the invoice page and returns the page URL in the response.
    var PublicUrl: String?
    /// - NextPaymentAmountMoney: Read only The current amount due for the invoice. In addition to the amount due on the next payment request, this includes any overdue payment amounts.
    var NextPaymentAmountMoney: Money?
    /// - Status: Read only The status of the invoice.
    var Status: InvoiceStatus?
    /// - Timezone: Read only The time zone used to interpret calendar dates on the invoice, such as due_date. When an invoice is created, this field is set to the timezone specified for the seller location. The value cannot be changed.
    /// For example, a payment due_date of 2021-03-09 with a timezone of America/Los_Angeles becomes overdue at midnight on March 9 in America/Los_Angeles (which equals a UTC timestamp of 2021-03-10T08:00:00Z).
//    var Timezone: Date?
    @FormattedDate<RFC3339_Strategy> var Timezone: Date?
    /// - CreatedAt: Read only The timestamp when the invoice was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp when the invoice was last updated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedAt: Date?
    /// - AcceptedPaymentMethods: The payment methods that customers can use to pay the invoice on the Square-hosted invoice page. This setting is independent of any automatic payment requests for the invoice.
    /// This field is required when creating an invoice and must set at least one payment method to true.
    var AcceptedPaymentMethods: InvoiceAcceptedPaymentMethods?
    /// - CustomFields: Additional seller-defined fields that are displayed on the invoice. For more information, see Custom fields.
    /// Adding custom fields to an invoice requires an Invoices Plus subscription.
    /// Max: 2 custom fields
    var CustomFields: [InvoiceCustomField]?
    /// - SubscriptionId: Read only The ID of the subscription associated with the invoice. This field is present only on subscription billing invoices.
    var SubscriptionId: String?
    /// - SaleOrServiceDate: The date of the sale or the date that the service is rendered, in YYYY-MM-DD format. This field can be used to specify a past or future date which is displayed on the invoice.
//    var SaleOrServiceDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> var SaleOrServiceDate: Date?
    /// - PaymentConditions: France only. The payment terms and conditions that are displayed on the invoice. For more information, see Payment conditions.
    /// For countries other than France, Square returns an INVALID_REQUEST_ERROR with a BAD_REQUEST code and "Payment conditions are not supported for this location's country" detail if this field is included in CreateInvoice or UpdateInvoice requests.
    /// Min Length 1
    /// Max Length 2000
    var PaymentConditions: String?
    /// - StorePaymentMethodEnabled: Indicates whether to allow a customer to save a credit or debit card as a card on file or a bank transfer as a bank account on file. If true, Square displays a Save my card on file or Save my bank on file checkbox on the invoice payment page. Stored payment information can be used for future automatic payments. The default value is false.
    var StorePaymentMethodEnabled: Bool?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Version = "version"
        case LocationId = "location_id"
        case OrderId = "order_id"
        case PrimaryRecipient = "primary_recipient"
        case PaymentRequests = "payment_requests"
        case DeliveryMethod = "delivery_method"
        case InvoiceNumber = "invoice_number"
        case Title = "title"
        case Description = "description"
        case ScheduledAt = "scheduled_at"
        case PublicUrl = "public_url"
        case NextPaymentAmountMoney = "next_payment_amount_money"
        case Status = "status"
        case Timezone = "timezone"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case AcceptedPaymentMethods = "accepted_payment_methods"
        case CustomFields = "custom_fields"
        case SubscriptionId = "subscription_id"
        case SaleOrServiceDate = "sale_or_service_date"
        case PaymentConditions = "payment_conditions"
        case StorePaymentMethodEnabled = "store_payment_method_enabled"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.Version = try container.decodeIfPresent(Int.self, forKey: .Version)
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.OrderId = try container.decodeIfPresent(String.self, forKey: .OrderId)
//        self.PrimaryRecipient = try container.decodeIfPresent(InvoiceRecipient.self, forKey: .PrimaryRecipient)
//        self.PaymentRequests = try container.decodeIfPresent([InvoicePaymentRequest].self, forKey: .PaymentRequests)
//        self.DeliveryMethod = try container.decodeIfPresent(InvoiceDeliveryMethod.self, forKey: .DeliveryMethod)
//        self.InvoiceNumber = try container.decodeIfPresent(String.self, forKey: .InvoiceNumber)
//        self.Title = try container.decodeIfPresent(String.self, forKey: .Title)
//        self.Description = try container.decodeIfPresent(String.self, forKey: .Description)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ScheduledAt), !dateString.isEmpty {
//            self.ScheduledAt = try dateString.decode_RFC3339_Date(container, forKey: .ScheduledAt)
//        }
//        self.PublicUrl = try container.decodeIfPresent(String.self, forKey: .PublicUrl)
//        self.NextPaymentAmountMoney = try container.decodeIfPresent(Money.self, forKey: .NextPaymentAmountMoney)
//        self.Status = try container.decodeIfPresent(InvoiceStatus.self, forKey: .Status)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .Timezone), !dateString.isEmpty {
//            self.Timezone = try dateString.decode_RFC3339_Date(container, forKey: .Timezone)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        self.AcceptedPaymentMethods = try container.decodeIfPresent(InvoiceAcceptedPaymentMethods.self, forKey: .AcceptedPaymentMethods)
//        self.CustomFields = try container.decodeIfPresent([InvoiceCustomField].self, forKey: .CustomFields)
//        self.SubscriptionId = try container.decodeIfPresent(String.self, forKey: .SubscriptionId)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .SaleOrServiceDate), !dateString.isEmpty {
//            self.SaleOrServiceDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .SaleOrServiceDate)
//        }
//        self.PaymentConditions = try container.decodeIfPresent(String.self, forKey: .PaymentConditions)
//        self.StorePaymentMethodEnabled = try container.decodeIfPresent(Bool.self, forKey: .StorePaymentMethodEnabled)
//    }
}