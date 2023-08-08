//
//  Enums.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// -CatalogObjectType: Possible types of CatalogObjects returned from the catalog, each containing type-specific properties in the *_data field corresponding to the specfied object type.
/// https://developer.squareup.com/reference/square/enums/CatalogObjectType
public enum CatalogObjectType: String, Codable {
    /// - Item: The CatalogObject instance is of the CatalogItem type and represents an item. The item-specific data must be set on the item_data field.
    case Item = "ITEM"
    /// - Image: The CatalogObject instance is of the CatalogImage type and represents an image. The image-specific data must be set on the image_data field.
    case Image = "IMAGE"
    /// - Category: The CatalogObject instance is of the CatalogCategory type and represents a category. The category-specific data must be set on the category_data field.
    case Category = "CATEGORY"
    /// - ItemVariation: The CatalogObject instance is of the CatalogItemVariation type and represents an item variation, also referred to as variation. The item variation-specific data must be set on the item_variation_data field.
    case ItemVariation = "ITEM_VARIATION"
    /// - Tax: The CatalogObject instance is of the CatalogTax type and represents a tax. The tax-specific data must be set on the tax_data field.
    case Tax = "TAX"
    /// - Discount: The CatalogObject instance is of the CatalogDiscount type and represents a discount. The discount-specific data must be set on the discount_data field.
    case Discount = "DISCOUNT"
    /// - ModifierList: The CatalogObject instance is of the CatalogModifierList type and represents a modifier list. The modifier-list-specific data must be set on the modifier_list_data field.
    case ModifierList = "MODIFIER_LIST"
    /// - Modifier: The CatalogObject instance is of the CatalogModifier type and represents a modifier. The modifier-specific data must be set on the modifier_data field.
    case Modifier = "MODIFIER"
    /// - PricingRule: The CatalogObject instance is of the CatalogPricingRule type and represents a pricing rule. The pricing-rule-specific data must be set on the pricing_rule_data field.
    case PricingRule = "PRICING_RULE"
    /// - ProductSet: The CatalogObject instance is of the CatalogProductSet type and represents a product set. The product-set-specific data will be stored in the product_set_data field.
    case ProductSet = "PRODUCT_SET"
    /// - TimePeriod: The CatalogObject instance is of the CatalogTimePeriod type and represents a time period. The time-period-specific data must be set on the time_period_data field.
    case TimePeriod = "TIME_PERIOD"
    /// - MeasurementUnit: The CatalogObject instance is of the CatalogMeasurementUnit type and represents a measurement unit specifying the unit of measure and precision in which an item variation is sold. The measurement-unit-specific data must set on the measurement_unit_data field.
    case MeasurementUnit = "MEASUREMENT_UNIT"
    /// - ItemOption: The CatalogObject instance is of the CatalogItemOption type and represents a list of options (such as a color or size of a T-shirt) that can be assigned to item variations. The item-option-specific data must be on the item_option_data field.
    case ItemOption = "ITEM_OPTION"
    /// - ItemOptionValue: The CatalogObject instance is of the CatalogItemOptionValue type and represents a value associated with one or more item options. For example, an item option of "Size" may have item option values such as "Small" or "Medium". The item-option-value-specific data must be on the item_option_value_data field.
    case ItemOptionValue = "ITEM_OPTION_VAL"
    /// - CustomAttributeDefinition: The CatalogObject instance is of the CatalogCustomAttributeDefinition type and represents the definition of a custom attribute. The custom-attribute-definition-specific data must be set on the custom_attribute_definition_data field.
    case CustomAttributeDefinition = "CUSTOM_ATTRIBUTE_DEFINITION"
    /// - QuickAmountsSettings: The CatalogObject instance is of the CatalogQuickAmountsSettings type and represents settings to configure preset charges for quick payments at each location. For example, a location may have a list of both AUTO and MANUAL quick amounts that are set to DISABLED. The quick-amounts-settings-specific data must be set on the quick_amounts_settings_data field.
    case QuickAmountsSettings = "QUICK_AMOUNTS_SETTINGS"
    /// - SubscriptionPlan: The CatalogObject instance is of the CatalogSubscriptionPlan type and represents a subscription plan. The subscription plan specific data must be stored on the subscription_plan_data field.
    case SubscriptionPlan = "SUBSCRIPTION_PLAN"
}

/// - CatalogCustomAttributeDefinitionType: Defines the possible types for a custom attribute.
/// https://developer.squareup.com/reference/square/enums/CatalogCustomAttributeDefinitionType
public enum CatalogCustomAttributeDefinitionType: String, Codable {
    /// - String: A free-form string containing up to 255 characters.
    case String = "STRING"
    /// - Boolend: A true or false value.
    case Boolend = "BOOLEAN"
    /// - Number: A decimal string representation of a number. Can support up to 5 digits after the decimal point.
    case Number = "NUMBER"
    /// - Selection: One or more choices from allowed_selections.
    case Selection = "SELECTION"
}

/// - CatalogPricingType: Indicates whether the price of a CatalogItemVariation should be entered manually at the time of sale.
/// https://developer.squareup.com/reference/square/enums/CatalogPricingType
public enum CatalogPricingType: String, Codable {
    /// - FixedPricing: The catalog item variation's price is fixed.
    case FixedPricing = "FIXED_PRICING"
    /// - VariablePricing: The catalog item variation's price is entered at the time of sale.
    case VariablePricing = "VARIABLE_PRICING"
}

/// - InventoryAlertType: Indicates whether Square should alert the merchant when the inventory quantity of a CatalogItemVariation is low.
/// https://developer.squareup.com/reference/square/enums/InventoryAlertType
public enum InventoryAlertType: String, Codable {
    /// - None: The variation does not display an alert.
    case None = "NONE"
    /// - LowQuantity: The variation generates an alert when its quantity is low.
    case LowQuantity = "LOW_QUANTITY"
}

/// - CatalogItemProductType: The type of a CatalogItem.
/// Connect V2 only allows the creation of REGULAR or APPOINTMENTS_SERVICE items.
/// https://developer.squareup.com/reference/square/enums/CatalogItemProductType
public enum CatalogItemProductType: String, Codable {
    /// - Reqular: An ordinary item.
    case Reqular = "REGULAR"
    /// - GiftCard: Deprecated
    /// A Square gift card.
    case GiftCard = "GIFT_CARD"
    /// - AppointmentsService: A service that can be booked using the Square Appointments app.
    case AppointmentsService = "APPOINTMENTS_SERVICE"
}

/// -TaxCalculationPhase: When to calculate the taxes due on a cart.
/// https://developer.squareup.com/reference/square/enums/TaxCalculationPhase
public enum TaxCalculationPhase: String, CaseIterable, Codable {
    /// - TaxSubtotalPhase: The fee is calculated based on the payment's subtotal.
    case TaxSubtotalPhase = "TAX_SUBTOTAL_PHASE"
    /// - TaxTotoalPhase: The fee is calculated based on the payment's total.
    case TaxTotalPhase = "TAX_TOTAL_PHASE"
}

/// -TaxInclusionType: Whether to the tax amount should be additional to or included in the CatalogItem price.
/// https://developer.squareup.com/reference/square/enums/TaxInclusionType
public enum TaxInclusionType: String, CaseIterable, Codable {
    /// - Additive: The tax is an additive tax. The tax amount is added on top of the CatalogItemVariation price. For example, a $1.00 item with a 10% additive tax would have a total cost to the buyer of $1.10.
    case Additive = "ADDITIVE"
    /// - Inclusive: The tax is an inclusive tax. The tax amount is included in the CatalogItemVariation price. For example, a $1.00 item with a 10% inclusive tax would have a total cost to the buyer of $1.00, with $0.91 (91 cents) of that total being the cost of the item and $0.09 (9 cents) being tax.
    case Inclusive = "INCLUSIVE"
    
    var friendlyName: String {
        return self.rawValue
    }
}

/// CatalogDiscountType: How to apply a CatalogDiscount to a CatalogItem.
/// https://developer.squareup.com/reference/square/enums/CatalogDiscountType
public enum CatalogDiscountType: String, Codable {
    /// - FixedPercentage: Apply the discount as a fixed percentage (e.g., 5%) off the item price.
    case FixedPercentage = "FIXED_PERCENTAGE"
    /// - FixedAmound: Apply the discount as a fixed amount (e.g., $1.00) off the item price.
    case FixedAmound = "FIXED_AMOUNT"
    /// - VariablePercentage: Apply the discount as a variable percentage off the item price. The percentage will be specified at the time of sale.
    case VariablePercentage = "VARIABLE_PERCENTAGE"
    /// - VariableAmound: Apply the discount as a variable amount off the item price. The amount will be specified at the time of sale.
    case VariableAmound = "VARIABLE_AMOUNT"
}

/// -CatalogDiscountModifyTaxBasis:
// https://developer.squareup.com/reference/square/enums/CatalogDiscountModifyTaxBasis
public enum CatalogDiscountModifyTaxBasis: String, Codable {
    /// -ModifyTaxBasis: Application of the discount will modify the tax basis.
    case ModifyTaxBasis = "MODIFY_TAX_BASIS"
    /// - DoNotModifyTaxBasis: Application of the discount will not modify the tax basis.
    case DoNotModifyTaxBasis = "DO_NOT_MODIFY_TAX_BASIS"
}


/// - CatalogModifierListSelectionType: Indicates whether a CatalogModifierList supports multiple selections.
/// https://developer.squareup.com/reference/square/enums/CatalogModifierListSelectionType
public enum CatalogModifierListSelectionType: String, Codable {
    /// - Single: Indicates that a CatalogModifierList allows only a single CatalogModifier to be selected.
    case Single = "SINGLE"
    /// - Multiple: Indicates that a CatalogModifierList allows multiple CatalogModifier to be selected.
    case Multiple = "MULTIPLE"
}

/// - ExcludeStrategy: Indicates which products matched by a CatalogPricingRule will be excluded if the pricing rule uses an exclude set.
/// https://developer.squareup.com/reference/square/enums/ExcludeStrategy
public enum ExcludeStrategy: String, Codable {
    /// - LeastExpensive: The least expensive matched products are excluded from the pricing. If the pricing rule is set to exclude one product and multiple products in the match set qualify as least expensive, then one will be excluded at random.
    ///
    /// Excluding the least expensive product gives the best discount value to the buyer.
    case LeastExpensive = "LEAST_EXPENSIVE"
    /// - MostExpensive: The most expensive matched product is excluded from the pricing rule. If multiple products have the same price and all qualify as least expensive, one will be excluded at random.
    ///
    /// This guarantees that the most expensive product is purchased at full price.
    case MostExpensive = "MOST_EXPENSIVE"
}

/// -MeasurementUnitArea: Unit of area used to measure a quantity.
/// https://developer.squareup.com/reference/square/enums/MeasurementUnitArea
public enum MeasurementUnitArea: String, Codable {
    /// - ImperialAcre: The area is measured in acres.
    case ImperialAcre = "IMPERIAL_ACRE"
    /// - ImperialSquareInch: The area is measured in square inches.
    case ImperialSquareInch = "IMPERIAL_SQUARE_INCH"
    /// - ImperialSquareFoot: The area is measured in square feet.
    case ImperialSquareFoot = "IMPERIAL_SQUARE_FOOT"
    /// - ImperialSquareYard: The area is measured in square yards.
    case ImperialSquareYard = "IMPERIAL_SQUARE_YARD"
    /// - ImperialSquareMile: The area is measured in square miles.
    case ImperialSquareMile = "IMPERIAL_SQUARE_MILE"
    /// - MetricSquareCentimeter: The area is measured in square centimeters.
    case MetricSquareCentimeter = "METRIC_SQUARE_CENTIMETER"
    /// - MetricSquareMeter: The area is measured in square meters.
    case MetricSquareMeter = "METRIC_SQUARE_METER"
    /// - MetricSquareKilometer: The area is measured in square kilometers.
    case MetricSquareKilometer = "METRIC_SQUARE_KILOMETER"
}

/// -MeasurementUnitLength: The unit of length used to measure a quantity.
/// https://developer.squareup.com/reference/square/enums/MeasurementUnitLength
public enum MeasurementUnitLength: String, Codable {
    /// - ImperialInch: The length is measured in inches.
    case ImperialInch = "IMPERIAL_INCH"
    /// - ImperialFoot: The length is measured in feet.
    case ImperialFoot = "IMPERIAL_FOOT"
    /// - ImperialYard: The length is measured in yards.
    case ImperialYard = "IMPERIAL_YARD"
    /// - ImperialMile: The length is measured in miles.
    case ImperialMile = "IMPERIAL_MILE"
    /// - MetricMillimeter: The length is measured in millimeters.
    case MetricMillimeter = "METRIC_MILLIMETER"
    /// - MetricCentimeter: The length is measured in centimeters.
    case MetricCentimeter = "METRIC_CENTIMETER"
    /// - MetricMeter: The length is measured in meters.
    case MetricMeter = "METRIC_METER"
    /// - MetricKilometer: The length is measured in kilometers.
    case MetricKilometer = "METRIC_KILOMETER"
}

/// - MeasurementUnitVolume: The unit of volume used to measure a quantity.
/// https://developer.squareup.com/reference/square/enums/MeasurementUnitVolume
public enum MeasurementUnitVolume: String, Codable {
    /// - GenericFluidOunce: The volume is measured in ounces.
    case GenericFluidOunce = "GENERIC_FLUID_OUNCE"
    /// - GenericShot: The volume is measured in shots.
    case GenericShot = "GENERIC_SHOT"
    /// - GenericCup: The volume is measured in cups.
    case GenericCup = "GENERIC_CUP"
    /// - GenericPint: The volume is measured in pints.
    case GenericPint = "GENERIC_PINT"
    /// - GenericQuart: The volume is measured in quarts.
    case GenericQuart = "GENERIC_QUART"
    /// - GenericGallon: The volume is measured in gallons.
    case GenericGallon = "GENERIC_GALLON"
    /// - ImperialCubicInch: The volume is measured in cubic inches.
    case ImperialCubicInch = "IMPERIAL_CUBIC_INCH"
    /// - ImperialCubicFoot: The volume is measured in cubic feet.
    case ImperialCubicFoot = "IMPERIAL_CUBIC_FOOT"
    /// - ImperialCubicYard: The volume is measured in cubic yards.
    case ImperialCubicYard = "IMPERIAL_CUBIC_YARD"
    /// - MetricMillimeter: METRIC_MILLILITER
    case MetricMillimeter = "METRIC_MILLILITER"
    /// - MetricLiter: The volume is measured in metric liters.
    case MetricLiter = "METRIC_LITER"
}

/// -MeasurementUnitWeight: Unit of weight used to measure a quantity.
/// https://developer.squareup.com/reference/square/enums/MeasurementUnitWeight
public enum MeasurementUnitWeight: String, Codable {
    /// - ImperialWeightOunce: The weight is measured in ounces.
    case ImperialWeightOunce = "IMPERIAL_WEIGHT_OUNCE"
    /// - ImperialPound: The weight is measured in pounds.
    case ImperialPound = "IMPERIAL_POUND"
    /// - ImperialStone: The weight is measured in stones.
    case ImperialStone = "IMPERIAL_STONE"
    /// - MetricMilligram: The weight is measured in milligrams.
    case MetricMilligram = "METRIC_MILLIGRAM"
    /// - MetricGram: The weight is measured in grams.
    case MetricGram = "METRIC_GRAM"
    /// - MetricKilogram: The weight is measured in kilograms.
    case MetricKilogram = "METRIC_KILOGRAM"
}

/// -MeasurementUnitGeneric: The generic unit.
/// https://developer.squareup.com/reference/square/enums/MeasurementUnitGeneric
public enum MeasurementUnitGeneric: String, Codable {
    /// - Unit: The generic unit.
    case Unit = "UNIT"
}

/// - MeasurementUnitTime: Unit of time used to measure a quantity (a duration).
/// https://developer.squareup.com/reference/square/enums/MeasurementUnitTime
public enum MeasurementUnitTime: String, Codable {
    /// - GenericMillisecond: The time is measured in milliseconds.
    case GenericMillisecond = "GENERIC_MILLISECOND"
    /// - GenericSecond: The time is measured in seconds.
    case GenericSecond = "GENERIC_SECOND"
    /// - GenericMinute: The time is measured in minutes.
    case GenericMinute = "GENERIC_MINUTE"
    /// - GenericHour: The time is measured in hours.
    case GenericHour = "GENERIC_HOUR"
    /// - GenericDay: The time is measured in days.
    case GenericDay = "GENERIC_DAY"
}

/// - MeasurementUnitUnitType: Describes the type of this unit and indicates which field contains the unit information.
/// This is an ‘open’ enum.
/// https://developer.squareup.com/reference/square/enums/MeasurementUnitUnitType
public enum MeasurementUnitUnitType: String, Codable {
    /// - Custom: The unit details are contained in the custom_unit field.
    case Custom = "TYPE_CUSTOM"
    /// - Area: The unit details are contained in the area_unit field.
    case Area = "TYPE_AREA"
    /// - Length: The unit details are contained in the length_unit field.
    case Length = "TYPE_LENGTH"
    /// - Volume: The unit details are contained in the volume_unit field.
    case Volume = "TYPE_VOLUME"
    /// - Weight: The unit details are contained in the weight_unit field.
    case Weight = "TYPE_WEIGHT"
    /// - Generic: The unit details are contained in the generic_unit field.
    case Generic = "TYPE_GENERIC"
}

/// - SubscriptionCadence: Determines the billing cadence of a Subscription
/// https://developer.squareup.com/reference/square/enums/SubscriptionCadence
public enum SubscriptionCadence: String, Codable {
    /// - Daily: Once per day
    case Daily = "DAILY"
    /// - Weekly: Once per week
    case Weekly = "WEEKLY"
    /// - EveryTwoWeeks: Every two weeks
    case EveryTwoWeeks = "EVERY_TWO_WEEKS"
    /// - ThirtyDays: Once every 30 days
    case ThirtyDays = "THIRTY_DAYS"
    /// - SixtyDays: Once every 60 days
    case SixtyDays = "SIXTY_DAYS"
    /// - NinetyDays: Once every 90 days
    case NinetyDays = "NINETY_DAYS"
    /// - Monthly: Once per month
    case Monthly = "MONTHLY"
    /// - EveryTwoMonths: Once every two months
    case EveryTwoMonths = "EVERY_TWO_MONTHS"
    /// - Quarterly: Once every three months
    case Quarterly = "QUARTERLY"
    /// - EveryFourMonths: Once every four months
    case EveryFourMonths = "EVERY_FOUR_MONTHS"
    /// - EverySixMonths: Once every six months
    case EverySixMonths = "EVERY_SIX_MONTHS"
    /// - Annual: Once per year
    case Annual = "ANNUAL"
    /// - EveryTwoYears: Once every two years
    case EveryTwoYears = "EVERY_TWO_YEARS"
}

/// - Product: Indicates the Square product used to generate a change.
/// https://developer.squareup.com/reference/square/enums/Product
public enum Product: String, Codable {
    /// - SquarePos: Square Point of Sale application.
    case SquarePos = "SQUARE_POS"
    /// - ExternalApi: Square Connect APIs (for example, Orders API or Checkout API).
    case ExternalApi = "EXTERNAL_API"
    /// - Billing: A Square subscription (various products).
    case Billing = "BILLING"
    /// - Appointments: Square Appointments.
    case Appointments = "APPOINTMENTS"
    /// - Invoices: Square Invoices.
    case Invoices = "INVOICES"
    /// - OnlineStore: Square Online Store.
    case OnlineStore = "ONLINE_STORE"
    /// - Payroll: Square Payroll.
    case Payroll = "PAYROLL"
    /// - Dashboard: Square Dashboard.
    case Dashboard = "DASHBOARD"
    /// - ItemLibraryImport: Item Library Import.
    case ItemLibraryImport = "ITEM_LIBRARY_IMPORT"
    /// - Other: A Square product that does not match any other value.
    case Other = "OTHER"
}

/// - CatalogCustomAttributeDefinitionSellerVisibility: Defines the visibility of a custom attribute to sellers in Square client applications, Square APIs or in Square UIs (including Square Point of Sale applications and Square Dashboard).
/// https://developer.squareup.com/reference/square/enums/CatalogCustomAttributeDefinitionSellerVisibility
public enum CatalogCustomAttributeDefinitionSellerVisibility: String, Codable {
    /// - SellerVisibilityHidden: Sellers cannot read this custom attribute in Square client applications or Square APIs.
    case SellerVisibilityHidden = "SELLER_VISIBILITY_HIDDEN"
    /// - SellerVisibilityReadWriteValues: Sellers can read and write this custom attribute value in catalog objects, but cannot edit the custom attribute definition.
    case SellerVisibilityReadWriteValues = "SELLER_VISIBILITY_READ_WRITE_VALUES"
}

/// -CatalogCustomAttributeDefinitionAppVisibility: Defines the visibility of a custom attribute to applications other than their creating application.
/// https://developer.squareup.com/reference/square/enums/CatalogCustomAttributeDefinitionAppVisibility
public enum CatalogCustomAttributeDefinitionAppVisibility: String, Codable {
    /// - AppVisibilityHidden: Other applications cannot read this custom attribute.
    case AppVisibilityHidden = "APP_VISIBILITY_HIDDEN"
    /// - AppVisibilityReadOnly: Other applications can read this custom attribute definition and values.
    case AppVisibilityReadOnly = "APP_VISIBILITY_READ_ONLY"
    /// - AppVisibilityReadWriteValues: Other applications can read and write custom attribute values on objects. They can read but cannot edit the custom attribute definition.
    case AppVisibilityReadWriteValues = "APP_VISIBILITY_READ_WRITE_VALUES"
}

/// - CatalogQuickAmountsSettingsOption: Determines a seller's option on Quick Amounts feature.
/// https://developer.squareup.com/reference/square/enums/CatalogQuickAmountsSettingsOption
public enum CatalogQuickAmountsSettingsOption: String, Codable {
    /// - Disabled: Option for seller to disable Quick Amounts.
    case Disabled = "DISABLED"
    /// - Manual: Option for seller to choose manually created Quick Amounts.
    case Manual = "MANUAL"
    /// - Auto: Option for seller to choose automatically created Quick Amounts.
    case Auto = "AUTO"
}

/// - CatalogQuickAmountType: Determines the type of a specific Quick Amount.
/// https://developer.squareup.com/reference/square/enums/CatalogQuickAmountType
public enum CatalogQuickAmountType: String, Codable {
    /// - Manual: Quick Amount is created manually by the seller.
    case Manual = "QUICK_AMOUNT_TYPE_MANUAL"
    /// - Auto: Quick Amount is generated automatically by machine learning algorithms.
    case Auto = "QUICK_AMOUNT_TYPE_AUTO"
}

/// - SortOrder: The order (e.g., chronological or alphabetical) in which results from a request are returned.
/// https://developer.squareup.com/reference/square/enums/SortOrder
public enum SortOrder: String, Codable {
    /// - Desc: The results are returned in descending (e.g., newest-first or Z-A) order.
    case Desc = "DESC"
    /// - Asc: The results are returned in ascending (e.g., oldest-first or A-Z) order.
    case Asc = "ASC"
}

/// - SearchCatalogItemsRequestStockLevel: Defines supported stock levels of the item inventory.
/// https://developer.squareup.com/reference/square/enums/SearchCatalogItemsRequestStockLevel
public enum SearchCatalogItemsRequestStockLevel: String, Codable {
    /// -Out: The item inventory is empty.
    case Out = "OUT"
    /// - Low: The item inventory is low.
    case Low = "LOW"
}

/// - LocationCapability: The capabilities a location might have.
/// https://developer.squareup.com/reference/square/enums/LocationCapability
public enum LocationCapability: String, Codable {
    /// - CreditCardPprocessing: The capability to process credit card transactions with Square.
    case CreditCardPprocessing = "CREDIT_CARD_PROCESSING"
    /// - AutomaticTransfers: The capability to receive automatic transfers from Square.
    case AutomaticTransfers = "AUTOMATIC_TRANSFERS"
    /// - UnlinkedRefunds: The capability to process unlinked refunds with Square.
    case UnlinkedRefunds = "UNLINKED_REFUNDS"
}

/// - LocationStatus: A location's status.
/// https://developer.squareup.com/reference/square/enums/LocationStatus
public enum LocationStatus: String, Codable {
    /// - Active: A location that is active for business.
    case Active = "ACTIVE"
    /// - Inactive: A location that is not active for business. Inactive locations provide historical information. Hide inactive locations unless the user has requested to see them.
    case Inactive = "INACTIVE"
}

/// - LocationType: A location's type.
/// https://developer.squareup.com/reference/square/enums/LocationType
public enum LocationType: String, Codable {
    /// - Physical: A place of business with a physical location.
    case Physical = "PHYSICAL"
    /// - Mobile: A place of business that is mobile, such as a food truck or online store.
    case Mobile = "MOBILE"
}

/// - TaxIds: Identifiers for the location used by various governments for tax purposes.
/// https://developer.squareup.com/reference/square/objects/TaxIds
public enum TaxIds: String, Codable {
    /// - EuVat: The EU VAT number for this location. For example, IE3426675K. If the EU VAT number is present, it is well-formed and has been validated with VIES, the VAT Information Exchange System.
    case EuVat = "eu_vat"
    /// - FrSiret: The SIRET (Système d'Identification du Répertoire des Entreprises et de leurs Etablissements) number is a 14-digit code issued by the French INSEE. For example, 39922799000021.
    case FrSiret = "fr_siret"
    /// - FrNaf: The French government uses the NAF (Nomenclature des Activités Françaises) to display and track economic statistical data. This is also called the APE (Activite Principale de l’Entreprise) code. For example, 6910Z.
    case FrNaf = "fr_naf"
    /// - EsNif: The NIF (Numero de Identificacion Fiscal) number is a nine-character tax identifier used in Spain. If it is present, it has been validated. For example, 73628495A.
    case EsNif = "es_nif"
}

/// - DayOfWeek: Indicates the specific day of the week.
/// https://developer.squareup.com/reference/square/enums/DayOfWeek
public enum DayOfWeek: String, Codable, Comparable {
    case Sunday = "SUN"
    case Monday = "MON"
    case Tuesday = "TUE"
    case Wednesday = "WED"
    case Thursday = "THU"
    case Friday = "FRI"
    case Saturday = "SAT"
    case Unknown = "Unknown"
    
    var name: String {
        switch self {
        case .Saturday: return "Saturday"
        case .Sunday: return "Sunday"
        case .Monday: return "Monday"
        case .Tuesday: return "Tuesday"
        case .Wednesday: return "Wednesday"
        case .Thursday: return "Thursday"
        case .Friday: return "Friday"
        case .Unknown: return "Unknown"
        }
    }
    
    var intValue: Int {
        switch self {
        case .Saturday: return 0
        case .Sunday: return 1
        case .Monday: return 2
        case .Tuesday: return 3
        case .Wednesday: return 4
        case .Thursday: return 5
        case .Friday: return 6
        case .Unknown: return 7
        }
    }
    
    init?(rawValue: Int) {
        self = .Unknown
        if rawValue == 0 {
            self = .Saturday
        }
        else if rawValue == 1 {
            self = .Sunday
        }
        else if rawValue == 2 {
            self = .Monday
        }
        else if rawValue == 3 {
            self = .Tuesday
        }
        else if rawValue == 4 {
            self = .Wednesday
        }
        else if rawValue == 5 {
            self = .Thursday
        }
        else if rawValue == 6 {
            self = .Friday
        }
    }
    
    // MARK: Comparable

    public static func < (lhs: DayOfWeek, rhs: DayOfWeek) -> Bool {
        lhs.intValue < rhs.intValue
    }
}

/// - Weekday: The days of the week.
/// https://developer.squareup.com/reference/square/enums/Weekday
public enum Weekday: String, Codable {
    case Monday = "MON"
    case Tuesday = "TUE"
    case Wednesday = "WED"
    case Thursday = "THU"
    case Friday = "FRI"
    case Saturday = "SAT"
    case Sunday = "SUN"
}

/// - MerchantStatus:
/// https://developer.squareup.com/reference/square/enums/MerchantStatus
public enum MerchantStatus: String, Codable {
    /// - Active: A fully operational merchant account. The merchant can interact with Square products and APIs.
    case Active = "ACTIVE"
    /// - Inactive: A functionally limited merchant account. The merchant can only have limited interaction via Square APIs. The merchant cannot log in or access the seller dashboard.
    case Inactive = "INACTIVE"
}

/// - TeamMemberStatus: Enumerates the possible statuses the team member can have within a business.
/// https://developer.squareup.com/reference/square/enums/TeamMemberStatus
public enum TeamMemberStatus: String, Codable {
    /// - Active: The team member can sign in to Point of Sale and the Seller Dashboard.
    case Active = "ACTIVE"
    /// - Inactive: The team member can no longer sign in to Point of Sale or the Seller Dashboard, but the team member's sales reports remain available.
    case Inactive = "INACTIVE"
}

/// - TeamMemberAssignedLocationsAssignmentType: Enumerates the possible assignment types that the team member can have.
/// https://developer.squareup.com/reference/square/enums/TeamMemberAssignedLocationsAssignmentType
public enum TeamMemberAssignedLocationsAssignmentType: String, Codable {
    /// - AllCurrentAndFutureLocations: The team member is assigned to all current and future locations. The location_ids field is empty if the team member has this assignment type.
    case AllCurrentAndFutureLocations = "ALL_CURRENT_AND_FUTURE_LOCATIONS"
    /// - EcplicitLocations: The team member is assigned to an explicit subset of locations. The location_ids field is the list of locations that the team member is assigned to.
    case EcplicitLocations = "EXPLICIT_LOCATIONS"
}

/// - JobAssignmentPayType: Enumerates the possible pay types that a job can be assigned.
/// https://developer.squareup.com/reference/square/enums/JobAssignmentPayType
public enum JobAssignmentPayType: String, Codable {
    /// - None: The job does not have a defined pay type.
    case None = "NONE"
    /// - Hourly: The job pays an hourly rate.
    case Hourly = "HOURLY"
    /// - Salary: The job pays an annual salary.
    case Salary = "SALARY"
}

/// - BookingStatus: Supported booking statuses.
/// https://developer.squareup.com/reference/square/enums/BookingStatus
public enum BookingStatus: String, Codable {
    /// - Pending: An unaccepted booking. It is visible to both sellers and customers.
    case Pending = "PENDING"
    /// - CancelledByCustomer: A customer-cancelled booking. It is visible to both the seller and the customer.
    case CancelledByCustomer = "CANCELLED_BY_CUSTOMER"
    /// - CancelledBySeller: A seller-cancelled booking. It is visible to both the seller and the customer.
    case CancelledBySeller = "CANCELLED_BY_SELLER"
    /// - Declined: A declined booking. It had once been pending, but was then declined by the seller.
    case Declined = "DECLINED"
    /// - Accepted: An accepted booking agreed to or accepted by the seller.
    case Accepted = "ACCEPTED"
    /// - NoShow: A no-show booking. The booking was accepted at one time, but have now been marked as a no-show by the seller because the client either missed the booking or cancelled it without enough notice.
    case NoShow = "NO_SHOW"
}

/// - BusinessAppointmentSettingsBookingLocationType: Supported types of location where service is provided.
/// https://developer.squareup.com/reference/square/enums/BusinessAppointmentSettingsBookingLocationType
public enum BusinessAppointmentSettingsBookingLocationType: String, Codable {
    /// - BusinessLocation: The service is provided at a seller location.
    case BusinessLocation = "BUSINESS_LOCATION"
    /// - CustomerLocation: The service is provided at a customer location.
    case CustomerLocation = "CUSTOMER_LOCATION"
    /// - Phone: The service is provided over the phone.
    case Phone = "PHONE"
}

/// - BookingCreatorDetailsCreatorType: Supported types of a booking creator.
/// https://developer.squareup.com/reference/square/enums/BookingCreatorDetailsCreatorType
public enum BookingCreatorDetailsCreatorType: String, Codable {
    /// - TeamMember: The creator is of the seller type.
    case TeamMember = "TEAM_MEMBER"
    /// - Customer: The creator is of the buyer type.
    case Customer = "CUSTOMER"
}

/// - BookingBookingSource: Supported sources a booking was created from.
/// https://developer.squareup.com/reference/square/enums/BookingBookingSource
public enum BookingBookingSource: String, Codable {
    /// - FirstPartyMerchant: The booking was created by a seller from a Square Appointments application, such as the Square Appointments Dashboard or a Square Appointments mobile app.
    case FirstPartyMerchant = "FIRST_PARTY_MERCHANT"
    /// - FirtsPartyBuyer: The booking was created by a buyer from a Square Appointments application, such as Square Online Booking Site.
    case FirtsPartyBuyer = "FIRST_PARTY_BUYER"
    /// - ThirdPartyBuyer: The booking was created by a buyer created from a third-party application.
    case ThirdPartyBuyer = "THIRD_PARTY_BUYER"
    /// - Api: The booking was created by a seller or a buyer from the Square Bookings API.
    case Api = "API"
}

/// - BusinessBookingProfileCustomerTimezoneChoice: Choices of customer-facing time zone used for bookings.
/// https://developer.squareup.com/reference/square/enums/BusinessBookingProfileCustomerTimezoneChoice
public enum BusinessBookingProfileCustomerTimezoneChoice: String, Codable {
    /// - BusinessLocationTimezone: Use the time zone of the business location for bookings.
    case BusinessLocationTimezone = "BUSINESS_LOCATION_TIMEZONE"
    /// - CustomerChoice: Use the customer-chosen time zone for bookings.
    case CustomerChoice = "CUSTOMER_CHOICE"
}

/// - BusinessBookingProfileBookingPolicy: Policies for accepting bookings.
/// https://developer.squareup.com/reference/square/enums/BusinessBookingProfileBookingPolicy
public enum BusinessBookingProfileBookingPolicy: String, Codable {
    /// - AcceptAll: The seller accepts all booking requests automatically.
    case AcceptAll = "ACCEPT_ALL"
    /// - RequestAcceptance: The seller must accept requests to complete bookings.
    case RequestAcceptance = "REQUIRES_ACCEPTANCE"
}

/// - BusinessAppointmentSettingsAlignmentTime: Time units of a service duration for bookings.
/// https://developer.squareup.com/reference/square/enums/BusinessAppointmentSettingsAlignmentTime
public enum BusinessAppointmentSettingsAlignmentTime: String, Codable {
    /// - ServiceDuration: The service duration unit is one visit of a fixed time interval specified by the seller.
    case ServiceDuration = "SERVICE_DURATION"
    /// - QuarterHourly: The service duration unit is a 15-minute interval. Bookings can be scheduled every quarter hour.
    case QuarterHourly = "QUARTER_HOURLY"
    /// - HalfHourly: The service duration unit is a 30-minute interval. Bookings can be scheduled every half hour.
    case HalfHourly = "HALF_HOURLY"
    /// - Hourly: The service duration unit is a 60-minute interval. Bookings can be scheduled every hour.
    case Hourly = "HOURLY"
}

/// - BusinessAppointmentSettingsMaxAppointmentsPerDayLimitType: Types of daily appointment limits.
/// https://developer.squareup.com/reference/square/enums/BusinessAppointmentSettingsMaxAppointmentsPerDayLimitType
public enum BusinessAppointmentSettingsMaxAppointmentsPerDayLimitType: String, Codable {
    /// - PerTeamMember: The maximum number of daily appointments is set on a per team member basis.
    case PerTeamMember = "PER_TEAM_MEMBER"
    /// - PerLocation: The maximum number of daily appointments is set on a per location basis.
    case PerLocation = "PER_LOCATION"
}

/// - BusinessAppointmentSettingsCancellationPolicy: The category of the seller’s cancellation policy.
/// https://developer.squareup.com/reference/square/enums/BusinessAppointmentSettingsCancellationPolicy
public enum BusinessAppointmentSettingsCancellationPolicy: String, Codable {
    /// - CancellationTreatedAsnoShow: Cancellations are treated as no shows and may incur a fee as specified by cancellation_fee_money.
    case CancellationTreatedAsnoShow = "CANCELLATION_TREATED_AS_NO_SHOW"
    /// - CustomPolice: Cancellations follow the seller-specified policy that is described in free-form text and not enforced automatically by Square.
    case CustomPolice = "CUSTOM_POLICY"
}

/// - InventoryState: Indicates the state of a tracked item quantity in the lifecycle of goods
/// https://developer.squareup.com/reference/square/enums/InventoryState
public enum InventoryState: String, Codable {
    /// - Custom: The related quantity of items are in a custom state. READ-ONLY: the Inventory API cannot move quantities to or from this state.
    case Custom = "CUSTOM"
    /// - InStock: The related quantity of items are on hand and available for sale
    case InStock = "IN_STOCK"
    /// - Sold: The related quantity of items were sold as part of an itemized transaction. Quantities in the SOLD state are no longer tracked.
    case Sold = "SOLD"
    // - ReturnedByCustomer: The related quantity of items were returned through the Square Point of Sale application, but are not yet available for sale. READ-ONLY: the Inventory API cannot move quantities to or from this state.
    case ReturnedByCustomer = "RETURNED_BY_CUSTOMER"
    /// - ReservedForSale: The related quantity of items are on hand, but not currently available for sale. READ-ONLY: the Inventory API cannot move quantities to or from this state.
    case ReservedForSale = "RESERVED_FOR_SALE"
    /// - SoldOnline: The related quantity of items were sold online. READ-ONLY: the Inventory API cannot move quantities to or from this state.
    case SoldOnline = "SOLD_ONLINE"
    /// - OrderedFormVendor: The related quantity of items were ordered from a vendor but not yet received. READ-ONLY: the Inventory API cannot move quantities to or from this state.
    case OrderedFormVendor = "ORDERED_FROM_VENDOR"
    /// - ReceivedFromVendor: The related quantity of items were received from a vendor but are not yet available for sale. READ-ONLY: the Inventory API cannot move quantities to or from this state.
    case ReceivedFromVendor = "RECEIVED_FROM_VENDOR"
    /// - inTransitTo: Deprecated
    /// Replaced by IN_TRANSIT to represent quantities of items that are in transit between locations.
    case InTransitTo = "IN_TRANSIT_TO"
    /// - None: A placeholder indicating that the related quantity of items are not currently tracked in Square. Transferring quantities from the NONE state to a tracked state (e.g., IN_STOCK) introduces stock into the system.
    case None = "NONE"
    /// - Waste: The related quantity of items are lost or damaged and cannot be sold.
    case Waste = "WASTE"
    /// - UnlinkedReturn: The related quantity of items were returned but not linked to a previous transaction. Unlinked returns are not tracked in Square. Transferring a quantity from UNLINKED_RETURN to a tracked state (e.g., IN_STOCK) introduces new stock into the system.
    case UnlinkedReturn = "UNLINKED_RETURN"
    /// - Composed: Beta
    /// The related quantity of items that are part of a composition consisting one or more components.
    case Composed = "COMPOSED"
    /// - Decomposed: Beta
    /// The related quantity of items that are part of a component.
    case Decomposed = "DECOMPOSED"
    /// - SupportedByNewerVersion: Beta
    /// This state is not supported by this version of the Square API. We recommend that you upgrade the client to use the appropriate version of the Square API supporting this state.
    case SupportedByNewerVersion = "SUPPORTED_BY_NEWER_VERSION"
    /// - InTransit: The related quantity of items are in transit between locations. READ-ONLY: the Inventory API cannot currently be used to move quantities to or from this inventory state.
    case InTransit = "IN_TRANSIT"
}

/// - InventoryChangeType: Indicates how the inventory change was applied to a tracked product quantity.
/// https://developer.squareup.com/reference/square/enums/InventoryChangeType
public enum InventoryChangeType: String, Codable {
    /// - PhysycalCount: The change occurred as part of a physical count update.
    case PhysycalCount = "PHYSICAL_COUNT"
    /// - Adjustment: The change occurred as part of the normal lifecycle of goods (e.g., as an inventory adjustment).
    case Adjustment = "ADJUSTMENT"
    /// - Transfer: The change occurred as part of an inventory transfer.
    case Transfer = "TRANSFER"
}

/// - CustomerSortField: Specifies customer attributes as the sort key to customer profiles returned from a search.
/// https://developer.squareup.com/reference/square/enums/CustomerSortField
public enum CustomerSortField: String, Codable {
    /// - Default: Use the default sort key. By default, customers are sorted alphanumerically by concatenating their given_name and family_name. If neither name field is set, string comparison is performed using one of the remaining fields in the following order: company_name, email, phone_number.
    case Default = "DEFAULT"
    /// - CreatedAt: Use the creation date attribute (created_at) of customer profiles as the sort key.
    case CreatedAt = "CREATED_AT"
}

/// - CardBrand: Indicates a card's brand, such as VISA or MASTERCARD.
/// https://developer.squareup.com/reference/square/enums/CardBrand
public enum CardBrand: String, Codable {
    case OtherBrands = "OTHER_BRAND"
    case Visa = "VISA"
    case MasterCard = "MASTERCARD"
    case AmericanExpress = "AMERICAN_EXPRESS"
    case Discover = "DISCOVER"
    case DiscoverDiners = "DISCOVER_DINERS"
    case JCB = "JCB"
    case ChinaUnionpay = "CHINA_UNIONPAY"
    case SquareGiftCard = "SQUARE_GIFT_CARD"
    case SquarecapitalCard = "SQUARE_CAPITAL_CARD"
    case Interac = "INTERAC"
    case Eftpos = "EFTPOS"
    case Felica = "FELICA"
    case EBT = "EBT"
}

/// - CardType: Indicates a card's type, such as CREDIT or DEBIT.
/// https://developer.squareup.com/reference/square/enums/CardType
public enum CardType: String, Codable {
    case UnknownCardType = "UNKNOWN_CARD_TYPE"
    case Credit = "CREDIT"
    case Debit = "DEBIT"
}

/// - CardPrepaidType: Indicates a card's prepaid type, such as NOT_PREPAID or PREPAID.
/// https://developer.squareup.com/reference/square/enums/CardPrepaidType
public enum CardPrepaidType: String, Codable {
    case UnknownPrepaidType = "UNKNOWN_PREPAID_TYPE"
    case NotPrepaid = "NOT_PREPAID"
    case Prepaid = "PREPAID"
}

/// - CardCoBrand: Indicates the brand for a co-branded card.
/// https://developer.squareup.com/reference/square/enums/CardCoBrand
public enum CardCoBrand: String, Codable {
    case Unknown = "UNKNOWN"
    case AfterPay = "AFTERPAY"
    case ClearPay = "CLEARPAY"
}

/// - CustomerCreationSource: Indicates the method used to create the customer profile.
/// https://developer.squareup.com/reference/square/enums/CustomerCreationSource
public enum CustomerCreationSource: String, Codable {
    /// - Other: The default creation source. This source is typically used for backward/future compatibility when the original source of a customer profile is unrecognized. For example, when older clients do not support newer source types.
    case Other = "OTHER"
    /// - Appointments: The customer profile was created automatically when an appointment was scheduled.
    case Appointments = "APPOINTMENTS"
    /// - Coupon: The customer profile was created automatically when a coupon was issued using Square Point of Sale.
    case Coupon = "COUPON"
    /// - DeletionRecovery: The customer profile was restored through Square's deletion recovery process.
    case DeletionRecovery = "DELETION_RECOVERY"
    /// - Directory: The customer profile was created manually through Square Seller Dashboard or the Point of Sale application.
    case Directory = "DIRECTORY"
    /// - Egifting: The customer profile was created automatically when a gift card was issued using Square Point of Sale. Customer profiles are created for both the buyer and the recipient of the gift card.
    case Egifting = "EGIFTING"
    /// - EmailCollection: The customer profile was created through Square Point of Sale when signing up for marketing emails during checkout.
    case EmailCollection = "EMAIL_COLLECTION"
    /// - Feedback: The customer profile was created automatically when providing feedback through a digital receipt.
    case Feedback = "FEEDBACK"
    /// - Import: The customer profile was created automatically when importing customer data through Square Seller Dashboard.
    case Import = "IMPORT"
    /// - Invoices: The customer profile was created automatically during an invoice payment.
    case Invoices = "INVOICES"
    /// - Loyalty: The customer profile was created automatically when customers provide a phone number for loyalty reward programs during checkout.
    case Loyalty = "LOYALTY"
    /// - Marketing: The customer profile was created as the result of a campaign managed through Square’s Facebook integration.
    case Marketing = "MARKETING"
    /// - Merge: The customer profile was created as the result of explicitly merging multiple customer profiles through the Square Seller Dashboard or the Point of Sale application.
    case Merge = "MERGE"
    /// - OnlineStore: The customer profile was created through Square's Online Store solution (legacy service).
    case OnlineStore = "ONLINE_STORE"
    /// - InstantProfile: The customer profile was created automatically as the result of a successful transaction that did not explicitly link to an existing customer profile.
    case InstantProfile = "INSTANT_PROFILE"
    /// - Terminal: The customer profile was created through Square's Virtual Terminal.
    case Terminal = "TERMINAL"
    // - ThirdParty: The customer profile was created through a Square API call.
    case ThirdParty = "THIRD_PARTY"
    /// - ThirdPartyImport: The customer profile was created by a third-party product and imported through an official integration.
    case ThirdPartyImport = "THIRD_PARTY_IMPORT"
    /// - UnmergeRecovery: The customer profile was restored through Square's unmerge recovery process.
    case UnmergeRecovery = "UNMERGE_RECOVERY"
}

/// - CustomerInclusionExclusion: Indicates whether customers should be included in, or excluded from, the result set when they match the filtering criteria.
/// https://developer.squareup.com/reference/square/enums/CustomerInclusionExclusion
public enum CustomerInclusionExclusion: String, Codable {
    /// - Include: Customers should be included in the result set when they match the filtering criteria.
    case Include = "INCLUDE"
    /// - Exclude: Customers should be excluded from the result set when they match the filtering criteria.
    case Exclude = "EXCLUDE"
}

/// - OrderLineItemItemType: Represents the line item type.
/// https://developer.squareup.com/reference/square/enums/OrderLineItemItemType
public enum OrderLineItemItemType: String, Codable {
    /// - Item: Indicates that the line item is an itemized sale.
    case Item = "ITEM"
    /// - CustomAmount: Indicates that the line item is a non-itemized sale.
    case CustomAmount = "CUSTOM_AMOUNT"
    /// - GiftCard: Indicates that the line item is a gift card sale. Gift cards sold through the Orders API are sold in an unactivated state and can be activated through the Gift Cards API using the line item uid.
    case GiftCard = "GIFT_CARD"
}

/// - OrderLineItemTaxType: Indicates how the tax is applied to the associated line item or order.
/// https://developer.squareup.com/reference/square/enums/OrderLineItemTaxType
public enum OrderLineItemTaxType: String, Codable {
    /// - UnknownTax: Used for reporting only. The original transaction tax type is currently not supported by the API.
    case UnknownTax = "UNKNOWN_TAX"
    /// - Additive: The tax is an additive tax. The tax amount is added on top of the price. For example, an item with a cost of 1.00 USD and a 10% additive tax has a total cost to the buyer of 1.10 USD.
    case Additive = "ADDITIVE"
    /// - Inclusive: The tax is an inclusive tax. Inclusive taxes are already included in the line item price or order total. For example, an item with a cost of 1.00 USD and a 10% inclusive tax has a pretax cost of 0.91 USD (91 cents) and a 0.09 (9 cents) tax for a total cost of 1.00 USD to the buyer.
    case Inclusive = "INCLUSIVE"
}

/// - OrderLineItemDiscountType: Indicates how the discount is applied to the associated line item or order.
/// https://developer.squareup.com/reference/square/enums/OrderLineItemDiscountType
public enum OrderLineItemDiscountType: String, Codable {
    /// - UnknownDiscount: Used for reporting only. The original transaction discount type is currently not supported by the API.
    case UnknownDiscount = "UNKNOWN_DISCOUNT"
    /// - FixedPercentage: Apply the discount as a fixed percentage (such as 5%) off the item price.
    case FixedPercentage = "FIXED_PERCENTAGE"
    /// - FixedAmount: Apply the discount as a fixed monetary value (such as $1.00) off the item price.
    case FixedAmount = "FIXED_AMOUNT"
    /// - VariablePercentage: Apply the discount as a variable percentage based on the item price.
    /// The specific discount percentage of a VARIABLE_PERCENTAGE discount is assigned at the time of the purchase.
    case VariablePercentage = "VARIABLE_PERCENTAGE"
    /// - VariableAmount: Apply the discount as a variable amount based on the item price.
    /// The specific discount amount of a VARIABLE_AMOUNT discount is assigned at the time of the purchase.
    case VariableAmount = "VARIABLE_AMOUNT"
}

/// - OrderServiceChargeCalculationPhase: Represents a phase in the process of calculating order totals.
/// Service charges are applied after the indicated phase
/// https://developer.squareup.com/reference/square/enums/OrderServiceChargeCalculationPhase
public enum OrderServiceChargeCalculationPhase: String, Codable {
    /// - SubtotalPhase: The service charge is applied after discounts, but before taxes.
    case SubtotalPhase = "SUBTOTAL_PHASE"
    /// - TotalPhase: The service charge is applied after all discounts and taxes are applied.
    case TotalPhase = "TOTAL_PHASE"
    /// - ApportionedPercentagePhase: Beta
    /// The service charge is calculated as a compounding adjustment after any discounts, but before amount based apportioned service charges and any tax considerations
    case ApportionedPercentagePhase = "APPORTIONED_PERCENTAGE_PHASE"
    /// - ApportionedAmountPhase: Beta
    /// The service charge is calculated as a compounding adjustment after any discounts and percentage based apportioned service charges, but before any tax considerations.
    case ApportionedAmountPhase = "APPORTIONED_AMOUNT_PHASE"
}

/// - OrderServiceChargeType:
/// https://developer.squareup.com/reference/square/enums/OrderServiceChargeType
public enum OrderServiceChargeType: String, Codable {
    case AutoGratuity = "AUTO_GRATUITY"
    case Custom = "CUSTOM"
}

/// - OrderServiceChargeTreatmentType: Indicates whether the service charge will be treated as a value-holding line item or apportioned toward a line item.
/// https://developer.squareup.com/reference/square/enums/OrderServiceChargeTreatmentType
public enum OrderServiceChargeTreatmentType: String, Codable {
    case LineItemTreatment = "LINE_ITEM_TREATMENT"
    case ApportionedTreatment = "APPORTIONED_TREATMENT"
}

/// - OrderServiceChargeScope: Indicates whether this is a line-item or order-level apportioned service charge.
/// https://developer.squareup.com/reference/square/enums/OrderServiceChargeScope
public enum OrderServiceChargeScope: String, Codable {
    /// - OtherServiceChargeScope: Beta
    /// Used for reporting only. The original transaction service charge scope is currently not supported by the API.
    case OtherServiceChargeScope = "OTHER_SERVICE_CHARGE_SCOPE"
    /// - LineItem: Beta
    /// The service charge should be applied to only line items specified by OrderLineItemAppliedServiceCharge reference records.
    case LineItem = "LINE_ITEM"
    /// - Order: Beta
    /// The service charge should be applied to the entire order.
    case Order = "ORDER"
}

/// - FulfillmentType: The type of fulfillment.
/// https://developer.squareup.com/reference/square/enums/FulfillmentType
public enum FulfillmentType: String, Codable {
    /// - Pickup: A recipient to pick up the fulfillment from a physical location.
    case Pickup = "PICKUP"
    /// - Shipment: Beta
    /// A shipping carrier to ship the fulfillment.
    case Shipment = "SHIPMENT"
    /// - Delivery: Beta
    /// A courier to deliver the fulfillment.
    case Delivery = "DELIVERY"
}

/// - FulfillmentState: The current state of this fulfillment.
/// https://developer.squareup.com/reference/square/enums/FulfillmentState
public enum FulfillmentState: String, Codable {
    /// - Proposed: Indicates that the fulfillment has been proposed.
    case Proposed = "PROPOSED"
    /// - Reserved: Indicates that the fulfillment has been reserved.
    case Reserved = "RESERVED"
    /// - Prepared: Indicates that the fulfillment has been prepared.
    case Prepared = "PREPARED"
    /// - Completed: Indicates that the fulfillment was successfully completed.
    case Completed = "COMPLETED"
    /// - Cancelled: Indicates that the fulfillment was canceled.
    case Cancelled = "CANCELED"
    /// - Failed: Indicates that the fulfillment failed to be completed, but was not explicitly canceled.
    case Failed = "FAILED"
}

/// - FulfillmentFulfillmentLineItemApplication: The line_item_application describes what order line items this fulfillment applies to.
/// It can be ALL or ENTRY_LIST with a supplied list of fulfillment entries.
/// https://developer.squareup.com/reference/square/enums/FulfillmentFulfillmentLineItemApplication
public enum FulfillmentFulfillmentLineItemApplication: String, Codable {
    /// - All: Beta
    /// If ALL, entries must be unset.
    case All = "ALL"
    /// - EntryList: Beta
    /// If ENTRY_LIST, supply a list of entries.
    case EntryList = "ENTRY_LIST"
}

/// - FulfillmentPickupDetailsScheduleType: The schedule type of the pickup fulfillment.
/// https://developer.squareup.com/reference/square/enums/FulfillmentPickupDetailsScheduleType
public enum FulfillmentPickupDetailsScheduleType: String, Codable {
    /// - Scheduled: Indicates that the fulfillment will be picked up at a scheduled pickup time.
    case Scheduled = "SCHEDULED"
    /// - Asap: Indicates that the fulfillment will be picked up as soon as possible and should be prepared immediately.
    case Asap = "ASAP"
}

/// - FulfillmentDeliveryDetailsOrderFulfillmentDeliveryDetailsScheduleType: The schedule type of the delivery fulfillment.
/// https://developer.squareup.com/reference/square/enums/FulfillmentDeliveryDetailsOrderFulfillmentDeliveryDetailsScheduleType
public enum FulfillmentDeliveryDetailsOrderFulfillmentDeliveryDetailsScheduleType: String, Codable {
    /// - Scheduled: Beta
    ///  Indicates the fulfillment to deliver at a scheduled deliver time.
    case Scheduled = "SCHEDULED"
    /// - Asap: Indicates that the fulfillment to deliver as soon as possible and should be prepared immediately.
    case Asap = "ASAP"
}

/// - OrderLineItemTaxScope: Indicates whether this is a line-item or order-level tax.
/// https://developer.squareup.com/reference/square/enums/OrderLineItemTaxScope
public enum OrderLineItemTaxScope: String, Codable {
    /// - OtherTaxScope: Used for reporting only. The original transaction tax scope is currently not supported by the API.
    case OtherTaxScope = "OTHER_TAX_SCOPE"
    /// - LineItem: The tax should be applied only to line items specified by the OrderLineItemAppliedTax reference records.
    case LineItem = "LINE_ITEM"
    /// - Order: The tax should be applied to the entire order.
    case Order = "ORDER"
}

/// - OrderLineItemDiscountScope: Indicates whether this is a line-item or order-level discount.
/// https://developer.squareup.com/reference/square/enums/OrderLineItemDiscountScope
public enum OrderLineItemDiscountScope: String, Codable {
    /// - OtherDiscountScope: Used for reporting only. The original transaction discount scope is currently not supported by the API.
    case OtherDiscountScope = "OTHER_DISCOUNT_SCOPE"
    /// - LineItem: The discount should be applied to only line items specified by OrderLineItemAppliedDiscount reference records.
    case LineItem = "LINE_ITEM"
    /// - Order: The discount should be applied to the entire order.
    case Order = "ORDER"
}

/// - TenderType: Indicates a tender's type.
/// https://developer.squareup.com/reference/square/enums/TenderType
public enum TenderType: String, Codable {
    /// - Card: A credit card.
    case Card = "CARD"
    /// - Cash: Cash
    case Cash = "CASH"
    /// - ThirdPartyCard: A credit card processed with a card processor other than Square.
    /// This value applies only to merchants in countries where Square does not yet provide card processing.
    case ThirdPartyCard = "THIRD_PARTY_CARD"
    /// - SquareGiftCard: A Square gift card.
    case SquareGiftCard = "SQUARE_GIFT_CARD"
    /// - NoSale: This tender represents the register being opened for a "no sale" event.
    case NoSale = "NO_SALE"
    /// - Wallet: A payment from a digital wallet, e.g. Cash App.
    /// Note: Some "digital wallets", including Google Pay and Apple Pay, facilitate card payments. Those payments have the CARD type.
    case Wallet = "WALLET"
    /// - Other: A form of tender that does not match any other value.
    case Other = "OTHER"
}

/// - TenderCardDetailsStatus: Indicates the card transaction's current status.
/// https://developer.squareup.com/reference/square/enums/TenderCardDetailsStatus
public enum TenderCardDetailsStatus: String, Codable {
    /// - Authorized: The card transaction has been authorized but not yet captured.
    case Authorized = "AUTHORIZED"
    /// - Captured: The card transaction was authorized and subsequently captured (i.e., completed).
    case Captured = "CAPTURED"
    /// - Voided: The card transaction was authorized and subsequently voided (i.e., canceled).
    case Voided = "VOIDED"
    /// - Failed: The card transaction failed.
    case Failed = "FAILED"
}

/// - TenderCardDetailsEntryMethod: Indicates the method used to enter the card's details.
/// https://developer.squareup.com/reference/square/enums/TenderCardDetailsEntryMethod
public enum TenderCardDetailsEntryMethod: String, Codable {
    /// - Swiped: The card was swiped through a Square reader or Square stand.
    case Swiped = "SWIPED"
    /// - Keyed: The card information was keyed manually into Square Point of Sale or a Square-hosted web form.
    case Keyed = "KEYED"
    /// - EMV: The card was processed via EMV with a Square reader.
    case EMV = "EMV"
    /// - OnFile: The buyer's card details were already on file with Square.
    case OnFile = "ON_FILE"
    /// - Contactless: The card was processed via a contactless (i.e., NFC) transaction with a Square reader.
    case Contactless = "CONTACTLESS"
}

/// - RefundStatus: Indicates a refund's current status.
/// https://developer.squareup.com/reference/square/enums/RefundStatus
public enum RefundStatus: String, Codable {
    /// - Pending: The refund is pending.
    case Pending = "PENDING"
    /// - Approved: The refund has been approved by Square.
    case Approved = "APPROVED"
    /// - Rejected: The refund has been rejected by Square.
    case Rejected = "REJECTED"
    /// - Failed: The refund failed.
    case Failed = "FAILED"
}

/// - OrderState: The state of the order.
/// https://developer.squareup.com/reference/square/enums/OrderState
public enum OrderState: String, Codable {
    /// - Open: Indicates that the order is open. Open orders can be updated.
    case Open = "OPEN"
    /// - Completed: Indicates that the order is completed. Completed orders are fully paid. This is a terminal state.
    case Completed = "COMPLETED"
    /// - Canceled: Indicates that the order is canceled. Canceled orders are not paid. This is a terminal state.
    case Canceled = "CANCELED"
    /// - Draft: Beta
    /// Indicates that the order is in a draft state. Draft orders can be updated, but cannot be paid or fulfilled. For more information, see Create Orders.
    case Draft = "DRAFT"
}

/// - SearchOrdersSortField: Specifies which timestamp to use to sort SearchOrder results.
/// https://developer.squareup.com/reference/square/objects/SearchOrdersSortField
public enum SearchOrdersSortField: String, Codable {
    /// - CreatedAt: The time when the order was created, in RFC-3339 format. If you are also filtering for a time range in this query, you must set the CREATED_AT field in your DateTimeFilter.
    case CreatedAt = "CREATED_AT"
    /// - UpdatedAt: The time when the order last updated, in RFC-3339 format. If you are also filtering for a time range in this query, you must set the UPDATED_AT field in your DateTimeFilter.
    case UpdatedAt = "UPDATED_AT"
    /// - ClosedAt: The time when the order was closed, in RFC-3339 format. If you use this value, you must also set a StateFilter with closed states. If you are also filtering for a time range in this query, you must set the CLOSED_AT field in your DateTimeFilter.
    case ClosedAt = "CLOSED_AT"
}

/// - ProcessingFeeType: The type of fee assessed or adjusted. The fee type can be INITIAL or ADJUSTMENT.
/// https://developer.squareup.com/reference/square/objects/ProcessingFee
public enum ProcessingFeeType: String, Codable {
    case Initial = "INITIAL"
    case Adjustment = "ADJUSTMENT"
}

/// - PaymentStatus: APPROVED, PENDING, COMPLETED, CANCELED, or FAILED.
/// https://developer.squareup.com/reference/square/objects/payment
public enum PaymentStatus: String, Codable {
    case Approved = "APPROVED"
    case Pending = "PENDING"
    case Completed = "COMPLETED"
    case Canceled = "CANCELED"
    case Failed = "FAILED"
}

/// - PaymentDelayAction: The action to be applied to the payment when the delay_duration has elapsed.
/// Current values include CANCEL and COMPLETE.
public enum PaymentDelayAction: String, Codable {
    case Cancel = "CANCEL"
    case Complete = "COMPLETE"
}

/// - PaymentSourceType: Current values include CARD, BANK_ACCOUNT, WALLET, BUY_NOW_PAY_LATER, CASH and EXTERNAL. For information about these payment source types, see Take Payments.
public enum PaymentSourceType: String, Codable {
    case Card = "CARD"
    case BankAccount = "BANK_ACCOUNT"
    case Wallet = "WALLET"
    case BuyNowPayLater = "BUY_NOW_PAY_LATER"
    case Cash = "CASH"
    case External = "EXTERNAL"
}

/// - CardPaymentDetailsStatus: The card payment's current state. The state can be AUTHORIZED, CAPTURED, VOIDED, or FAILED.
/// https://developer.squareup.com/reference/square/objects/CardPaymentDetails
public enum CardPaymentDetailsStatus: String, Codable {
    case Authorized = "AUTHORIZED"
    case Captured = "CAPTURED"
    case Voided = "VOIDED"
    case Failed = "FAILED"
}

/// - CardPaymentDetailsEntryMethod: The method used to enter the card's details for the payment. The method can be KEYED, SWIPED, EMV, ON_FILE, or CONTACTLESS.
/// https://developer.squareup.com/reference/square/objects/CardPaymentDetails
public enum CardPaymentDetailsEntryMethod: String, Codable {
    case Keyed = "KEYED"
    case Swiped = "SWIPED"
    case EMV = "EMV"
    case OnFile = "ON_FILE"
    case Contactless = "CONTACTLESS"
}

/// - CardPaymentDetailsCvvStatus: The status code returned from the Card Verification Value (CVV) check. The code can be CVV_ACCEPTED, CVV_REJECTED, or CVV_NOT_CHECKED.
/// https://developer.squareup.com/reference/square/objects/CardPaymentDetails
public enum CardPaymentDetailsCvvStatus: String, Codable {
    case CvvAccepted = "CVV_ACCEPTED"
    case CvvRejected = "CVV_REJECTED"
    case CvvNotChecked = "CVV_NOT_CHECKED"
}

/// - CardPaymentDetailsAvsStatus: The status code returned from the Address Verification System (AVS) check. The code can be AVS_ACCEPTED, AVS_REJECTED, or AVS_NOT_CHECKED.
/// https://developer.squareup.com/reference/square/objects/CardPaymentDetails
public enum CardPaymentDetailsAvsStatus: String, Codable {
    case AvsAccepted = "AVS_ACCEPTED"
    case AvsRejected = "AVS_REJECTED"
    case AvsNotChecked = "AVS_NOT_CHECKED"
}

/// - CardPaymentDetailsVerificationMethod: For EMV payments, the method used to verify the cardholder's identity. The method can be PIN, SIGNATURE, PIN_AND_SIGNATURE, ON_DEVICE, or NONE.
/// https://developer.squareup.com/reference/square/objects/CardPaymentDetails
public enum CardPaymentDetailsVerificationMethod: String, Codable {
    case Pin = "PIN"
    case Signature = "SIGNATURE"
    case PinAndSignature = "PIN_AND_SIGNATURE"
    case OnDevice = "ON_DEVICE"
    case None = "NONE"
}

/// - CardPaymentDetailsVerificationResults: For EMV payments, the results of the cardholder verification. The result can be SUCCESS, FAILURE, or UNKNOWN.
/// https://developer.squareup.com/reference/square/objects/CardPaymentDetails
public enum CardPaymentDetailsVerificationResults: String, Codable {
    case Success = "SUCCESS"
    case Failure = "FAILURE"
    case Unknown = "UNKNOWN"
}

/// - BankAccountPaymentDetailsTransferType: The type of the bank transfer. The type can be ACH or UNKNOWN.
/// https://developer.squareup.com/reference/square/objects/BankAccountPaymentDetails
public enum BankAccountPaymentDetailsTransferType: String, Codable {
    case ACH = "ACH"
    case Unknown = "UNKNOWN"
}

/// - BankAccountPaymentDetailsAccountOwnershipType: The ownership type of the bank account performing the transfer. The type can be INDIVIDUAL, COMPANY, or ACCOUNT_TYPE_UNKNOWN.
/// https://developer.squareup.com/reference/square/objects/BankAccountPaymentDetails
public enum BankAccountPaymentDetailsAccountOwnershipType: String, Codable {
    case Individual = "INDIVIDUAL"
    case Company = "COMPANY"
    case AccountTypeUnknown = "ACCOUNT_TYPE_UNKNOWN"
}

/// - ACHDetailsAccountType: The type of the bank account performing the transfer. The account type can be CHECKING, SAVINGS, or UNKNOWN.
/// https://developer.squareup.com/reference/square/objects/ACHDetails
public enum ACHDetailsAccountType: String, Codable {
    case Checking = "CHECKING"
    case Savings = "SAVINGS"
    case Unknown = "UNKNOWN"
}

/// - ExternalPaymentDetailsType: The type of external payment the seller received. It can be one of the following:
/// https://developer.squareup.com/reference/square/objects/ExternalPaymentDetails
public enum ExternalPaymentDetailsType: String, Codable {
    /// - Check: Paid using a physical check.
    case Check = "CHECK"
    /// - BankTransfer: Paid using external bank transfer.
    case BankTransfer = "BANK_TRANSFER"
    /// - OtherGiftCard: Paid using a non-Square gift card.
    case OtherGiftCard = "OTHER_GIFT_CARD"
    /// - Crypto: Paid using a crypto currency.
    case Crypto = "CRYPTO"
    /// - SquareCash: Paid using Square Cash App.
    case SquareCash = "SQUARE_CASH"
    /// - Social: Paid using peer-to-peer payment applications.
    case Social = "SOCIAL"
    /// - External: A third-party application gathered this payment outside of Square.
    case External = "EXTERNAL"
    /// - EMoney: Paid using an E-money provider.
    case EMoney = "EMONEY"
    /// - Card: A credit or debit card that Square does not support.
    case Card = "CARD"
    /// - StoredBalance: Use for house accounts, store credit, and so forth.
    case StoredBalance = "STORED_BALANCE"
    /// - FoodVoucher: Restaurant voucher provided by employers to employees to pay for meals
    case FoodVoucher = "FOOD_VOUCHER"
    /// - Other: A type not listed here.
    case Other = "OTHER"
}

/// - DigitalWalletDetailsStatus: The status of the WALLET payment. The status can be AUTHORIZED, CAPTURED, VOIDED, or FAILED.
/// The status of the WALLET payment. The status can be AUTHORIZED, CAPTURED, VOIDED, or FAILED.
public enum DigitalWalletDetailsStatus: String, Codable {
    case Authorized = "AUTHORIZED"
    case Captured = "CAPTURED"
    case Voided = "VOIDED"
    case Failed = "FAILED"
}

/// - DigitalWalletDetailsBrand: The brand used for the WALLET payment. The brand can be CASH_APP, PAYPAY or UNKNOWN.
public enum DigitalWalletDetailsBrand: String, Codable {
    case CashApp = "CASH_APP"
    case PayPal = "PAYPAY"
    case Unknown = "UNKNOWN"
}

/// - BuyNowPayLaterDetailsBrand: The brand used for the Buy Now Pay Later payment. The brand can be AFTERPAY, CLEARPAY or UNKNOWN.
/// https://developer.squareup.com/reference/square/objects/BuyNowPayLaterDetails
public enum BuyNowPayLaterDetailsBrand: String, Codable {
    case AfterPay = "AFTERPAY"
    case ClearPay = "CLEARPAY"
    case Unknown = "UNKNOWN"
}

/// - RiskEvaluationRiskLevel: The risk level associated with the payment
/// https://developer.squareup.com/reference/square/enums/RiskEvaluationRiskLevel
public enum RiskEvaluationRiskLevel: String, Codable {
    /// - Pending: Beta
    /// Indicates Square is still evaluating the payment.
    case Pending = "PENDING"
    /// - Normal: Beta
    /// Indicates payment risk is within the normal range.
    case Normal = "NORMAL"
    /// - Moderate: Beta
    /// Indicates elevated risk level associated with the payment.
    case Moderate = "MODERATE"
    /// - High: Beta
    /// Indicates significantly elevated risk level with the payment.
    case High = "HIGH"
}

/// - PaymentCapabilities: Actions that can be performed on this payment:
/// https://developer.squareup.com/reference/square/objects/payment
public enum PaymentCapabilities: String, Codable {
    /// - EditAmountUp: The payment amount can be edited up.
    case EditAmountUp = "EDIT_AMOUNT_UP"
    /// - EditAmountDown: The payment amount can be edited down.
    case EditAmountDown = "EDIT_AMOUNT_DOWN"
    /// - EditTipAmountUp: The tip amount can be edited up.
    case EditTipAmountUp = "EDIT_TIP_AMOUNT_UP"
    /// - EditTipAmountDown: The tip amount can be edited down.
    case EditTipAmountDown = "EDIT_TIP_AMOUNT_DOWN"
    /// - EditDelayAction: The delay_action can be edited.
    case EditDelayAction = "EDIT_DELAY_ACTION"
}

/// - ApplicationDetailsExternalSquareProduct: A list of products to return to external callers.
/// https://developer.squareup.com/reference/square/enums/ApplicationDetailsExternalSquareProduct
public enum ApplicationDetailsExternalSquareProduct: String, Codable {
    case Appointments = "APPOINTMENTS"
    case EcommerceApi = "ECOMMERCE_API"
    case Invoices = "INVOICES"
    case OnlineStore = "ONLINE_STORE"
    case Other = "OTHER"
    case Restaurants = "RESTAURANTS"
    case Retail = "RETAIL"
    case SquarePos = "SQUARE_POS"
    case TerminalApi = "TERMINAL_API"
    case VirtualTerminal = "VIRTUAL_TERMINAL"
}

/// - InvoiceRequestMethod: Specifies the action for Square to take for processing the invoice.
/// For example, email the invoice, charge a customer's card on file, or do nothing. DEPRECATED at version 2021-01-21. The corresponding request_method field is replaced by the Invoice.delivery_method and InvoicePaymentRequest.automatic_payment_source fields.
/// https://developer.squareup.com/reference/square/enums/InvoiceRequestMethod
public enum InvoiceRequestMethod: String, Codable {
    /// - Email: Deprecated
    /// Directs Square to send invoices, reminders, and receipts to the customer using email. Square sends the invoice after it is published (either immediately or at the scheduled_at time, if specified in the invoice).
    case Email = "EMAIL"
    /// - ChargeCardOnFile: Deprecated
    /// Directs Square to charge the card on file on the due_date specified in the payment request and to use email to send invoices, reminders, and receipts.
    case ChargeCardOnFile = "CHARGE_CARD_ON_FILE"
    /// - ShareManually: Deprecated
    /// Directs Square to take no specific action on the invoice. In this case, the seller (or the application developer) follows up with the customer for payment. For example, a seller might collect a payment in the Seller Dashboard or use the Point of Sale (POS) application. The seller might also share the URL of the Square-hosted invoice page (public_url) with the customer requesting payment.
    case ShareManually = "SHARE_MANUALLY"
    /// - ChargeBankOnFile: Deprecated
    /// Directs Square to charge the customer's bank account on file and to use email to send invoices, reminders, and receipts. The customer must approve the payment.
    /// The bank on file payment method applies only to invoices that sellers create in the Seller Dashboard or other Square product. The bank account is provided by the customer during the payment flow. You cannot set CHARGE_BANK_ON_FILE as a request method using the Invoices API.
    case ChargeBankOnFile = "CHARGE_BANK_ON_FILE"
    /// - SMS: Deprecated
    /// Directs Square to send invoices and receipts to the customer using SMS (text message). Square sends the invoice after it is published (either immediately or at the scheduled_at time, if specified in the invoice).
    /// You cannot set SMS as a request method using the Invoices API.
    case SMS = "SMS"
    /// - SmsChargeCardOnFile: Deprecated
    /// Directs Square to charge the card on file on the due_date specified in the payment request and to use SMS (text message) to send invoices and receipts.
    /// You cannot set SMS_CHARGE_CARD_ON_FILE as a request method using the Invoices API.
    case SmsChargeCardOnFile = "SMS_CHARGE_CARD_ON_FILE"
    /// - SmsChargeBankOnFile: Deprecated
    /// Directs Square to charge the customer's bank account on file and to use SMS (text message) to send invoices and receipts. The customer must approve the payment.
    /// The bank on file payment method applies only to invoices that sellers create in the Seller Dashboard or other Square product. The bank account is provided by the customer during the payment flow. You cannot set SMS_CHARGE_BANK_ON_FILE as a request method using the Invoices API.
    case SmsChargeBankOnFile = "SMS_CHARGE_BANK_ON_FILE"
}

/// - InvoiceRequestType: Indicates the type of the payment request.For more information, see Configuring payment requests.
/// https://developer.squareup.com/reference/square/enums/InvoiceRequestType
public enum InvoiceRequestType: String, Codable {
    /// - Balance: A request for a balance payment. The balance amount is computed as follows:
    /// If the invoice specifies only a balance payment request, the balance amount is the total amount of the associated order.
    /// If the invoice also specifies a deposit request, the balance amount is the amount remaining after the deposit.
    /// INSTALLMENT and BALANCE payment requests are not allowed in the same invoice.
    case Balance = "BALANCE"
    /// - Deposit: A request for a deposit payment. You have the option of specifying an exact amount or a percentage of the total order amount. If you request a deposit, it must be due before any other payment requests.
    case Deposit = "DEPOSIT"
    /// - Installed: A request for an installment payment. Installments allow buyers to pay the invoice over time. Installments can optionally be combined with a deposit.
    /// Adding INSTALLMENT payment requests to an invoice requires an Invoices Plus subscription.
    case Installment = "INSTALLMENT"
}

/// - InvoiceAutomaticPaymentSource: Indicates the automatic payment method for an invoice payment request.
/// https://developer.squareup.com/reference/square/enums/InvoiceAutomaticPaymentSource
public enum InvoiceAutomaticPaymentSource: String, Codable {
    /// - None: An automatic payment is not configured for the payment request.
    case None = "NONE"
    /// - CardOnFile: Use a card on file as the automatic payment method. On the due date, Square charges the card for the amount of the payment request.
    /// For CARD_ON_FILE payments, the invoice delivery method must be EMAIL and card_id must be specified for the payment request before the invoice can be published.
    case CardOnFile = "CARD_ON_FILE"
    /// - BankOnFile: Use a bank account on file as the automatic payment method. On the due date, Square charges the bank account for the amount of the payment request if the buyer has approved the payment. The buyer receives a request to approve the payment when the invoice is sent or the invoice is updated.
    /// This payment method applies only to invoices that sellers create in the Seller Dashboard or other Square product. The bank account is provided by the customer during the payment flow.
    /// You cannot set BANK_ON_FILE as a payment method using the Invoices API, but you can change a BANK_ON_FILE payment method to NONE or CARD_ON_FILE. For BANK_ON_FILE payments, the invoice delivery method must be EMAIL.
    case BankOnFile = "BANK_ON_FILE"
}

/// - InvoicePaymentReminderStatus: The status of a payment request reminder.
/// https://developer.squareup.com/reference/square/enums/InvoicePaymentReminderStatus
public enum InvoicePaymentReminderStatus: String, Codable {
    /// - Pending: The reminder will be sent on the relative_scheduled_date (if the invoice is published).
    case Pending = "PENDING"
    /// - NotApplicable: The reminder is not applicable and is not sent. The following are examples of when reminders are not applicable and are not sent:
    /// You schedule a reminder to be sent before the invoice is published.
    ///
    /// The invoice is configured with multiple payment requests and a payment request reminder is configured to be sent after the next payment request due_date.
    /// Two reminders (for different payment requests) are configured to be sent on the same date. Therefore, only one reminder is sent.
    /// You configure a reminder to be sent on the date that the invoice is scheduled to be sent.
    /// The payment request is already paid.
    /// The invoice status is CANCELED or FAILED.
    case NotApplicable = "NOT_APPLICABLE"
    /// - Sent: The reminder is sent.
    case Sent = "SENT"
}

/// - InvoiceDeliveryMethod: Indicates how Square delivers the invoice to the customer.
/// https://developer.squareup.com/reference/square/enums/InvoiceDeliveryMethod
public enum InvoiceDeliveryMethod: String, Codable {
    /// - Email: Directs Square to send invoices, reminders, and receipts to the customer using email.
    case Email = "EMAIL"
    /// - ShareManually: Directs Square to take no action on the invoice. In this case, the seller or application developer follows up with the customer for payment. For example, a seller might collect a payment in the Seller Dashboard or Point of Sale (POS) application. The seller might also share the URL of the Square-hosted invoice page (public_url) with the customer to request payment.
    case ShareManually = "SHARE_MANUALLY"
    /// - SMS: Directs Square to send invoices and receipts to the customer using SMS (text message).
    /// You cannot set SMS as a delivery method using the Invoices API, but you can change an SMS delivery method to EMAIL or SHARE_MANUALLY.
    case SMS = "SMS"
}

/// - InvoiceStatus: Indicates the status of an invoice.
/// https://developer.squareup.com/reference/square/enums/InvoiceStatus
public enum InvoiceStatus: String, Codable {
    /// - Draft: The invoice is a draft. You must publish a draft invoice before Square can process it. A draft invoice has no public_url, so it is not available to customers.
    case Draft = "DRAFT"
    /// - Unpaid: The invoice is published but not yet paid.
    case Unpaid = "UNPAID"
    /// - Scheduled: The invoice is scheduled to be processed. On the scheduled date, Square sends the invoice, initiates an automatic payment, or takes no action, depending on the delivery method and payment request settings. Square also sets the invoice status to the appropriate state: UNPAID, PAID, PARTIALLY_PAID, or PAYMENT_PENDING.
    case Scheduled = "SCHEDULED"
    /// - PartiallyPaid: A partial payment is received for the invoice.
    case PartiallyPaid = "PARTIALLY_PAID"
    /// - Paid: The customer paid the invoice in full.
    case Paid = "PAID"
    /// - PartiallyRefunded: The invoice is paid (or partially paid) and some but not all the amount paid is refunded.
    case PartiallyRefunded = "PARTIALLY_REFUNDED"
    /// - Refunded: The full amount that the customer paid for the invoice is refunded.
    case Refunded = "REFUNDED"
    /// - Canceled: The invoice is canceled. Square no longer requests payments from the customer. The public_url page remains and is accessible, but it displays the invoice as canceled and does not accept payment.
    case Canceled = "CANCELED"
    /// - Failed: Square canceled the invoice due to suspicious activity.
    case Failed = "FAILED"
    /// - PaymentPending: A payment on the invoice was initiated but has not yet been processed.
    /// When in this state, invoices cannot be updated and other payments cannot be initiated.
    case PaymentPending = "PAYMENT_PENDING"
}

/// - InvoiceCustomFieldPlacement: Indicates where to render a custom field on the Square-hosted invoice page and in emailed or PDF copies of the invoice.
/// https://developer.squareup.com/reference/square/enums/InvoiceCustomFieldPlacement
public enum InvoiceCustomFieldPlacement: String, Codable {
    /// - AboveLineItems: Render the custom field above the invoice line items.
    case AboveLineItems = "ABOVE_LINE_ITEMS"
    /// - BelowLineItems: Render the custom field below the invoice line items.
    case BelowLineItems = "BELOW_LINE_ITEMS"
}

/// - InvoiceSortField: The field to use for sorting.
/// https://developer.squareup.com/reference/square/enums/InvoiceSortField
public enum InvoiceSortField: String, Codable {
    /// - InvoiceSortDate: The field works as follows:
    ///
    /// if the invoice is a draft, it uses the invoice created_at date.
    /// If the invoice is scheduled for publication, it uses the scheduled_at date.
    /// If the invoice is published, it uses the invoice publication date.
    case InvoiceSortDate = "INVOICE_SORT_DATE"
}

/// - BankAccountType: Indicates the financial purpose of the bank account.
/// https://developer.squareup.com/reference/square/enums/BankAccountType
public enum BankAccountType: String, Codable {
    /// - Checking: An account at a financial institution against which checks can be drawn by the account depositor.
    case Checking = "CHECKING"
    /// - Savings: An account at a financial institution that pays interest but cannot be used directly as money in the narrow sense of a medium of exchange.
    case Savings = "SAVINGS"
    /// - Investment: An account at a financial institution that contains a deposit of funds and/or securities.
    case Investment = "INVESTMENT"
    /// - Other: An account at a financial institution which cannot be described by the other types.
    case Other = "OTHER"
    /// - BusinessChecking: An account at a financial institution against which checks can be drawn specifically for business purposes (non-personal use).
    case BusinessChecking = "BUSINESS_CHECKING"
}

/// - BankAccountStatus: Indicates the current verification status of a BankAccount object
/// https://developer.squareup.com/reference/square/enums/BankAccountStatus
public enum BankAccountStatus: String, Codable {
    /// - VerificationInProgress: Indicates that the verification process has started. Some features (for example, creditable or debitable) may be provisionally enabled on the bank account.
    case VerificationInProgress = "VERIFICATION_IN_PROGRESS"
    /// - Verified: Indicates that the bank account was successfully verified.
    case Verified = "VERIFIED"
    /// - Disabled: Indicates that the bank account is disabled and is permanently unusable for funds transfer. A bank account can be disabled because of a failed verification attempt or a failed deposit attempt.
    case Disabled = "DISABLED"
}

/// - SubscriptionStatus: Supported subscription statuses.
/// https://developer.squareup.com/reference/square/enums/SubscriptionStatus
public enum SubscriptionStatus: String, Codable {
    /// - Pending: The subscription is pending to start in the future.
    case Pending = "PENDING"
    /// - Active: The subscription is active.
    case Active = "ACTIVE"
    /// - Canceled: The subscription is canceled.
    case Canceled = "CANCELED"
    /// - Deactivated: The subscription is deactivated.
    case Deactivated = "DEACTIVATED"
    /// - Paused: Beta
    /// The subscription is paused.
    case Paused = "PAUSED"
}

/// - SubscriptionActionType: Supported types of an action as a pending change to a subscription.
/// https://developer.squareup.com/reference/square/enums/SubscriptionActionType
public enum SubscriptionActionType: String, Codable {
    /// - Cancel: Beta
    /// The action to execute a scheduled cancellation of a subscription.
    case Cancel = "CANCEL"
    /// - Pause: Beta
    /// The action to execute a scheduled pause of a subscription.
    case Pause = "PAUSE"
    /// - Resume: Beta
    /// The action to execute a scheduled resumption of a subscription.
    case Resume = "RESUME"
    /// - SwapPlan: Beta
    /// The action to execute a scheduled swap of a subscription plan in a subscription.
    case SwapPlan = "SWAP_PLAN"
}

/// - SubscriptionEventSubscriptionEventType: Supported types of an event occurred to a subscription.
/// https://developer.squareup.com/reference/square/enums/SubscriptionEventSubscriptionEventType
public enum SubscriptionEventSubscriptionEventType: String, Codable {
    /// - StartSubscription: The subscription was started.
    case StartSubscription = "START_SUBSCRIPTION"
    /// - PlanChange: The subscription plan was changed.
    case PlanChange = "PLAN_CHANGE"
    /// - StopSubscription: The subscription was stopped.
    case StopSubscription = "STOP_SUBSCRIPTION"
    /// - DeactivateSubscription: The subscription was deactivated
    case DeactivateSubscription = "DEACTIVATE_SUBSCRIPTION"
    /// - ResumeSubscription: The subscription was resumed.
    case ResumeSubscription = "RESUME_SUBSCRIPTION"
    /// - PauseSubscription: Beta
    /// The subscription was paused.
    case PauseSubscription = "PAUSE_SUBSCRIPTION"
}

/// - SubscriptionEventInfoCode: Supported info codes of a subscription event.
/// https://developer.squareup.com/reference/square/enums/SubscriptionEventInfoCode
public enum SubscriptionEventInfoCode: String, Codable {
    /// - LocationNotActive: The location is not active.
    case LocationNotActive = "LOCATION_NOT_ACTIVE"
    /// - LocationCannotAcceptPayment: The location cannot accept payments.
    case LocationCannotAcceptPayment = "LOCATION_CANNOT_ACCEPT_PAYMENT"
    /// - CustomerDeleted: The subscribing customer profile has been deleted.
    case CustomerDeleted = "CUSTOMER_DELETED"
    /// - CustomerNoEmail: The subscribing customer does not have an email.
    case CustomerNoEmail = "CUSTOMER_NO_EMAIL"
    /// - CustomerNoName: The subscribing customer does not have a name.
    case CustomerNoName = "CUSTOMER_NO_NAME"
    /// - UserProvided: Beta
    /// User-provided detail.
    case UserProvided = "USER_PROVIDED"
}

/// - ChangeTiming: Supported timings when a pending change, as an action, takes place to a subscription.
/// https://developer.squareup.com/reference/square/enums/ChangeTiming
public enum ChangeTiming: String, Codable {
    /// - Immediate: Beta
    /// The action occurs immediately.
    case Immediate = "IMMEDIATE"
    /// - EndOfBillingCycle: Beta
    /// The action occurs at the end of the billing cycle.
    case EndOfBillingCycle = "END_OF_BILLING_CYCLE"
}

/// - GiftCardType: Indicates the gift card type.
/// https://developer.squareup.com/reference/square/enums/GiftCardType
public enum GiftCardType: String, Codable {
    /// - Physical: A plastic gift card.
    case Physical = "PHYSICAL"
    /// - Digital: A digital gift card.
    case Digital = "DIGITAL"
}

/// - GiftCardGANSource: Indicates the source that generated the gift card account number (GAN).
/// https://developer.squareup.com/reference/square/enums/GiftCardGANSource
public enum GiftCardGANSource: String, Codable {
    /// - Square: The GAN is generated by Square.
    case Square = "SQUARE"
    /// - Other: The GAN is provided by a non-Square system. For more information, see Custom GANs or Third-party gift cards.
    case Other = "OTHER"
}

/// - GiftCardStatus: Indicates the gift card state.
public enum GiftCardStatus: String, Codable {
    /// - Active: The gift card is active and can be used as a payment source.
    case Active = "ACTIVE"
    /// - Deactivated: Any activity that changes the gift card balance is permanently forbidden.
    case Deactivated = "DEACTIVATED"
    /// - Blocked: Any activity that changes the gift card balance is temporarily forbidden.
    case Blocked = "BLOCKED"
    /// - Pending: The gift card is pending activation. This is the initial state when a gift card is created. You must activate the gift card before it can be used.
    case Pending = "PENDING"
}

/// - LoyaltyEventType: The type of the loyalty event.
/// https://developer.squareup.com/reference/square/enums/LoyaltyEventType
public enum LoyaltyEventType: String, Codable {
    /// - AccumulatePoints: Points are added to a loyalty account for a purchase that qualified for points based on an accrual rule.
    case AccumulatePoints = "ACCUMULATE_POINTS"
    /// - CreateReward: A loyalty reward is created.
    case CreateReward = "CREATE_REWARD"
    /// - RedeemReward: A loyalty reward is redeemed.
    case RedeemReward = "REDEEM_REWARD"
    /// - DeleteReward: A loyalty reward is deleted.
    case DeleteReward = "DELETE_REWARD"
    /// - AdjustPoints: Loyalty points are manually adjusted.
    case AdjustPoints = "ADJUST_POINTS"
    /// - ExpirePoints: Loyalty points are expired according to the expiration policy of the loyalty program.
    case ExpirePoints = "EXPIRE_POINTS"
    /// - Other: Some other loyalty event occurred.
    case Other = "OTHER"
    /// - AccumulatePromotionPoints: Points are added to a loyalty account for a purchase that qualified for a loyalty promotion.
    case AccumulatePromotionPoints = "ACCUMULATE_PROMOTION_POINTS"
}

/// - LoyaltyEventSource: Defines whether the event was generated by the Square Point of Sale.
/// https://developer.squareup.com/reference/square/enums/LoyaltyEventSource
public enum LoyaltyEventSource: String, Codable {
    /// - Square: The event is generated by the Square Point of Sale (POS).
    case Square = "SQUARE"
    /// - LoyaltyApi: The event is generated by something other than the Square Point of Sale that used the Loyalty API.
    case LoyaltyApi = "LOYALTY_API"
}

/// - LoyaltyProgramStatus: Indicates whether the program is currently active.
/// https://developer.squareup.com/reference/square/enums/LoyaltyProgramStatus
public enum LoyaltyProgramStatus: String, Codable {
    /// - Inactive: The loyalty program does not have an active subscription. Loyalty API requests fail.
    case Inactive = "INACTIVE"
    /// - Active: The program is fully functional. The program has an active subscription.
    case Active = "ACTIVE"
}

/// - LoyaltyProgramRewardDefinitionScope: Indicates the scope of the reward tier.DEPRECATED at version 2020-12-16. Discount details are now defined using a catalog pricing rule and other catalog objects. For more information, see Getting discount details for a reward tier.
/// https://developer.squareup.com/reference/square/enums/LoyaltyProgramRewardDefinitionScope
public enum LoyaltyProgramRewardDefinitionScope: String, Codable {
    /// - Order: Deprecated
    /// The discount applies to the entire order.
    case Order = "ORDER"
    /// - ItemVariation: Deprecated
    /// The discount applies only to specific item variations.
    case ItemVariation = "ITEM_VARIATION"
    /// - Caterory: Deprecated
    /// The discount applies only to items in the given categories.
    case Caterory = "CATEGORY"
}

/// - LoyaltyProgramRewardDefinitionType: The type of discount the reward tier offers.
/// DEPRECATED at version 2020-12-16. Discount details are now defined using a catalog pricing rule and other catalog objects. For more information, see Getting discount details for a reward tier.
/// https://developer.squareup.com/reference/square/enums/LoyaltyProgramRewardDefinitionType
public enum LoyaltyProgramRewardDefinitionType: String, Codable {
    /// - FixedAmount: Deprecated
    /// The fixed amount discounted.
    case FixedAmount = "FIXED_AMOUNT"
    /// - FixedPercentage: Deprecated
    /// The fixed percentage discounted.
    case FixedPercentage = "FIXED_PERCENTAGE"
}

/// - LoyaltyProgramAccrualRuleType: The type of the accrual rule that defines how buyers can earn points.
/// https://developer.squareup.com/reference/square/enums/LoyaltyProgramAccrualRuleType
public enum LoyaltyProgramAccrualRuleType: String, Codable {
    /// - Visit: A visit-based accrual rule. A buyer earns points for each visit. You can specify the minimum purchase required.
    case Visit = "VISIT"
    /// - Spend: A spend-based accrual rule. A buyer earns points based on the amount spent.
    case Spend = "SPEND"
    // - ItemVariation: An accrual rule based on an item variation. For example, accrue points for purchasing a coffee.
    case ItemVariation = "ITEM_VARIATION"
    /// - Caterogy: An accrual rule based on an item category. For example, accrue points for purchasing any item in the "hot drink" category: coffee, tea, or hot cocoa.
    case Caterogy = "CATEGORY"
}

/// - LoyaltyProgramAccrualRuleTaxMode: Indicates how taxes should be treated when calculating the purchase amount used for loyalty points accrual.
/// This setting applies only to SPEND accrual rules or VISIT accrual rules that have a minimum spend requirement.
/// https://developer.squareup.com/reference/square/enums/LoyaltyProgramAccrualRuleTaxMode
public enum LoyaltyProgramAccrualRuleTaxMode: String, Codable {
    /// - BeforeTax: Exclude taxes from the purchase amount used for loyalty points accrual.
    case BeforeTax = "BEFORE_TAX"
    /// - AfterTax: Include taxes in the purchase amount used for loyalty points accrual.
    case AfterTax = "AFTER_TAX"
}

/// - LoyaltyPromotionStatus: Indicates the status of a loyalty promotion.
public enum LoyaltyPromotionStatus: String, Codable {
    /// - Active: The loyalty promotion is currently active. Buyers can earn points for purchases that meet the promotion conditions, such as the promotion's available_time.
    case Active = "ACTIVE"
    /// - Ended: The loyalty promotion has ended because the specified end_date was reached. ENDED is a terminal status.
    case Ended = "ENDED"
    /// - Canceled: The loyalty promotion was canceled. CANCELED is a terminal status.
    case Canceled = "CANCELED"
    /// - Scheduled: The loyalty promotion is scheduled to start in the future. Square changes the promotion status to ACTIVE when the start_date is reached.
    case Scheduled = "SCHEDULED"
}

/// - LoyaltyPromotionIncentiveType: Indicates the type of points incentive for a loyalty promotion, which is used to determine how buyers can earn points from the promotion.
/// https://developer.squareup.com/reference/square/enums/LoyaltyPromotionIncentiveType
public enum LoyaltyPromotionIncentiveType: String, Codable {
    /// - PointsMultuplier: Multiply the number of points earned from the base loyalty program. For example, "Earn double points."
    case PointsMultuplier = "POINTS_MULTIPLIER"
    /// - PointsAddition: Add a specified number of points to those earned from the base loyalty program. For example, "Earn 10 additional points."
    case PointsAddition = "POINTS_ADDITION"
}

/// - LoyaltyPromotionTriggerLimitInterval: Indicates the time period that the trigger limit applies to, which is used to determine the number of times a buyer can earn points for a loyalty promotion.
/// https://developer.squareup.com/reference/square/enums/LoyaltyPromotionTriggerLimitInterval
public enum LoyaltyPromotionTriggerLimitInterval: String, Codable {
    /// - AllTime: The limit applies to the entire time that the promotion is active. For example, if times is set to 1 and time_period is set to ALL_TIME, a buyer can earn promotion points a maximum of one time during the promotion.
    case AllTime = "ALL_TIME"
    /// - Day: The limit applies per day, according to the available_time schedule specified for the promotion. For example, if the times field of the trigger limit is set to 1, a buyer can trigger the promotion a maximum of once per day.
    case Day = "DAY"
}

/// - LoyaltyRewardStatus: The status of the loyalty reward.
/// https://developer.squareup.com/reference/square/enums/LoyaltyRewardStatus
public enum LoyaltyRewardStatus: String, Codable {
    /// - Issued: The reward is issued.
    case Issued = "ISSUED"
    /// - Redeemed: The reward is redeemed.
    case Redeemed = "REDEEMED"
    /// - Deleted: The reward is deleted.
    case Deleted = "DELETED"
}

/// - CustomAttributeDefinitionVisibility: The level of permission that a seller or other applications requires to view this custom attribute definition.
/// The Visibility field controls who can read and write the custom attribute values and custom attribute definition.
/// https://developer.squareup.com/reference/square/enums/CustomAttributeDefinitionVisibility
public enum CustomAttributeDefinitionVisibility: String, Codable {
    /// - VisibilityHidden: The custom attribute definition and values are hidden from the seller (except on export of all seller data) and other developers.
    case VisibilityHidden = "VISIBILITY_HIDDEN"
    /// - VisibilityReadOnly: The seller and other developers can read the custom attribute definition and values on resources.
    case VisibilityReadOnly = "VISIBILITY_READ_ONLY"
    /// - VisibilityReadWriteValues: The seller and other developers can read the custom attribute definition, and can read and write values on resources. A custom attribute definition can only be edited or deleted by the application that created it.
    case VisibilityReadWriteValues = "VISIBILITY_READ_WRITE_VALUES"
}

/// - VisibilityFilter: Enumeration of visibility-filter values used to set the ability to view custom attributes or custom attribute definitions.
/// https://developer.squareup.com/reference/square/enums/VisibilityFilter
public enum VisibilityFilter: String, Codable {
    /// - All: All custom attributes or custom attribute definitions.
    case All = "ALL"
    /// - Read: All custom attributes or custom attribute definitions with the visibility field set to VISIBILITY_READ_ONLY or VISIBILITY_READ_WRITE_VALUES.
    case Read = "READ"
    /// - ReadWrite: All custom attributes or custom attribute definitions with the visibility field set to VISIBILITY_READ_WRITE_VALUES.
    case ReadWrite = "READ_WRITE"
}

/// - ProductType:
/// https://developer.squareup.com/reference/square/enums/ProductType
public enum ProductType: String, Codable {
    case TerminalApi = "TERMINAL_API"
}

/// - DeviceCodeStatus: DeviceCode.Status enum.
/// https://developer.squareup.com/reference/square/enums/DeviceCodeStatus
public enum DeviceCodeStatus: String, Codable {
    /// - Unknown: The status cannot be determined or does not exist.
    case Unknown = "UNKNOWN"
    /// - Unpaided: The device code is just created and unpaired.
    case Unpaided = "UNPAIRED"
    /// - Paired: The device code has been signed in and paired to a device.
    case Paired = "PAIRED"
    /// - Expired: The device code was unpaired and expired before it was paired.
    case Expired = "EXPIRED"
}

/// - CashDrawerShiftState: The current state of a cash drawer shift.
/// https://developer.squareup.com/reference/square/enums/CashDrawerShiftState
public enum CashDrawerShiftState: String, Codable {
    /// - Open: An open cash drawer shift.
    case Open = "OPEN"
    /// - Ended: A cash drawer shift that is ended but has not yet had an employee content audit.
    case Ended = "ENDED"
    /// - Closed: An ended cash drawer shift that is closed with a completed employee content audit and recorded result.
    case Closed = "CLOSED"
}

/// - CashDrawerEventType: The types of events on a CashDrawerShift.
/// Each event type represents an employee action on the actual cash drawer represented by a CashDrawerShift.
/// https://developer.squareup.com/reference/square/enums/CashDrawerEventType
public enum CashDrawerEventType: String, Codable {
    /// - NoSale: Triggered when a no sale occurs on a cash drawer. A CashDrawerEvent of this type must have a zero money amount.
    case NoSale = "NO_SALE"
    /// - CashTenderPayment: Triggered when a cash tender payment occurs on a cash drawer. A CashDrawerEvent of this type can must not have a negative amount.
    case CashTenderPayment = "CASH_TENDER_PAYMENT"
    /// - OtherTenderPayment: Triggered when a check, gift card, or other non-cash payment occurs on a cash drawer. A CashDrawerEvent of this type must have a zero money amount.
    case OtherTenderPayment = "OTHER_TENDER_PAYMENT"
    /// - cashTenderCancelledPayment: Triggered when a split tender bill is cancelled after cash has been tendered. A CASH_TENDER_CANCELLED_PAYMENT should have a corresponding CASH_TENDER_PAYMENT. A CashDrawerEvent of this type must not have a negative amount.
    case CashTenderCancelledPayment = "CASH_TENDER_CANCELLED_PAYMENT"
    /// - OtherTenderCancelledPayment: Triggered when a split tender bill is cancelled after a non-cash tender has been tendered. An OTHER_TENDER_CANCELLED_PAYMENT should have a corresponding OTHER_TENDER_PAYMENT. A CashDrawerEvent of this type must have a zero money amount.
    case OtherTenderCancelledPayment = "OTHER_TENDER_CANCELLED_PAYMENT"
    /// - CashTenderRefund: Triggered when a cash tender refund occurs. A CashDrawerEvent of this type must not have a negative amount.
    case CashTenderRefund = "CASH_TENDER_REFUND"
    /// - OtherTenderRefund: Triggered when an other tender refund occurs. A CashDrawerEvent of this type must have a zero money amount.
    case OtherTenderRefund = "OTHER_TENDER_REFUND"
    /// - PaidIn: Triggered when money unrelated to a payment is added to the cash drawer. For example, an employee adds coins to the drawer. A CashDrawerEvent of this type must not have a negative amount.
    case PaidIn = "PAID_IN"
    /// - PaidOut: Triggered when money is removed from the drawer for other reasons than making change. For example, an employee pays a delivery person with cash from the cash drawer. A CashDrawerEvent of this type must not have a negative amount.
    case PaidOut = "PAID_OUT"
}

/// - VendorStatus: The status of the Vendor, whether a Vendor is active or inactive.
/// https://developer.squareup.com/reference/square/enums/VendorStatus
public enum VendorStatus: String, Codable {
    /// - Active: Beta
    /// Vendor is active and can receive purchase orders.
    case Active = "ACTIVE"
    /// - Inactive: Beta
    /// Vendor is inactive and cannot receive purchase orders.
    case Inactive = "INACTIVE"
}

/// - SearchVendorsRequestSortField: The field to sort the returned Vendor objects by.
public enum SearchVendorsRequestSortField: String, Codable {
    /// - Name: Beta
    /// To sort the result by the name of the Vendor objects.
    case Name = "NAME"
    /// - CreatedAt: Beta
    /// To sort the result by the creation time of the Vendor objects.
    case CreatedAt = "CREATED_AT"
}

public enum PaymentRefundStatus: String, Codable {
    /// - Pending: Awaiting approval.
    case Pending = "PENDING"
    /// - Completed: Successfully completed.
    case Completed = "COMPLETED"
    /// - Rejected: The refund was rejected.
    case Rejected = "REJECTED"
    /// - Failed: An error occurred.
    case Failed = "FAILED"
}

public enum PaymentRefundDestinationType: String, Codable {
    case Card = "CARD"
    case BankAccount = "BANK_ACCOUNT"
    case Wallet = "WALLET"
    case BuyNowPayLater = "BUY_NOW_PAY_LATER"
    case Cash = "CASH"
    case External = "EXTERNAL"
}

public enum DestinationDetailsCardRefundDetailsEntryMethod: String, Codable {
    case Keyed = "KEYED"
    case Swiped = "SWIPED"
    case EMV = "EMV"
    case OnFile = "ON_FILE"
    case Contractless = "CONTACTLESS"
}

/// - DisputeState: The list of possible dispute states.
/// https://developer.squareup.com/reference/square/enums/DisputeState
public enum DisputeState: String, Codable {
    /// - InquiryEvidenceRequired: The initial state of an inquiry with evidence required
    case InquiryEvidenceRequired = "INQUIRY_EVIDENCE_REQUIRED"
    /// - InquiryProcessing: Inquiry evidence has been submitted and the bank is processing the inquiry
    case InquiryProcessing = "INQUIRY_PROCESSING"
    /// - InquiryClosed: The inquiry is complete
    case InquiryClosed = "INQUIRY_CLOSED"
    /// - EvidenceRequired: The initial state of a dispute with evidence required
    case EvidenceRequired = "EVIDENCE_REQUIRED"
    /// - Processing:
    case Processing = "PROCESSING"
    /// - Won: The bank has completed processing the dispute and the seller has won
    case Won = "WON"
    /// - Lost: The bank has completed processing the dispute and the seller has lost
    case Lost = "LOST"
    /// - Accepted: The seller has accepted the dispute
    case Accepted = "ACCEPTED"
}

/// - DisputeEvidenceType: The type of the dispute evidence.
/// https://developer.squareup.com/reference/square/enums/DisputeEvidenceType
public enum DisputeEvidenceType: String, Codable {
    /// - GenericEvidence: Square assumes this evidence type if you do not provide a type when uploading evidence.
    /// Use when uploading evidence as a file or string.
    case GenericEvidence = "GENERIC_EVIDENCE"
    /// - OnlineOrAppAccessLog: Server or activity logs that show proof of the cardholder’s identity and that the cardholder successfully ordered and received the goods (digitally or otherwise). Example evidence includes IP addresses, corresponding timestamps/dates, cardholder’s name and email address linked to a cardholder profile held by the seller, proof the same device and card (used in dispute) were previously used in prior undisputed transaction, and any related detailed activity.
    /// Use when uploading evidence as a file or string.
    case OnlineOrAppAccessLog = "ONLINE_OR_APP_ACCESS_LOG"
    /// - AuthorizationDocumentation: Evidence that the cardholder did provide authorization for the charge. Example evidence includes a signed credit card authorization.
    /// Use when uploading evidence as a file.
    case AuthorizationDocumentation = "AUTHORIZATION_DOCUMENTATION"
    /// - CancellationOrRefundDocumentation: Evidence that the cardholder acknowledged your refund or cancellation policy. Example evidence includes a signature or checkbox showing the cardholder’s acknowledgement of your refund or cancellation policy.
    /// Use when uploading evidence as a file or string.
    case CancellationOrRefundDocumentation = "CANCELLATION_OR_REFUND_DOCUMENTATION"
    /// - CardholderCommunication: Evidence that shows relevant communication with the cardholder. Example evidence includes emails or texts that show the cardholder received goods/services or demonstrate cardholder satisfaction.
    /// Use when uploading evidence as a file.
    case CardholderCommunication = "CARDHOLDER_COMMUNICATION"
    /// - CardholderInformation: Evidence that validates the customer's identity. Example evidence includes personally identifiable details such as name, email address, purchaser IP address, and a copy of the cardholder ID.
    /// Use when uploading evidence as a file or string.
    case CardholderInformation = "CARDHOLDER_INFORMATION"
    /// - PurchaseAcknowledgement: Evidence that shows proof of the sale/transaction. Example evidence includes an invoice, contract, or other item showing the customer’s acknowledgement of the purchase and your terms.
    /// Use when uploading evidence as a file or string.
    case PurchaseAcknowledgement = "PURCHASE_ACKNOWLEDGEMENT"
    /// - DuplicateChargeDocumentation: Evidence that shows the charges in question are valid and distinct from one another. Example evidence includes receipts, shipping labels, and invoices along with their distinct payment IDs.
    /// Use when uploading evidence as a file.
    case DuplicateChargeDocumentation = "DUPLICATE_CHARGE_DOCUMENTATION"
    /// - ProductOrServiceDescription: A description of the product or service sold.
    /// Use when uploading evidence as a file or string.
    case ProductOrServiceDescription = "PRODUCT_OR_SERVICE_DESCRIPTION"
    /// - Receipt: A receipt or message sent to the cardholder detailing the charge. Note: You do not need to upload the Square receipt; Square submits the receipt on your behalf.
    /// Use when uploading evidence as a file or string.
    case Receipt = "RECEIPT"
    /// - ServiceReceivedDocumentation: Evidence that the service was provided to the cardholder or the expected date that services will be rendered. Example evidence includes a signed delivery form, work order, expected delivery date, or other written agreements.
    /// Use when uploading evidence as a file or string.
    case ServiceReceivedDocumentation = "SERVICE_RECEIVED_DOCUMENTATION"
    /// - ProofOfDeliveryDocumentation: Evidence that shows the product was provided to the cardholder or the expected date of delivery. Example evidence includes a signed delivery form or written agreement acknowledging receipt of the goods or services.
    /// Use when uploading evidence as a file or string.
    case ProofOfDeliveryDocumentation = "PROOF_OF_DELIVERY_DOCUMENTATION"
    /// - RelatedTransactionDocumentation: Evidence that shows the cardholder previously processed transactions on the same card and did not dispute them. Note: Square automatically provides up to five distinct Square receipts for related transactions, when available.
    /// Use when uploading evidence as a file or string.
    case RelatedTransactionDocumentation = "RELATED_TRANSACTION_DOCUMENTATION"
    /// - RebuttalExplanation: An explanation of why the cardholder’s claim is invalid. Example evidence includes an explanation of why each distinct charge is a legitimate purchase, why the cardholder’s claim for credit owed due to their attempt to cancel, return, or refund is invalid per your stated policy and cardholder agreement, or an explanation of how the cardholder did not attempt to remedy the issue with you first to receive credit.
    /// Use when uploading evidence as a file or string.
    case RebuttalExplanation = "REBUTTAL_EXPLANATION"
    /// - TrackingNumber: The tracking number for the order provided by the shipping carrier. If you have multiple numbers, they need to be submitted individually as separate pieces of evidence.
    /// Use when uploading evidence as a string.
    case TrackingNumber = "TRACKING_NUMBER"
}

/// - RegisterDomainResponseStatus: The status of the domain registration.
/// https://developer.squareup.com/reference/square/enums/RegisterDomainResponseStatus
public enum RegisterDomainResponseStatus: String, Codable {
    /// - Pending: The domain is added, but not verified.
    case Pending = "PENDING"
    /// - Verified: The domain is added and verified. It can be used to accept Apple Pay transactions.
    case Verified = "VERIFIED"
}

/// - PayoutStatus: Payout status types
/// https://developer.squareup.com/reference/square/enums/PayoutStatus
public enum PayoutStatus: String, Codable {
    /// - Sent: Indicates that the payout was successfully sent to the banking destination.
    case Sent = "SENT"
    /// - Failed: Indicates that the payout was rejected by the banking destination.
    case Failed = "FAILED"
    /// - Paid: Indicates that the payout has successfully completed.
    case Paid = "PAID"
}

/// - DestinationType: List of possible destinations against which a payout can be made.
/// https://developer.squareup.com/reference/square/enums/DestinationType
public enum DestinationType: String, Codable {
    /// - BankAccount: An external bank account outside of Square.
    case BankAccount = "BANK_ACCOUNT"
    /// - Card: An external card outside of Square used for the transfer.
    case Card = "CARD"
    /// - SquareBalance: Deprecated
    case SquareBalance = "SQUARE_BALANCE"
    /// - SquareStoredBalance: Square Checking or Savings account (US), Square Card (CA)
    case SquareStoredBalance = "SQUARE_STORED_BALANCE"
}

/// - PayoutType: The type of payout: “BATCH” or “SIMPLE”.
/// BATCH payouts include a list of payout entries that can be considered settled. SIMPLE payouts do not have any payout entries associated with them and will show up as one of the payout entries in a future BATCH payout.
/// https://developer.squareup.com/reference/square/enums/PayoutType
public enum PayoutType: String, Codable {
    /// - Batch: Payouts that include a list of payout entries that can be considered settled.
    case Batch = "BATCH"
    /// - Simple: Payouts that do not have any payout entries associated with them and will show up as one of the payout entries in a future BATCH payout.
    case Simple = "SIMPLE"
}

/// - PayoutFeeType: Represents the type of payout fee that can incur as part of a payout.
/// https://developer.squareup.com/reference/square/enums/PayoutFeeType
public enum PayoutFeeType: String, Codable {
    /// - TransferFee: Fee type associated with transfers.
    case TransferFee = "TRANSFER_FEE"
    /// - TaxOnTransferFee: Taxes associated with the transfer fee.
    case TaxOnTransferFee = "TAX_ON_TRANSFER_FEE"
}

/// - ActivityType:
/// https://developer.squareup.com/reference/square/enums/ActivityType
public enum ActivityType: String, Codable {
    /// - Adjustment: A manual adjustment applied to the seller's account by Square.
    case Adjustment = "ADJUSTMENT"
    /// - AppFeeRefund: A refund for an application fee on a payment.
    case AppFeeRefund = "APP_FEE_REFUND"
    /// - AppFeeRevenue: Revenue generated from an application fee on a payment.
    case AppFeeRevenue = "APP_FEE_REVENUE"
    /// - AutomaticSavings: An automatic transfer from the payment processing balance to the Square Savings account. These are, generally, proportional to the seller's sales.
    case AutomaticSavings = "AUTOMATIC_SAVINGS"
    /// - AutomaticSavingsReserved: An automatic transfer from the Square Savings account back to the processing balance. These are, generally, proportional to the seller's refunds.
    case AutomaticSavingsReserved = "AUTOMATIC_SAVINGS_REVERSED"
    /// - Charge: A credit card payment capture.
    case Charge = "CHARGE"
    /// - DepositFee: Any fees involved with deposits such as instant deposits.
    case DepositFee = "DEPOSIT_FEE"
    /// - Dispute: The balance change due to a dispute event.
    case Dispute = "DISPUTE"
    /// - Escheatment: An escheatment entry for remittance.
    case Escheatment = "ESCHEATMENT"
    /// - Fee: The Square processing fee.
    case Fee = "FEE"
    /// - FreeProcessing: Square offers free payments processing for a variety of business scenarios, including seller referrals or when Square wants to apologize (for example, for a bug, customer service, or repricing complication). This entry represents a credit to the seller for the purposes of free processing.
    case FreeProcessing = "FREE_PROCESSING"
    /// - HoldAdjustment: An adjustment made by Square related to holding a payment.
    case HoldAdjustment = "HOLD_ADJUSTMENT"
    /// - InitialBalanceChange: An external change to a seller's balance. Initial, in the sense that it causes the creation of the other activity types, such as hold and refund.
    case InitialBalanceChange = "INITIAL_BALANCE_CHANGE"
    /// - MoneyTransfer: The balance change from a money transfer.
    case MoneyTransfer = "MONEY_TRANSFER"
    /// - MoneyTransferReversal: The reversal of a money transfer.
    case MoneyTransferReversal = "MONEY_TRANSFER_REVERSAL"
    /// - OpenDispute: The balance change for a chargeback that has been filed.
    case OpenDispute = "OPEN_DISPUTE"
    /// - Other: Any other type that does not belong in the rest of the types.
    case Other = "OTHER"
    /// - OtherAdjustment: Any other type of adjustment that does not fall under existing types.
    case OtherAdjustment = "OTHER_ADJUSTMENT"
    /// - PaidServiceFee: A fee paid to a third-party merchant.
    case PaidServiceFee = "PAID_SERVICE_FEE"
    /// - PaidServiceFeeRefund: A fee paid to a third-party merchant.
    case PaidServiceFeeRefund = "PAID_SERVICE_FEE_REFUND"
    /// - RedemptionCode: Repayment for a redemption code.
    case RedemptionCode = "REDEMPTION_CODE"
    /// - Refund: A refund for an existing card payment.
    case Refund = "REFUND"
    /// - ReleaseAdjustment: An adjustment made by Square related to releasing a payment.
    case ReleaseAdjustment = "RELEASE_ADJUSTMENT"
    /// - ReserveHold: Fees paid for funding risk reserve.
    case ReserveHold = "RESERVE_HOLD"
    /// - ReserveRelease: Fees released from risk reserve.
    case ReserveRelease = "RESERVE_RELEASE"
    /// - ReturnedPayout: An entry created when Square receives a response for the ACH file that Square sent indicating that the settlement of the original entry failed.
    case ReturnedPayout = "RETURNED_PAYOUT"
    /// - SquareCapitalPayment: A capital merchant cash advance (MCA) assessment. These are, generally, proportional to the merchant's sales but can be issued for other reasons related to the MCA.
    case SquareCapitalPayment = "SQUARE_CAPITAL_PAYMENT"
    /// - SquareCapitalReversedPayment: A capital merchant cash advance (MCA) assessment refund. These are, generally, proportional to the merchant's refunds but can be issued for other reasons related to the MCA.
    case SquareCapitalReversedPayment = "SQUARE_CAPITAL_REVERSED_PAYMENT"
    /// - SubscriptionFee: A fee charged for subscription to a Square product.
    case SubscriptionFee = "SUBSCRIPTION_FEE"
    /// - SubscriptionFeePaidRefund: A Square subscription fee that has been refunded.
    case SubscriptionFeePaidRefund = "SUBSCRIPTION_FEE_PAID_REFUND"
    /// - SubscriptionFeeRefund: The refund of a previously charged Square product subscription fee.
    case SubscriptionFeeRefund = "SUBSCRIPTION_FEE_REFUND"
    /// - TaxOnFee: The tax paid on fee amounts.
    case TaxOnFee = "TAX_ON_FEE"
    /// - ThirdPartyFee: Fees collected by a third-party platform.
    case ThirdPartyFee = "THIRD_PARTY_FEE"
    // - ThirdPartyFeeRefund: Refunded fees from a third-party platform.
    case ThirdPartyFeeRefund = "THIRD_PARTY_FEE_REFUND"
    /// - Payout: Balance change due to money transfer.
    case Payout = "PAYOUT"
    /// - AutomaticBitcoinConversions: Indicates the withholding of a portion of each payment by Square that has been automatically converted into bitcoin using Cash App. The seller manages their bitcoin in their Cash App account.
    case AutomaticBitcoinConversions = "AUTOMATIC_BITCOIN_CONVERSIONS"
    /// - AutomaticBitcoinConversionsReversed: Indicates a return of the payment withholding that had been scheduled to be converted into bitcoin using Cash App to the Square payments balance.
    case AutomaticBitcoinConversionsReversed = "AUTOMATIC_BITCOIN_CONVERSIONS_REVERSED"
    /// - CreditCardRepayment: The repayment made toward the outstanding balance on the seller's Square credit card.
    case CreditCardRepayment = "CREDIT_CARD_REPAYMENT"
    /// - CreditCardRepaymentReversed: The reversal of the repayment made toward the outstanding balance on the seller's Square credit card.
    case CreditCardRepaymentReversed = "CREDIT_CARD_REPAYMENT_REVERSED"
}

/// - GiftCardActivityType: Indicates the type of gift card activity.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityType
public enum GiftCardActivityType: String, Codable {
    
    /// - Activate: Activated a gift card with a balance. When a gift card is activated, Square changes the gift card state from PENDING to ACTIVE. A gift card must be in the ACTIVE state to be used for other balance-changing activities.
    case Activate = "ACTIVATE"
    /// - Load: Loaded a gift card with additional funds.
    case Load = "LOAD"
    /// - Redeem: Redeemed a gift card for a purchase.
    case Redeem = "REDEEM"
    /// - ClearBalance: Set the balance of a gift card to zero.
    case ClearBalance = "CLEAR_BALANCE"
    /// - Deactivate: Permanently blocked a gift card from balance-changing activities.
    case Deactivate = "DEACTIVATE"
    /// - AdjustIncrement: Added money to a gift card outside of a typical ACTIVATE, LOAD, or REFUND activity flow.
    case AdjustIncrement = "ADJUST_INCREMENT"
    /// - AdjustDecrement: Deducted money from a gift card outside of a typical REDEEM activity flow.
    case AdjustDecrement = "ADJUST_DECREMENT"
    /// - Refund: Added money to a gift card from a refunded transaction. A REFUND activity might be linked to a Square payment, depending on how the payment and refund are processed. For example:
    ///
    /// A gift card payment processed by Square can be refunded to the same gift card using Square Point of Sale, the Square Seller Dashboard, or the Refunds API.
    /// A cross-tender payment processed by Square can be refunded to a gift card using Square Point of Sale or the Square Seller Dashboard. The payment source might be a credit card or different gift card.
    /// A payment processed using a custom payment processing system can be refunded to the same gift card.
    case Refund = "REFUND"
    /// - UnlinkedActivityRefund: Added money to a gift card from a refunded transaction that was processed using a custom payment processing system and not linked to the gift card.
    case UnlinkedActivityRefund = "UNLINKED_ACTIVITY_REFUND"
    /// - Import: Imported a third-party gift card with a balance. IMPORT activities are managed by Square and cannot be created using the Gift Card Activities API.
    case Import = "IMPORT"
    /// - Block: Temporarily blocked a gift card from balance-changing activities. BLOCK activities are managed by Square and cannot be created using the Gift Card Activities API.
    case Block = "BLOCK"
    /// - Unblock: Unblocked a gift card, which enables it to resume balance-changing activities. UNBLOCK activities are managed by Square and cannot be created using the Gift Card Activities API.
    case Unblock = "UNBLOCK"
    /// - ImportReversal: Reversed the import of a third-party gift card, which sets the gift card state to PENDING and clears the balance. IMPORT_REVERSAL activities are managed by Square and cannot be created using the Gift Card Activities API.
    case ImportReversal = "IMPORT_REVERSAL"
    /// - TransferBalanceFrom: Deducted money from a gift card as the result of a transfer to the balance of another gift card. TRANSFER_BALANCE_FROM activities are managed by Square and cannot be created using the Gift Card Activities API.
    case TransferBalanceFrom = "TRANSFER_BALANCE_FROM"
    /// - TransferBalanceTo: Added money to a gift card as the result of a transfer from the balance of another gift card. TRANSFER_BALANCE_TO activities are managed by Square and cannot be created using the Gift Card Activities API.
    case TransferBalanceTo = "TRANSFER_BALANCE_TO"
}

/// - GiftCardActivityRedeemStatus: Indicates the status of a gift card redemption.
/// This status is relevant only for redemptions made from Square products (such as Square Point of Sale) because Square products use a two-state process. Gift cards redeemed using the Gift Card Activities API always have a COMPLETED status.
/// https://developer.squareup.com/reference/square/enums/GiftCardActivityRedeemStatus
public enum GiftCardActivityRedeemStatus: String, Codable {
    
    /// - Pending: The gift card redemption is pending. PENDING is a temporary status that applies when a gift card is redeemed from Square Point of Sale or another Square product. A PENDING status is updated to COMPLETED if the payment is captured or CANCELED if the authorization is voided.
    case Pending = "PENDING"
    /// - Completed: The gift card redemption is completed.
    case Completed = "COMPLETED"
    /// - Canceled: The gift card redemption is canceled. A redemption is canceled if the authorization on the gift card is voided.
    case Canceled = "CANCELED"
}

/// - ShiftStatus: Enumerates the possible status of a Shift.
/// https://developer.squareup.com/reference/square/enums/ShiftStatus
public enum ShiftStatus: String, Codable {
    
    /// - Open: Employee started a work shift and the shift is not complete
    case Open = "OPEN"
    /// - Closed: Employee started and ended a work shift.
    case Closed = "CLOSED"
}

/// - ShiftFilterStatus: Specifies the status of Shift records to be returned.
/// https://developer.squareup.com/reference/square/enums/ShiftFilterStatus
public enum ShiftFilterStatus: String, Codable {
    
    /// - Open: Shifts that have been started and not ended.
    case Open = "OPEN"
    /// - Closed: Shifts that have been started and ended.
    case Closed = "CLOSED"
}

/// - ShiftWorkdayMatcher: Defines the logic used to apply a workday filter.
/// https://developer.squareup.com/reference/square/enums/ShiftWorkdayMatcher
public enum ShiftWorkdayMatcher: String, Codable {
    
    /// - StartAt: All shifts that start on or after the specified workday
    case StartAt = "START_AT"
    /// - EndAt: All shifts that end on or before the specified workday
    case EndAt = "END_AT"
    /// - Intersection: All shifts that start between the start and end workdays (inclusive)
    case Intersection = "INTERSECTION"
}

/// - ShiftSortField: Enumerates the Shift fields to sort on.
/// https://developer.squareup.com/reference/square/enums/ShiftSortField
public enum ShiftSortField: String, Codable {
    
    /// - StartAt: The start date/time of a Shift
    case StartAt = "START_AT"
    /// - EndAt: The end date/time of a Shift
    case EndAt = "END_AT"
    /// - CreatedAt: The date/time that a Shift is created
    case CreatedAt = "CREATED_AT"
    /// - UpdatedAt: The most recent date/time that a Shift is updated
    case UpdatedAt = "UPDATED_AT"
}
