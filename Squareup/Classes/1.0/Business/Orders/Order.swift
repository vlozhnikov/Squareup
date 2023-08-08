//
//  Order.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

/// - Order: Contains all information related to a single order to process with Square, including line items that specify the products to purchase.
/// Order objects also include information about any associated tenders, refunds, and returns.
/// All Connect V2 Transactions have all been converted to Orders including all associated itemization data.
/// https://developer.squareup.com/reference/square/objects/Order
open class Order: Codable {
    
    /// - Id: Read only The order's unique ID.
    public var Id: String?
    /// - LocationId: The ID of the seller location that this order is associated with.
    /// Min Length 1
    public var LocationId: String?
    /// - ReferenceId: A client-specified ID to associate an entity in another system with this order.
    /// Max Length 40
    public var ReferenceId: String?
    /// - Source: The origination details of the order.
    public var Source: OrderSource?
    /// - CustomerId:The ID of the customer associated with the order.
    /// You should specify a customer_id on the order (or the payment) to ensure that transactions are reliably linked to customers. Omitting this field might result in the creation of new instant profiles.
    /// Max Length 191
    public var CustomerId: String?
    /// - LineItems: The line items included in the order.
    public var LineItems: [OrderLineItem]?
    /// - Taxes: The list of all taxes associated with the order.
    ///
    /// Taxes can be scoped to either ORDER or LINE_ITEM. For taxes with LINE_ITEM scope, an OrderLineItemAppliedTax must be added to each line item that the tax applies to. For taxes with ORDER scope, the server generates an OrderLineItemAppliedTax for every line item.
    ///
    /// On reads, each tax in the list includes the total amount of that tax applied to the order.
    ///
    /// IMPORTANT: If LINE_ITEM scope is set on any taxes in this field, using the deprecated line_items.taxes field results in an error. Use line_items.applied_taxes instead.
    public var Taxes: [OrderLineItemTax]?
    /// - Discounts: The list of all discounts associated with the order.
    /// Discounts can be scoped to either ORDER or LINE_ITEM. For discounts scoped to LINE_ITEM, an OrderLineItemAppliedDiscount must be added to each line item that the discount applies to. For discounts with ORDER scope, the server generates an OrderLineItemAppliedDiscount for every line item.
    ///
    /// IMPORTANT: If LINE_ITEM scope is set on any discounts in this field, using the deprecated line_items.discounts field results in an error. Use line_items.applied_discounts instead.
    public var Discounts: [OrderLineItemDiscount]?
    /// - ServiceCharges: A list of service charges applied to the order.
    public var ServiceCharges: [OrderServiceCharge]?
    /// - Fulfillments: Details about order fulfillment.
    /// Orders can only be created with at most one fulfillment. However, orders returned by the API might contain multiple fulfillments.
    public var Fulfillments: [Fulfillment]?
    /// - Returns: Read only A collection of items from sale orders being returned in this one. Normally part of an itemized return or exchange. There is exactly one Return object per sale Order being referenced.
    public var Returns: [OrderReturn]?
    /// - ReturnAmounts: Read only The rollup of the returned money amounts.
    public var ReturnAmounts: OrderMoneyAmounts?
    /// - NetAmounts: Read only The net money amounts (sale money - return money).
    public var NetAmounts: OrderMoneyAmounts?
    /// - RoundingAdjustment: Read only A positive rounding adjustment to the total of the order. This adjustment is commonly used to apply cash rounding when the minimum unit of account is smaller than the lowest physical denomination of the currency.
    public var RoundingAdjustment: OrderRoundingAdjustment?
    /// - Tenders:
    public var Tenders: [Tender]?
    /// - Refunds: Read only The refunds that are part of this order.
    public var Refunds: [Refund]?
    /// - Metadata: Application-defined data attached to this order. Metadata fields are intended to store descriptive references or associations with an entity in another system or store brief information about the object. Square does not process this field; it only stores and returns it in relevant API calls. Do not use metadata to store any sensitive information (such as personally identifiable information or card details).
    /// Keys written by applications must be 60 characters or less and must be in the character set [a-zA-Z0-9_-]. Entries can also include metadata generated by Square. These keys are prefixed with a namespace, separated from the key with a ':' character.
    ///
    /// Values have a maximum length of 255 characters.
    ///
    /// An application can have up to 10 entries per metadata field.
    ///
    /// Entries written by applications are private and can only be read or modified by the same application.
    ///
    /// For more information, see Metadata.
    public var Metadata: [String: String]?
    /// - CreatedAt: Read only The timestamp for when the order was created, in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp for when the order was last updated, in RFC 3339 format (for example, "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    /// - ClosedAt: Read only The timestamp for when the order reached a terminal state, in RFC 3339 format (for example "2016-09-04T23:59:33.123Z").
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var ClosedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var ClosedAt: Date?
    /// - State: The current state of the order.
    public var State: OrderState?
    /// - Version: The version number, which is incremented each time an update is committed to the order. Orders not created through the API do not include a version number and therefore cannot be updated.
    public var Version: Int?
    /// - TotalMoney: Read only The total amount of money to collect for the order.
    public var TotalMoney: Money?
    /// - TotalTaxMoney: Read only The total amount of tax money to collect for the order.
    public var TotalTaxMoney: Money?
    /// - TotalDiscountMoney: Read only The total amount of discount money to collect for the order.
    public var TotalDiscountMoney: Money?
    /// - TotalTipMoney: Read only The total amount of tip money to collect for the order.
    public var TotalTipMoney: Money?
    /// - TotalServiceChargeMoney: Read only The total amount of money collected in service charges for the order.
    /// Note: total_service_charge_money is the sum of applied_money fields for each individual service charge. Therefore, total_service_charge_money only includes inclusive tax amounts, not additive tax amounts.
    public var TotalServiceChargeMoney: Money?
    /// - TicketName: A short-term identifier for the order (such as a customer first name, table number, or auto-generated order number that resets daily).
    /// Max Length 30
    public var TicketName: String?
    /// - PricingOptions: Pricing options for an order. The options affect how the order's price is calculated. They can be used, for example, to apply automatic price adjustments that are based on preconfigured pricing rules.
    public var PricingOptions: OrderPricingOptions?
    /// - Rewards: Read only A set-like list of Rewards that have been added to the Order.
    public var Rewards: [OrderReward]?
    /// - NetAmountDueMoney: Read only The net amount of money due on the order.
    public var NetAmountDueMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case LocationId = "location_id"
        case ReferenceId = "reference_id"
        case Source = "source"
        case CustomerId = "CustomerId"
        case LineItems = "line_items"
        case Taxes = "taxes"
        case Discounts = "discounts"
        case ServiceCharges = "service_charges"
        case Fulfillments = "fulfillments"
        case Returns = "returns"
        case ReturnAmounts = "return_amounts"
        case NetAmounts = "net_amounts"
        case RoundingAdjustment = "rounding_adjustment"
        case Tenders = "tenders"
        case Refunds = "refunds"
        case Metadata = "metadata"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case ClosedAt = "closed_at"
        case State = "state"
        case Version = "version"
        case TotalMoney = "total_money"
        case TotalTaxMoney = "total_tax_money"
        case TotalDiscountMoney = "total_discount_money"
        case TotalTipMoney = "total_tip_money"
        case TotalServiceChargeMoney = "total_service_charge_money"
        case TicketName = "ticket_name"
        case PricingOptions = "pricing_options"
        case Rewards = "rewards"
        case NetAmountDueMoney = "net_amount_due_money"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.ReferenceId = try container.decodeIfPresent(String.self, forKey: .ReferenceId)
//        self.Source = try container.decodeIfPresent(OrderSource.self, forKey: .Source)
//        self.CustomerId = try container.decodeIfPresent(String.self, forKey: .CustomerId)
//        self.LineItems = try container.decodeIfPresent([OrderLineItem].self, forKey: .LineItems)
//        self.Taxes = try container.decodeIfPresent([OrderLineItemTax].self, forKey: .Taxes)
//        self.Discounts = try container.decodeIfPresent([OrderLineItemDiscount].self, forKey: .Discounts)
//        self.ServiceCharges = try container.decodeIfPresent([OrderServiceCharge].self, forKey: .ServiceCharges)
//        self.Fulfillments = try container.decodeIfPresent([Fulfillment].self, forKey: .Fulfillments)
//        self.Returns = try container.decodeIfPresent([OrderReturn].self, forKey: .Returns)
//        self.ReturnAmounts = try container.decodeIfPresent(OrderMoneyAmounts.self, forKey: .ReturnAmounts)
//        self.NetAmounts = try container.decodeIfPresent(OrderMoneyAmounts.self, forKey: .NetAmounts)
//        self.RoundingAdjustment = try container.decodeIfPresent(OrderRoundingAdjustment.self, forKey: .RoundingAdjustment)
//        self.Tenders = try container.decodeIfPresent([Tender].self, forKey: .Tenders)
//        self.Refunds = try container.decodeIfPresent([Refund].self, forKey: .Refunds)
//        self.Metadata = try container.decodeIfPresent([String: String].self, forKey: .Metadata)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ClosedAt), !dateString.isEmpty {
//            self.ClosedAt = try dateString.decode_RFC3339_Date(container, forKey: .ClosedAt)
//        }
//        self.State = try container.decodeIfPresent(OrderState.self, forKey: .State)
//        self.Version = try container.decodeIfPresent(Int.self, forKey: .Version)
//        self.TotalMoney = try container.decodeIfPresent(Money.self, forKey: .TotalMoney)
//        self.TotalTaxMoney = try container.decodeIfPresent(Money.self, forKey: .TotalTaxMoney)
//        self.TotalDiscountMoney = try container.decodeIfPresent(Money.self, forKey: .TotalDiscountMoney)
//        self.TotalTipMoney = try container.decodeIfPresent(Money.self, forKey: .TotalTipMoney)
//        self.TotalServiceChargeMoney = try container.decodeIfPresent(Money.self, forKey: .TotalServiceChargeMoney)
//        self.TicketName = try container.decodeIfPresent(String.self, forKey: .TicketName)
//        self.PricingOptions = try container.decodeIfPresent(OrderPricingOptions.self, forKey: .PricingOptions)
//        self.Rewards = try container.decodeIfPresent([OrderReward].self, forKey: .Rewards)
//        self.NetAmountDueMoney = try container.decodeIfPresent(Money.self, forKey: .NetAmountDueMoney)
//    }
}
