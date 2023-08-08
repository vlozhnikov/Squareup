//
//  CatalogObject.swift
//  Business Calendar
//
//  Created by user on 29.04.23.
//

import Foundation

/// - CatalogObject: The wrapper object for the catalog entries of a given object type.
/// Depending on the type attribute value, a CatalogObject instance assumes a type-specific data to yield the corresponding type of catalog object.
/// For example, if type=ITEM, the CatalogObject instance must have the ITEM-specific data set on the item_data attribute. The resulting CatalogObject instance is also a CatalogItem instance.
/// In general, if type=<OBJECT_TYPE>, the CatalogObject instance must have the <OBJECT_TYPE>-specific data set on the <object_type>_data attribute. The resulting CatalogObject instance is also a Catalog<ObjectType> instance.
/// For a more detailed discussion of the Catalog data model, please see the Design a Catalog guide.
/// https://developer.squareup.com/reference/square/objects/CatalogObject
open class CatalogObject: Codable {
    
    /// - type: The type of this object. Each object type has expected properties expressed in a structured format within its corresponding *_data field below.
    var type: CatalogObjectType?
    /// - Id: An identifier to reference this object in the catalog. When a new CatalogObject is inserted, the client should set the id to a temporary identifier starting with a "#" character. Other objects being inserted or updated within the same request may use this identifier to refer to the new object. When the server receives the new object, it will supply a unique identifier that replaces the temporary identifier for all future references. Min Length 1
    var Id: String?
    /// - UpdatedAt: Read only Last modification timestamp in RFC 3339 format, e.g., "2016-08-15T23:59:33.123Z" would indicate the UTC time (denoted by Z) of August 15, 2016 at 23:59:33 and 123 milliseconds. Examples for January 25th, 2020 6:25:34pm Pacific Standard Time: UTC: 2020-01-26T02:25:34Z. Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedAt: Date?
    /// - Version: The version of the object. When updating an object, the version supplied must match the version in the database, otherwise the write will be rejected as conflicting.
    var Version: Int?
    /// - IsDeleted: If true, the object has been deleted from the database. Must be false for new objects being inserted. When deleted, the updated_at field will equal the deletion time.
    var IsDeleted: Bool?
    /// - CustomAttributeValues: A map (key-value pairs) of application-defined custom attribute values. The value of a key-value pair is a CatalogCustomAttributeValue object. The key is the key attribute value defined in the associated CatalogCustomAttributeDefinition object defined by the application making the request. If the CatalogCustomAttributeDefinition object is defined by another application, the CatalogCustomAttributeDefinition's key attribute value is prefixed by the defining application ID. For example, if the CatalogCustomAttributeDefinition has a key attribute of "cocoa_brand" and the defining application ID is "abcd1234", the key in the map is "abcd1234:cocoa_brand" if the application making the request is different from the application defining the custom attribute definition. Otherwise, the key used in the map is simply "cocoa_brand". Application-defined custom attributes are set at a global (location-independent) level. Custom attribute values are intended to store additional information about a catalog object or associations with an entity in another system. Do not use custom attributes to store any sensitive information (personally identifiable information, card details, etc.).
    var CustomAttributeValues: [String: CatalogCustomAttributeValue]?
    /// - CatalogV1Ids: The Connect v1 IDs for this object at each location where it is present, where they differ from the object's Connect V2 ID. The field will only be present for objects that have been created or modified by legacy APIs.
    var CatalogV1Ids: [CatalogV1Id]?
    /// - PresentAtAllLocations: If true, this object is present at all locations (including future locations), except where specified in the absent_at_location_ids field. If false, this object is not present at any locations (including future locations), except where specified in the present_at_location_ids field. If not specified, defaults to true.
    var PresentAtAllLocations: Bool?
    /// - PresentAtLocationIds: A list of locations where the object is present, even if present_at_all_locations is false. This can include locations that are deactivated.
    var PresentAtLocationIds: [String]?
    /// - AbsentAtLocationIds: A list of locations where the object is not present, even if present_at_all_locations is true. This can include locations that are deactivated.
    var AbsentAtLocationIds: [String]?
    /// - ItemData: Structured data for a CatalogItem, set for CatalogObjects of type ITEM.
    var ItemData: CatalogItem?
    /// - CategoryData: Structured data for a CatalogCategory, set for CatalogObjects of type CATEGORY.
    var CategoryData: CatalogCategory?
    /// - ItemVariationData: Structured data for a CatalogItemVariation, set for CatalogObjects of type ITEM_VARIATION.
    var ItemVariationData: CatalogItemVariation?
    /// - TaxData: Structured data for a CatalogTax, set for CatalogObjects of type TAX.
    var TaxData: CatalogTax?
    /// - DiscountData: Structured data for a CatalogDiscount, set for CatalogObjects of type DISCOUNT.
    var DiscountData: CatalogDiscount?
    /// - ModifierListData: Structured data for a CatalogModifierList, set for CatalogObjects of type MODIFIER_LIST.
    var ModifierListData: CatalogModifierList?
    /// - ModifierData: Structured data for a CatalogModifier, set for CatalogObjects of type MODIFIER.
    var ModifierData: CatalogModifier?
    /// - TimePeriodData: Structured data for a CatalogTimePeriod, set for CatalogObjects of type TIME_PERIOD
    var TimePeriodData: CatalogTimePeriod?
    /// - ProductSetData: Structured data for a CatalogProductSet, set for CatalogObjects of type PRODUCT_SET.
    var ProductSetData: CatalogProductSet?
    /// - PricingRuleData: Structured data for a CatalogPricingRule, set for CatalogObjects of type PRICING_RULE. A CatalogPricingRule object often works with a CatalogProductSet object or a CatalogTimePeriod object.
    var PricingRuleData: CatalogPricingRule?
    /// - ImageData: Structured data for a CatalogImage, set for CatalogObjects of type IMAGE.
    var ImageData: CatalogImage?
    /// - MeasurementUnitData: Structured data for a CatalogMeasurementUnit, set for CatalogObjects of type MEASUREMENT_UNIT.
    var MeasurementUnitData: CatalogMeasurementUnit?
    /// - SubscriptionPlanData: Structured data for a CatalogSubscriptionPlan, set for CatalogObjects of type SUBSCRIPTION_PLAN.
    var SubscriptionPlanData: CatalogSubscriptionPlan?
    /// - ItemOptionData: Structured data for a CatalogItemOption, set for CatalogObjects of type ITEM_OPTION.
    var ItemOptionData: CatalogItemOption?
    /// - ItemOptionValueData: Structured data for a CatalogItemOptionValue, set for CatalogObjects of type ITEM_OPTION_VAL.
    var ItemOptionValueData: CatalogItemOptionValue?
    /// - CustomAttributeDefinitionData: Structured data for a CatalogCustomAttributeDefinition, set for CatalogObjects of type CUSTOM_ATTRIBUTE_DEFINITION.
    var CustomAttributeDefinitionData: CatalogCustomAttributeDefinition?
    /// - QuickAmountsSettingsData: Structured data for a CatalogQuickAmountsSettings, set for CatalogObjects of type QUICK_AMOUNTS_SETTINGS
    var QuickAmountsSettingsData: CatalogQuickAmountsSettings?
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case Id = "id"
        case UpdatedAt = "updated_at"
        case Version = "version"
        case IsDeleted = "is_deleted"
        case CustomAttributeValues = "custom_attribute_values"
        case CatalogV1Ids = "catalog_v1_ids"
        case PresentAtAllLocations = "present_at_all_locations"
        case PresentAtLocationIds = "present_at_location_ids"
        case AbsentAtLocationIds = "absent_at_location_ids"
        case ItemData = "item_data"
        case CategoryData = "category_data"
        case ItemVariationData = "item_variation_data"
        case TaxData = "tax_data"
        case DiscountData = "discount_data"
        case ModifierListData = "modifier_list_data"
        case ModifierData = "modifier_data"
        case TimePeriodData = "time_period_data"
        case ProductSetData = "product_set_data"
        case PricingRuleData = "pricing_rule_data"
        case ImageData = "image_data"
        case MeasurementUnitData = "measurement_unit_data"
        case SubscriptionPlanData = "subscription_plan_data"
        case ItemOptionData = "item_option_data"
        case ItemOptionValueData = "item_option_value_data"
        case CustomAttributeDefinitionData = "custom_attribute_definition_data"
        case QuickAmountsSettingsData = "quick_amounts_settings_data"
    }
    
//    required public init(from decoder: Decoder) throws {
//
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//
//        self.type = try container.decodeIfPresent(CatalogObjectType.self, forKey: .type)
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        self.Version = try container.decodeIfPresent(Int.self, forKey: .Version)
//        self.IsDeleted = try container.decodeIfPresent(Bool.self, forKey: .IsDeleted)
//        self.CustomAttributeValues = try container.decodeIfPresent([String: CatalogCustomAttributeValue].self, forKey: .CustomAttributeValues)
//        self.CatalogV1Ids = try container.decodeIfPresent([CatalogV1Id].self, forKey: .CatalogV1Ids)
//        self.PresentAtAllLocations = try container.decodeIfPresent(Bool.self, forKey: .PresentAtAllLocations)
//        self.PresentAtLocationIds = try container.decodeIfPresent([String].self, forKey: .PresentAtLocationIds)
//        self.ItemData = try container.decodeIfPresent(CatalogItem.self, forKey: .ItemData)
//        self.CategoryData = try container.decodeIfPresent(CatalogCategory.self, forKey: .CategoryData)
//        self.ItemVariationData = try container.decodeIfPresent(CatalogItemVariation.self, forKey: .ItemVariationData)
//        self.TaxData = try container.decodeIfPresent(CatalogTax.self, forKey: .TaxData)
//        self.DiscountData = try container.decodeIfPresent(CatalogDiscount.self, forKey: .DiscountData)
//        self.ModifierListData = try container.decodeIfPresent(CatalogModifierList.self, forKey: .ModifierListData)
//        self.ModifierData = try container.decodeIfPresent(CatalogModifier.self, forKey: .ModifierData)
//        self.TimePeriodData = try container.decodeIfPresent(CatalogTimePeriod.self, forKey: .TimePeriodData)
//        self.ProductSetData = try container.decodeIfPresent(CatalogProductSet.self, forKey: .ProductSetData)
//        self.PricingRuleData = try container.decodeIfPresent(CatalogPricingRule.self, forKey: .PricingRuleData)
//        self.ImageData = try container.decodeIfPresent(CatalogImage.self, forKey: .ImageData)
//        self.MeasurementUnitData = try container.decodeIfPresent(CatalogMeasurementUnit.self, forKey: .MeasurementUnitData)
//        self.SubscriptionPlanData = try container.decodeIfPresent(CatalogSubscriptionPlan.self, forKey: .SubscriptionPlanData)
//        self.ItemOptionData = try container.decodeIfPresent(CatalogItemOption.self, forKey: .ItemOptionData)
//        self.ItemOptionValueData = try container.decodeIfPresent(CatalogItemOptionValue.self, forKey: .ItemOptionValueData)
//        self.CustomAttributeDefinitionData = try container.decodeIfPresent(CatalogCustomAttributeDefinition.self, forKey: .CustomAttributeDefinitionData)
//        self.QuickAmountsSettingsData = try container.decodeIfPresent(CatalogQuickAmountsSettings.self, forKey: .QuickAmountsSettingsData)
//    }
}
