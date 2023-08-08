//
//  OrderReturnServiceCharge.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - OrderReturnServiceCharge: Represents the service charge applied to the original order.
/// https://developer.squareup.com/reference/square/objects/OrderReturnServiceCharge
open class OrderReturnServiceCharge: Codable {
    
    /// - UID: A unique ID that identifies the return service charge only within this order.
    /// Max Length 60
    public var UID: String?
    /// - SourceServiceChargeUid: The service charge uid from the order containing the original service charge. source_service_charge_uid is null for unlinked returns.
    /// Max Length 60
    public var SourceServiceChargeUid: String?
    /// - Name: The name of the service charge.
    /// Max Length 255
    public var Name: String?
    /// - CatalogObjectId: The catalog object ID of the associated OrderServiceCharge.
    /// Max Length 192
    public var CatalogObjectId: String?
    /// - CatalogVersion: The version of the catalog object that this service charge references.
    public var CatalogVersion: Int?
    /// - Percentage: The percentage of the service charge, as a string representation of a decimal number. For example, a value of "7.25" corresponds to a percentage of 7.25%.
    /// Either percentage or amount_money should be set, but not both.
    /// Max Length 10
    public var Percentage: String?
    /// - AmountMoney: The amount of a non-percentage-based service charge.
    /// Either percentage or amount_money should be set, but not both.
    public var AmountMoney: Money?
    /// - AppliedMoney: Read only The amount of money applied to the order by the service charge, including any inclusive tax amounts, as calculated by Square.
    /// For fixed-amount service charges, applied_money is equal to amount_money.
    /// For percentage-based service charges, applied_money is the money calculated using the percentage.
    public var AppliedMoney: Money?
    /// - TotalMoney: Read only The total amount of money to collect for the service charge.
    /// NOTE: If an inclusive tax is applied to the service charge, total_money does not equal applied_money plus total_tax_money because the inclusive tax amount is already included in both applied_money and total_tax_money.
    public var TotalMoney: Money?
    /// - TotalTaxMoney: Read only The total amount of tax money to collect for the service charge.
    public var TotalTaxMoney: Money?
    /// - CalculationPhase: Read only The calculation phase after which to apply the service charge.
    public var CalculationPhase: OrderServiceChargeCalculationPhase?
    /// - Taxable: Indicates whether the surcharge can be taxed. Service charges calculated in the TOTAL_PHASE cannot be marked as taxable.
    public var Taxable: Bool?
    /// - AppliedTaxes: The list of references to OrderReturnTax entities applied to the OrderReturnServiceCharge. Each OrderLineItemAppliedTax has a tax_uid that references the uid of a top-level OrderReturnTax that is being applied to the OrderReturnServiceCharge. On reads, the applied amount is populated.
    public var AppliedTaxes: [OrderLineItemAppliedTax]?
    /// - TreatmentType: Read only The treatment type of the service charge
    public var TreatmentType: OrderServiceChargeTreatmentType?
    /// - Scope: Indicates the level at which the apportioned service charge applies. For ORDER scoped service charges, Square generates references in applied_service_charges on all order line items that do not have them. For LINE_ITEM scoped service charges, the service charge only applies to line items with a service charge reference in their applied_service_charges field.
    /// This field is immutable. To change the scope of an apportioned service charge, you must delete the apportioned service charge and re-add it as a new apportioned service charge.
    public var Scope: OrderServiceChargeScope?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case SourceServiceChargeUid = "source_service_charge_uid"
        case Name = "name"
        case CatalogObjectId = "catalog_object_id"
        case CatalogVersion = "catalog_version"
        case Percentage = "percentage"
        case AmountMoney = "amount_money"
        case AppliedMoney = "applied_money"
        case TotalMoney = "total_money"
        case TotalTaxMoney = "total_tax_money"
        case CalculationPhase = "calculation_phase"
        case Taxable = "taxable"
        case AppliedTaxes = "applied_taxes"
        case TreatmentType = "treatment_type"
        case Scope = "scope"
    }
}
