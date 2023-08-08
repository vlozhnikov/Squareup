//
//  SwapPlanRequest.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

internal class SwapPlanRequest: Codable {
    
    /// - NewPlanVariationId: The ID of the new subscription plan variation.
    /// This field is required.
    var NewPlanVariationId: String?
    /// - Phases: A list of PhaseInputs, to pass phase-specific information used in the swap.
    var Phases: [PhaseInput]?
    
    enum CodingKeys: String, CodingKey {
        case NewPlanVariationId = "new_plan_variation_id"
        case Phases = "phases"
    }
}
