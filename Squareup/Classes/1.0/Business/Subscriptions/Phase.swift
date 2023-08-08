//
//  Phase.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

/// - Phase: Represents a phase, which can override subscription phases as defined by plan_id
/// https://developer.squareup.com/reference/square/objects/Phase
open class Phase: Codable {
    
    /// - UID: id of subscription phase
    var UID: String?
    /// - Ordinal: index of phase in total subscription plan
    var Ordinal: Int?
    /// - OrderTemplateId: id of order to be used in billing
    var OrderTemplateId: String?
    /// - PlanPhaseUid: the uid from the plan's phase in catalog
    var PlanPhaseUid: String?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case Ordinal = "ordinal"
        case OrderTemplateId = "order_template_id"
        case PlanPhaseUid = "plan_phase_uid"
    }
}
