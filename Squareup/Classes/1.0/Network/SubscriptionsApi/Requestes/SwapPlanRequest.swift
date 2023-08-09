//
//  SwapPlanRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 23.06.23.
//

import Foundation

open class SwapPlanRequest: Codable {
    
    /// - NewPlanVariationId: The ID of the new subscription plan variation.
    /// This field is required.
    public var NewPlanVariationId: String?
    /// - Phases: A list of PhaseInputs, to pass phase-specific information used in the swap.
    public var Phases: [PhaseInput]?
    
    enum CodingKeys: String, CodingKey {
        case NewPlanVariationId = "new_plan_variation_id"
        case Phases = "phases"
    }
}
