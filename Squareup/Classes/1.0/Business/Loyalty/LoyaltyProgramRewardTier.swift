//
//  LoyaltyProgramRewardTier.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyProgramRewardTier: Represents a reward tier in a loyalty program.
/// A reward tier defines how buyers can redeem points for a reward, such as the number of points required and the value and scope of the discount. A loyalty program can offer multiple reward tiers.
/// https://developer.squareup.com/reference/square/objects/LoyaltyProgramRewardTier
open class LoyaltyProgramRewardTier: Codable {
    
    /// - Id: Read only The Square-assigned ID of the reward tier.
    /// Max Length 36
    public var Id: String?
    /// - Points: The points exchanged for the reward tier.
    /// Min 1
    public var Points: Int?
    /// - Name: Read only The name of the reward tier.
    public var Name: String?
    /// - Definition: Read only Provides details about the reward tier definition. DEPRECATED at version 2020-12-16. Replaced by the pricing_rule_reference field.
    public var Definition: LoyaltyProgramRewardDefinition?
    /// - CreatedAt: Read only The timestamp when the reward tier was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - PricingRuleReference: A reference to the specific version of a PRICING_RULE catalog object that contains information about the reward tier discount.
    /// Use object_id and catalog_version with the RetrieveCatalogObject endpoint to get discount details. Make sure to set include_related_objects to true in the request to retrieve all catalog objects that define the discount. For more information, see Getting discount details for a reward tier.
    public var PricingRuleReference: CatalogObjectReference?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Points = "points"
        case Name = "name"
        case Definition = "definition"
        case CreatedAt = "created_at"
        case PricingRuleReference = "pricing_rule_reference"
    }
}
