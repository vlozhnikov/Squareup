//
//  PhaseInput.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

/// - PhaseInput: Represents the arguments used to construct a new phase.
/// https://developer.squareup.com/reference/square/objects/PhaseInput
open class PhaseInput: Codable {
    
    /// - Ordinal: index of phase in total subscription plan
    public var Ordinal: Int?
    /// - OrderTemplateId: id of order to be used in billing
    public var OrderTemplateId: String?
    
    enum CodingKeys: String, CodingKey {
        case Ordinal = "ordinal"
        case OrderTemplateId = "order_template_id"
    }
}
