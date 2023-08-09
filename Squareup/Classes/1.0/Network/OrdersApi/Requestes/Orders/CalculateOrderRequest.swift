//
//  CalculateOrderRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 11.06.23.
//

import Foundation

open class CalculateOrderRequest: Codable {
    
    /// - order: The order to be calculated. Expects the entire order, not a sparse update.
    public var order: Order?
    /// - ProposedRewards: Identifies one or more loyalty reward tiers to apply during the order calculation. The discounts defined by the reward tiers are added to the order only to preview the effect of applying the specified rewards. The rewards do not correspond to actual redemptions; that is, no rewards are created. Therefore, the reward ids are random strings used only to reference the reward tier.
    public var ProposedRewards: [OrderReward]?
    
    enum CodingKeys: String, CodingKey {
        case order = "order"
        case ProposedRewards = "proposed_rewards"
    }
}
