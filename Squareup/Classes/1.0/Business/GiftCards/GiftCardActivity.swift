//
//  GiftCardActivity.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

/// - GiftCardActivity: Represents an action performed on a gift card that affects its state or balance.
/// A gift card activity contains information about a specific activity type. For example, a REDEEM activity includes a redeem_activity_details field that contains information about the redemption.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivity
open class GiftCardActivity: Codable {
    
    /// - Id: Read only The Square-assigned ID of the gift card activity
    public var Id: String?
    /// - type: The type of gift card activity.
    public var type: GiftCardActivityType?
    /// - LocationId: The ID of the business location where the activity occurred.
    public var LocationId: String?
    /// - CreatedAt: Read only The timestamp when the gift card activity was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - GiftCardId: The gift card ID. When creating a gift card activity, gift_card_id is not required if gift_card_gan is specified.
    public var GiftCardId: String?
    /// - GiftCardGan: The gift card account number (GAN). When creating a gift card activity, gift_card_gan is not required if gift_card_id is specified.
    public var GiftCardGan: String?
    /// - GiftCardBalanceMoney: Read only The final balance on the gift card after the action is completed.
    public var GiftCardBalanceMoney: Money?
    /// - LoadActivityDetails: Additional details about a LOAD activity, which is used to reload money onto a gift card.
    public var LoadActivityDetails: GiftCardActivityLoad?
    /// - ActivateActivityDetails: Additional details about an ACTIVATE activity, which is used to activate a gift card with an initial balance.
    public var ActivateActivityDetails: GiftCardActivityActivate?
    /// - RedeemActivityDetails: Additional details about a REDEEM activity, which is used to redeem a gift card for a purchase.
    /// For applications that process payments using the Square Payments API, Square creates a REDEEM activity that updates the gift card balance after the corresponding CreatePayment request is completed. Applications that use a custom payment processing system must call CreateGiftCardActivity to create the REDEEM activity.
    public var RedeemActivityDetails: GiftCardActivityRedeem?
    /// - ClearBalanceActivityDetails: Additional details about a CLEAR_BALANCE activity, which is used to set the balance of a gift card to zero.
    public var ClearBalanceActivityDetails: GiftCardActivityClearBalance?
    /// - DeactivateActivityDetails: Additional details about a DEACTIVATE activity, which is used to deactivate a gift card.
    public var DeactivateActivityDetails: GiftCardActivityDeactivate?
    /// - AdjustIncrementActivityDetails: Additional details about an ADJUST_INCREMENT activity, which is used to add money to a gift card outside of a typical ACTIVATE, LOAD, or REFUND activity flow.
    public var AdjustIncrementActivityDetails: GiftCardActivityAdjustIncrement?
    /// - AdjustDecrementActivityDetails: Additional details about an ADJUST_DECREMENT activity, which is used to deduct money from a gift card outside of a typical REDEEM activity flow.
    public var AdjustDecrementActivityDetails: GiftCardActivityAdjustDecrement?
    /// - RefundActivityDetails: Additional details about a REFUND activity, which is used to add money to a gift card when refunding a payment.
    /// For applications that process payments using the Square Payments API, Square creates a REFUND activity that updates the gift card balance after the corresponding RefundPayment request is completed. Applications that use a custom payment processing system must call CreateGiftCardActivity to create the REFUND activity.
    public var RefundActivityDetails: GiftCardActivityRefund?
    /// - UnlinkedActivityRefundActivityDetails: Additional details about an UNLINKED_ACTIVITY_REFUND activity. This activity is used to add money to a gift card when refunding a payment that was processed using a custom payment processing system and not linked to the gift card.
    public var UnlinkedActivityRefundActivityDetails: GiftCardActivityUnlinkedActivityRefund?
    /// - ImportActivityDetails: Read only Additional details about an IMPORT activity, which Square uses to import a third-party gift card with a balance.
    public var ImportActivityDetails: GiftCardActivityImport?
    /// - BlockActivityDetails: Read only Additional details about a BLOCK activity, which Square uses to temporarily block a gift card.
    public var BlockActivityDetails: GiftCardActivityBlock?
    /// - UnblockActivityDetails: Read only Additional details about an UNBLOCK activity, which Square uses to unblock a gift card.
    public var UnblockActivityDetails: GiftCardActivityUnblock?
    /// - ImportReversalActivityDetails: Read only Additional details about an IMPORT_REVERSAL activity, which Square uses to reverse the import of a third-party gift card.
    public var ImportReversalActivityDetails: GiftCardActivityImportReversal?
    /// - TransferBalanceToActivityDetails: Read only Additional details about a TRANSFER_BALANCE_TO activity, which Square uses to add money to a gift card as the result of a transfer from another gift card.
    public var TransferBalanceToActivityDetails: GiftCardActivityTransferBalanceTo?
    /// - TransferBalanceFromActivityDetails: Read only Additional details about a TRANSFER_BALANCE_FROM activity, which Square uses to deduct money from a gift as the result of a transfer to another gift card.
    public var TransferBalanceFromActivityDetails: GiftCardActivityTransferBalanceFrom?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case type = "type"
        case LocationId = "location_id"
        case CreatedAt = "created_at"
        case GiftCardId = "gift_card_id"
        case GiftCardGan = "gift_card_gan"
        case GiftCardBalanceMoney = "gift_card_balance_money"
        case LoadActivityDetails = "load_activity_details"
        case ActivateActivityDetails = "activate_activity_details"
        case RedeemActivityDetails = "redeem_activity_details"
        case ClearBalanceActivityDetails = "clear_balance_activity_details"
        case DeactivateActivityDetails = "deactivate_activity_details"
        case AdjustIncrementActivityDetails = "adjust_increment_activity_details"
        case AdjustDecrementActivityDetails = "adjust_decrement_activity_details"
        case RefundActivityDetails = "refund_activity_details"
        case UnlinkedActivityRefundActivityDetails = "unlinked_activity_refund_activity_details"
        case ImportActivityDetails = "import_activity_details"
        case BlockActivityDetails = "block_activity_details"
        case UnblockActivityDetails = "unblock_activity_details"
        case ImportReversalActivityDetails = "import_reversal_activity_details"
        case TransferBalanceToActivityDetails = "transfer_balance_to_activity_details"
        case TransferBalanceFromActivityDetails = "transfer_balance_from_activity_details"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.type = try container.decodeIfPresent(GiftCardActivityType.self, forKey: .type)
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        self.GiftCardId = try container.decodeIfPresent(String.self, forKey: .GiftCardId)
//        self.GiftCardGan = try container.decodeIfPresent(String.self, forKey: .GiftCardGan)
//        self.GiftCardBalanceMoney = try container.decodeIfPresent(Money.self, forKey: .GiftCardBalanceMoney)
//        self.LoadActivityDetails = try container.decodeIfPresent(GiftCardActivityLoad.self, forKey: .LoadActivityDetails)
//        self.ActivateActivityDetails = try container.decodeIfPresent(GiftCardActivityActivate.self, forKey: .ActivateActivityDetails)
//        self.RedeemActivityDetails = try container.decodeIfPresent(GiftCardActivityRedeem.self, forKey: .RedeemActivityDetails)
//        self.ClearBalanceActivityDetails = try container.decodeIfPresent(GiftCardActivityClearBalance.self, forKey: .ClearBalanceActivityDetails)
//        self.DeactivateActivityDetails = try container.decodeIfPresent(GiftCardActivityDeactivate.self, forKey: .DeactivateActivityDetails)
//        self.AdjustIncrementActivityDetails = try container.decodeIfPresent(GiftCardActivityAdjustIncrement.self, forKey: .AdjustIncrementActivityDetails)
//        self.AdjustDecrementActivityDetails = try container.decodeIfPresent(GiftCardActivityAdjustDecrement.self, forKey: .AdjustDecrementActivityDetails)
//        self.RefundActivityDetails = try container.decodeIfPresent(GiftCardActivityRefund.self, forKey: .RefundActivityDetails)
//        self.UnlinkedActivityRefundActivityDetails = try container.decodeIfPresent(GiftCardActivityUnlinkedActivityRefund.self, forKey: .UnlinkedActivityRefundActivityDetails)
//        self.ImportActivityDetails = try container.decodeIfPresent(GiftCardActivityImport.self, forKey: .ImportActivityDetails)
//        self.BlockActivityDetails = try container.decodeIfPresent(GiftCardActivityBlock.self, forKey: .BlockActivityDetails)
//        self.UnblockActivityDetails = try container.decodeIfPresent(GiftCardActivityUnblock.self, forKey: .UnblockActivityDetails)
//        self.ImportReversalActivityDetails = try container.decodeIfPresent(GiftCardActivityImportReversal.self, forKey: .ImportReversalActivityDetails)
//        self.TransferBalanceToActivityDetails = try container.decodeIfPresent(GiftCardActivityTransferBalanceTo.self, forKey: .TransferBalanceToActivityDetails)
//        self.TransferBalanceFromActivityDetails = try container.decodeIfPresent(GiftCardActivityTransferBalanceFrom.self, forKey: .TransferBalanceFromActivityDetails)
//    }
}
