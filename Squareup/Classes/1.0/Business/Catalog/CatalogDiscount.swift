//
//  CatalogDiscount.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogDiscount: CatalogDiscount
/// https://developer.squareup.com/reference/square/objects/CatalogDiscount
open class CatalogDiscount: Codable {
    
    /// - Name: The discount name. This is a searchable attribute for use in applicable query filters, and its value length is of Unicode code points.  Max Length 255.
    public var Name: String?
    /// - DiscountType: Indicates whether the discount is a fixed amount or percentage, or entered at the time of sale.
    public var DiscountType: CatalogDiscountType?
    /// - Percentage: The percentage of the discount as a string representation of a decimal number, using a . as the decimal separator and without a % sign. A value of 7.5 corresponds to 7.5%. Specify a percentage of 0 if discount_type is VARIABLE_PERCENTAGE. Do not use this field for amount-based or variable discounts.
    public var Percentage: String?
    /// - AmountMoney: The amount of the discount. Specify an amount of 0 if discount_type is VARIABLE_AMOUNT. Do not use this field for percentage-based or variable discounts.
    public var AmountMoney: Money?
    /// - PinRequired: Indicates whether a mobile staff member needs to enter their PIN to apply the discount to a payment in the Square Point of Sale app.
    public var PinRequired: Bool?
    /// - LabelColor: The color of the discount display label in the Square Point of Sale app. This must be a valid hex color code.
    public var LabelColor: String?
    /// - ModifyTaxBasis: Indicates whether this discount should reduce the price used to calculate tax.
    ///
    /// Most discounts should use MODIFY_TAX_BASIS. However, in some circumstances taxes must be calculated based on an item's price, ignoring a particular discount. For example, in many US jurisdictions, a manufacturer coupon or instant rebate reduces the price a customer pays but does not reduce the sale price used to calculate how much sales tax is due. In this case, the discount representing that manufacturer coupon should have DO_NOT_MODIFY_TAX_BASIS for this field.
    ///
    /// If you are unsure whether you need to use this field, consult your tax professional.
    public var ModifyTaxBasis: CatalogDiscountModifyTaxBasis?
    /// - MaximumAmountMoney: For a percentage discount, the maximum absolute value of the discount. For example, if a 50% discount has a maximum_amount_money of $20, a $100 purchase will yield a $20 discount, not a $50 discount.
    public var MaximumAmountMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case DiscountType = "discount_type"
        case Percentage = "percentage"
        case AmountMoney = "amount_money"
        case PinRequired = "pin_required"
        case LabelColor = "label_color"
        case ModifyTaxBasis = "modify_tax_basis"
        case MaximumAmountMoney = "maximum_amount_money"
    }
}
