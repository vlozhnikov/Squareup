//
//  PayoutEntry.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.07.23.
//

import Foundation

/// - PayoutEntry: One or more PayoutEntries that make up a Payout.
/// Each one has a date, amount, and type of activity. The total amount of the payout will equal the sum of the payout entries for a batch payout
/// https://developer.squareup.com/reference/square/objects/PayoutEntry
open class PayoutEntry: Codable {
    
    /// - Id: A unique ID for the payout entry.
    /// Min Length 1
    public var Id: String?
    /// - PayoutId: The ID of the payout entries’ associated payout.
    /// Min Length 1
    public var PayoutId: String?
    /// - EffectiveAt: The timestamp of when the payout entry affected the balance, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var EffectiveAt: Date?
    /// - type: The type of activity associated with this payout entry.
    public var type: ActivityType?
    /// - GrossAmountMoney: The amount of money involved in this payout entry.
    public var GrossAmountMoney: Money?
    /// - FeeAmountMoney: The amount of Square fees associated with this payout entry.
    public var FeeAmountMoney: Money?
    /// - NetAmountMoney: The net proceeds from this transaction after any fees.
    public var NetAmountMoney: Money?
    /// - TypeAppFeeRevenueDetails: Details of any developer app fee revenue generated on a payment.
    public var TypeAppFeeRevenueDetails: PaymentBalanceActivityAppFeeRevenueDetail?
    /// - TypeAppFeeRefundDetails: Details of a refund for an app fee on a payment.
    public var TypeAppFeeRefundDetails: PaymentBalanceActivityAppFeeRefundDetail?
    /// - TypeAutomaticSavingsDetails: Details of any automatic transfer from the payment processing balance to the Square Savings account. These are, generally, proportional to the merchant's sales.
    public var TypeAutomaticSavingsDetails: PaymentBalanceActivityAutomaticSavingsDetail?
    /// - TypeAutomaticSavingsReversedDetails: Details of any automatic transfer from the Square Savings account back to the processing balance. These are, generally, proportional to the merchant's refunds.
    public var TypeAutomaticSavingsReversedDetails: PaymentBalanceActivityAutomaticSavingsReversedDetail?
    /// - TypeChargeDetails: Details of credit card payment captures.
    public var TypeChargeDetails: PaymentBalanceActivityChargeDetail?
    /// - TypeDepositFeeDetails: Details of any fees involved with deposits such as for instant deposits.
    public var TypeDepositFeeDetails: PaymentBalanceActivityDepositFeeDetail?
    /// - TypeDisputeDetails: Details of any balance change due to a dispute event.
    public var TypeDisputeDetails: PaymentBalanceActivityDisputeDetail?
    /// - TypeFeeDetails: Details of adjustments due to the Square processing fee.
    public var TypeFeeDetails: PaymentBalanceActivityFeeDetail?
    /// - TypeFreeProcessingDetails: Square offers Free Payments Processing for a variety of business scenarios including seller referral or when Square wants to apologize for a bug, customer service, repricing complication, and so on. This entry represents details of any credit to the merchant for the purposes of Free Processing.
    public var TypeFreeProcessingDetails: PaymentBalanceActivityFreeProcessingDetail?
    /// - TypeHoldAdjustmentDetails: Details of any adjustment made by Square related to the holding or releasing of a payment.
    public var TypeHoldAdjustmentDetails: PaymentBalanceActivityHoldAdjustmentDetail?
    /// - TypePpenDisputeDetails: Details of any open disputes.
    public var TypeOpenDisputeDetails: PaymentBalanceActivityOpenDisputeDetail?
    /// - TypeOtherDetails: Details of any other type that does not belong in the rest of the types.
    public var TypeOtherDetails: PaymentBalanceActivityOtherDetail?
    /// - TypeOtherAdjustmentDetails: Details of any other type of adjustments that don't fall under existing types.
    public var TypeOtherAdjustmentDetails: PaymentBalanceActivityOtherAdjustmentDetail?
    /// - TypeRefundDetails: Details of a refund for an existing card payment.
    public var TypeRefundDetails: PaymentBalanceActivityRefundDetail?
    /// - TypeReleaseAdjustmentDetails: Details of fees released for adjustments.
    public var TypeReleaseAdjustmentDetails: PaymentBalanceActivityReleaseAdjustmentDetail?
    /// - TypeReserveHoldDetails: Details of fees paid for funding risk reserve.
    public var TypeReserveHoldDetails: PaymentBalanceActivityReserveHoldDetail?
    /// - TypeReserveReleaseDetails: Details of fees released from risk reserve.
    public var TypeReserveReleaseDetails: PaymentBalanceActivityReserveReleaseDetail?
    /// - TypeSquareCapitalPaymentDetails: Details of capital merchant cash advance (MCA) assessments. These are, generally, proportional to the merchant's sales but may be issued for other reasons related to the MCA.
    public var TypeSquareCapitalPaymentDetails: PaymentBalanceActivitySquareCapitalPaymentDetail?
    /// - TypeSquareCapitalReversedPaymentDetails: Details of capital merchant cash advance (MCA) assessment refunds. These are, generally, proportional to the merchant's refunds but may be issued for other reasons related to the MCA.
    public var TypeSquareCapitalReversedPaymentDetails: PaymentBalanceActivitySquareCapitalReversedPaymentDetail?
    /// - TypeTaxOnFeeDetails: Details of tax paid on fee amounts.
    public var TypeTaxOnFeeDetails: PaymentBalanceActivityTaxOnFeeDetail?
    /// - TypeThirdPartyFeeDetails: Details of fees collected by a 3rd party platform.
    public var TypeThirdPartyFeeDetails: PaymentBalanceActivityThirdPartyFeeDetail?
    /// - TypeThirdPartyFeeRefundDetails: Details of refunded fees from a 3rd party platform.
    public var TypeThirdPartyFeeRefundDetails: PaymentBalanceActivityThirdPartyFeeRefundDetail?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case PayoutId = "payout_id"
        case EffectiveAt = "effective_at"
        case type = "type"
        case GrossAmountMoney = "gross_amount_money"
        case FeeAmountMoney = "fee_amount_money"
        case NetAmountMoney = "net_amount_money"
        case TypeAppFeeRevenueDetails = "type_app_fee_revenue_details"
        case TypeAppFeeRefundDetails = "type_app_fee_refund_details"
        case TypeAutomaticSavingsDetails = "type_automatic_savings_details"
        case TypeAutomaticSavingsReversedDetails = "type_automatic_savings_reversed_details"
        case TypeChargeDetails = "type_charge_details"
        case TypeDepositFeeDetails = "type_deposit_fee_details"
        case TypeDisputeDetails = "type_dispute_details"
        case TypeFeeDetails = "type_fee_details"
        case TypeFreeProcessingDetails = "type_free_processing_details"
        case TypeHoldAdjustmentDetails = "type_hold_adjustment_details"
        case TypeOpenDisputeDetails = "type_open_dispute_details"
        case TypeOtherDetails = "type_other_details"
        case TypeOtherAdjustmentDetails = "type_other_adjustment_details"
        case TypeRefundDetails = "type_refund_details"
        case TypeReleaseAdjustmentDetails = "type_release_adjustment_details"
        case TypeReserveHoldDetails = "type_reserve_hold_details"
        case TypeReserveReleaseDetails = "type_reserve_release_details"
        case TypeSquareCapitalPaymentDetails = "type_square_capital_payment_details"
        case TypeSquareCapitalReversedPaymentDetails = "type_square_capital_reversed_payment_details"
        case TypeTaxOnFeeDetails = "type_tax_on_fee_details"
        case TypeThirdPartyFeeDetails = "type_third_party_fee_details"
        case TypeThirdPartyFeeRefundDetails = "type_third_party_fee_refund_details"
    }
}
