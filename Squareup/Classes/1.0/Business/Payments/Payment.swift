//
//  Payment.swift
//  Squareup
//
//  Created by user on 12.06.23.
//

import Foundation

/// - Payment: Represents a payment processed by the Square API.
/// https://developer.squareup.com/reference/square/objects/payment
open class Payment: Codable {
    
    /// - Id: Read only A unique ID for the payment.
    /// Max Length 192
    var Id: String?
    /// - CreatedAt: Read only The timestamp of when the payment was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Max Length 32
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp of when the payment was last updated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Max Length 32
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedAt: Date?
    /// - AmountMoney: The amount processed for this payment, not including tip_money.
    /// The amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). For more information, see Working with Monetary Amounts
    var AmountMoney: Money?
    /// - TipMoney: The amount designated as a tip.
    /// This amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). For more information, see Working with Monetary Amounts
    var TipMoney: Money?
    /// - TotalMoney: Read only The total amount for the payment, including amount_money and tip_money. This amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). For more information, see Working with Monetary Amounts
    var TotalMoney: Money?
    /// - AppFeeMoney: The amount the developer is taking as a fee for facilitating the payment on behalf of the seller. This amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). For more information, see Take Payments and Collect Fees.
    /// The amount cannot be more than 90% of the total_money value.
    /// To set this field, PAYMENTS_WRITE_ADDITIONAL_RECIPIENTS OAuth permission is required. For more information, see Permissions.
    var AppFeeMoney: Money?
    /// - ApprovedMoney: The initial amount of money approved for this payment.
    var ApprovedMoney: Money?
    /// - ProcessingFee: Read only The processing fees and fee adjustments assessed by Square for this payment.
    var ProcessingFees: [ProcessingFee]?
    /// - RefundedMoney: Read only The total amount of the payment refunded to date.
    /// This amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents).
    var RefundedMoney: Money?
    /// - Status: Read only Indicates whether the payment is APPROVED, PENDING, COMPLETED, CANCELED, or FAILED.
    /// Max Length 50
    var Status: PaymentStatus?
    /// - DelayDuration: Read only The duration of time after the payment's creation when Square automatically applies the delay_action to the payment. This automatic delay_action applies only to payments that do not reach a terminal state (COMPLETED, CANCELED, or FAILED) before the delay_duration time period.
    /// This field is specified as a time duration, in RFC 3339 format.
    ///
    /// Notes: This feature is only supported for card payments.
    ///
    /// Default:
    ///     Card-present payments: "PT36H" (36 hours) from the creation time.
    ///     Card-not-present payments: "P7D" (7 days) from the creation time.
    ///
    /// Example for 2 days, 12 hours, 30 minutes, and 15 seconds: P2DT12H30M15S
    var DelayDuration: String?
    /// - DelayAction: The action to be applied to the payment when the delay_duration has elapsed.
    /// Current values include CANCEL and COMPLETE.
    var DelayAction: PaymentDelayAction?
    /// - SourceType: Read only The source type for this payment.
    /// Current values include CARD, BANK_ACCOUNT, WALLET, BUY_NOW_PAY_LATER, CASH and EXTERNAL. For information about these payment source types, see Take Payments.
    /// Max Length 50
    var SourceType: PaymentSourceType?
    /// - CardDetails: Read only Details about a card payment. These details are only populated if the source_type is CARD.
    var CardDetails: CardPaymentDetails?
    /// - CashDetails: Details about a cash payment. These details are only populated if the source_type is CASH.
    var CashDetails: CashPaymentDetails?
    /// - BankAccountDetails: Read only Details about a bank account payment. These details are only populated if the source_type is BANK_ACCOUNT.
    var BankAccountDetails: BankAccountPaymentDetails?
    /// - ExternalDetails: Read only Details about an external payment. The details are only populated if the source_type is EXTERNAL.
    var ExternalDetails: ExternalPaymentDetails?
    /// - WalletDetails: Read only Details about an wallet payment. The details are only populated if the source_type is WALLET.
    var WalletDetails: DigitalWalletDetails?
    /// - BuyNowpayLaterDetails: Read only Details about a Buy Now Pay Later payment. The details are only populated if the source_type is BUY_NOW_PAY_LATER. For more information, see Afterpay Payments.
    var BuyNowpayLaterDetails: BuyNowPayLaterDetails?
    /// - LocationId: Read only The ID of the location associated with the payment.
    /// Max Length 50
    var LocationId: String?
    /// - OrderId: Read only The ID of the order associated with the payment.
    /// Max Length 192
    var OrderId: String?
    /// - ReferenceId: Read only An optional ID that associates the payment with an entity in another system.
    /// Max Length 40
    var ReferenceId: String?
    /// - CustomerId: Read only The ID of the customer associated with the payment. If the ID is not provided in the CreatePayment request that was used to create the Payment, Square may use information in the request (such as the billing and shipping address, email address, and payment source) to identify a matching customer profile in the Customer Directory. If found, the profile ID is used. If a profile is not found, the API attempts to create an instant profile. If the API cannot create an instant profile (either because the seller has disabled it or the seller's region prevents creating it), this field remains unset. Note that this process is asynchronous and it may take some time before a customer ID is added to the payment.
    /// Max Length 191
    var CustomerId: String?
    /// - EmployeeId: Read only Deprecated: Use Payment.team_member_id instead.
    /// An optional ID of the employee associated with taking the payment.
    /// Max Length 192
    var EmployeeId: String?
    /// - TeamMemberId: Read only An optional ID of the TeamMember associated with taking the payment.
    /// Max Length 192
    var TeamMemberId: String?
    /// - RefundIds: Read only A list of refund_ids identifying refunds for the payment.
    var RefundIds: [String]?
    /// - RiskEvaluation: Read only Provides information about the risk associated with the payment, as determined by Square. This field is present for payments to sellers that have opted in to receive risk evaluations.
    var riskEvaluation: RiskEvaluation?
    /// - BuyerEmailAddress: Read only The buyer's email address.
    /// Max Length 255
    var BuyerEmailAddress: String?
    /// - BillingAddress: Read only The buyer's billing address.
    var BillingAddress: Address?
    /// - ShippingAddress: Read only The buyer's shipping address.
    var ShippingAddress: Address?
    /// - Note: Read only An optional note to include when creating a payment.
    /// Max Length 500
    var Note: String?
    /// - StatementDescriptionIdentifier: Read only Additional payment information that gets added to the customer's card statement as part of the statement description.
    /// Note that the statement_description_identifier might get truncated on the statement description to fit the required information including the Square identifier (SQ *) and the name of the seller taking the payment.
    var StatementDescriptionIdentifier: String?
    /// - Capabilities: Read only Actions that can be performed on this payment:
    /// EDIT_AMOUNT_UP - The payment amount can be edited up.
    /// EDIT_AMOUNT_DOWN - The payment amount can be edited down.
    /// EDIT_TIP_AMOUNT_UP - The tip amount can be edited up.
    /// EDIT_TIP_AMOUNT_DOWN - The tip amount can be edited down.
    /// EDIT_DELAY_ACTION - The delay_action can be edited.
    var Capabilities: [PaymentCapabilities]?
    /// - ReceiptNumber: Read only The payment's receipt number. The field is missing if a payment is canceled.
    /// Max Length 4
    var ReceiptNumber: String?
    /// - ReceiptUrl: Read only The URL for the payment's receipt. The field is only populated for COMPLETED payments.
    /// Max Length 255
    var ReceiptUrl: String?
    /// - deviceDetails: Read only Details about the device that took the payment.
    var deviceDetails: DeviceDetails?
    /// - applicationDetails: Read only Details about the application that took the payment.
    var applicationDetails: ApplicationDetails?
    /// - VersionToken: Used for optimistic concurrency. This opaque token identifies a specific version of the Payment object.
    var VersionToken: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case AmountMoney = "amount_money"
        case TipMoney = "tip_money"
        case TotalMoney = "total_money"
        case AppFeeMoney = "app_fee_money"
        case ApprovedMoney = "approved_money"
        case ProcessingFees = "processing_fee"
        case RefundedMoney = "refunded_money"
        case Status = "status"
        case DelayDuration = "delay_duration"
        case DelayAction = "delay_action"
        case SourceType = "source_type"
        case CardDetails = "card_details"
        case CashDetails = "cash_details"
        case BankAccountDetails = "bank_account_details"
        case ExternalDetails = "external_details"
        case WalletDetails = "wallet_details"
        case BuyNowpayLaterDetails = "buy_now_pay_later_details"
        case LocationId = "location_id"
        case OrderId = "order_id"
        case ReferenceId = "reference_id"
        case CustomerId = "customer_id"
        case EmployeeId = "employee_id"
        case TeamMemberId = "team_member_id"
        case RefundIds = "refund_ids"
        case riskEvaluation = "risk_evaluation"
        case BuyerEmailAddress = "buyer_email_address"
        case BillingAddress = "billing_address"
        case ShippingAddress = "shipping_address"
        case Note = "note"
        case StatementDescriptionIdentifier = "statement_description_identifier"
        case Capabilities = "capabilities"
        case ReceiptNumber = "receipt_number"
        case ReceiptUrl = "receipt_url"
        case deviceDetails = "device_details"
        case applicationDetails = "application_details"
        case VersionToken = "version_token"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        self.AmountMoney = try container.decodeIfPresent(Money.self, forKey: .AmountMoney)
//        self.TipMoney = try container.decodeIfPresent(Money.self, forKey: .TipMoney)
//        self.TotalMoney = try container.decodeIfPresent(Money.self, forKey: .TotalMoney)
//        self.AppFeeMoney = try container.decodeIfPresent(Money.self, forKey: .AppFeeMoney)
//        self.ApprovedMoney = try container.decodeIfPresent(Money.self, forKey: .ApprovedMoney)
//        self.ProcessingFees = try container.decodeIfPresent([ProcessingFee].self, forKey: .ProcessingFees)
//        self.RefundedMoney = try container.decodeIfPresent(Money.self, forKey: .RefundedMoney)
//        self.Status = try container.decodeIfPresent(PaymentStatus.self, forKey: .Status)
//        self.DelayDuration = try container.decodeIfPresent(String.self, forKey: .DelayDuration)
//        self.DelayAction = try container.decodeIfPresent(PaymentDelayAction.self, forKey: .DelayAction)
//        self.SourceType = try container.decodeIfPresent(PaymentSourceType.self, forKey: .SourceType)
//        self.CardDetails = try container.decodeIfPresent(CardPaymentDetails.self, forKey: .CardDetails)
//        self.CashDetails = try container.decodeIfPresent(CashPaymentDetails.self, forKey: .CashDetails)
//        self.BankAccountDetails = try container.decodeIfPresent(BankAccountPaymentDetails.self, forKey: .BankAccountDetails)
//        self.ExternalDetails = try container.decodeIfPresent(ExternalPaymentDetails.self, forKey: .ExternalDetails)
//        self.WalletDetails = try container.decodeIfPresent(DigitalWalletDetails.self, forKey: .WalletDetails)
//        self.BuyNowpayLaterDetails = try container.decodeIfPresent(BuyNowPayLaterDetails.self, forKey: .BuyNowpayLaterDetails)
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.OrderId = try container.decodeIfPresent(String.self, forKey: .OrderId)
//        self.ReferenceId = try container.decodeIfPresent(String.self, forKey: .ReferenceId)
//        self.CustomerId = try container.decodeIfPresent(String.self, forKey: .CustomerId)
//        self.EmployeeId = try container.decodeIfPresent(String.self, forKey: .EmployeeId)
//        self.TeamMemberId = try container.decodeIfPresent(String.self, forKey: .TeamMemberId)
//        self.RefundIds = try container.decodeIfPresent([String].self, forKey: .RefundIds)
//        self.riskEvaluation = try container.decodeIfPresent(RiskEvaluation.self, forKey: .riskEvaluation)
//        self.BuyerEmailAddress = try container.decodeIfPresent(String.self, forKey: .BuyerEmailAddress)
//        self.BillingAddress = try container.decodeIfPresent(Address.self, forKey: .BillingAddress)
//        self.ShippingAddress = try container.decodeIfPresent(Address.self, forKey: .ShippingAddress)
//        self.Note = try container.decodeIfPresent(String.self, forKey: .Note)
//        self.StatementDescriptionIdentifier = try container.decodeIfPresent(String.self, forKey: .StatementDescriptionIdentifier)
//        self.Capabilities = try container.decodeIfPresent([PaymentCapabilities].self, forKey: .Capabilities)
//        self.ReceiptNumber = try container.decodeIfPresent(String.self, forKey: .ReceiptNumber)
//        self.ReceiptUrl = try container.decodeIfPresent(String.self, forKey: .ReceiptUrl)
//        self.deviceDetails = try container.decodeIfPresent(DeviceDetails.self, forKey: .deviceDetails)
//        self.applicationDetails = try container.decodeIfPresent(ApplicationDetails.self, forKey: .applicationDetails)
//        self.VersionToken = try container.decodeIfPresent(String.self, forKey: .VersionToken)
//    }
}
