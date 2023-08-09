//
//  SubscriptionPhase.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.05.23.
//

import Foundation

/// - SubscriptionPhase: Describes a phase in a subscription plan.
/// https://developer.squareup.com/reference/square/objects/SubscriptionPhase
open class SubscriptionPhase: Codable {
    
    /// - UID: The Square-assigned ID of the subscription phase. This field cannot be changed after a SubscriptionPhase is created.
    public var UID: String?
    /// - Cadence: Required
    /// The billing cadence of the phase. For example, weekly or monthly. This field cannot be changed after a SubscriptionPhase is created.
    public var Cadence: SubscriptionCadence?
    /// - Periods: The number of cadences the phase lasts. If not set, the phase never ends. Only the last phase can be indefinite. This field cannot be changed after a SubscriptionPhase is created.
    public var Periods: Int?
    /// - RecurringPriceMoney: The amount to bill for each cadence. Failure to specify this field results in a MISSING_REQUIRED_PARAMETER error at runtime.
    public var RecurringPriceMoney: Money?
    /// - Ordinal: The position this phase appears in the sequence of phases defined for the plan, indexed from 0. This field cannot be changed after a SubscriptionPhase is created.
    public var Ordinal: Int?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case Cadence = "cadence"
        case Periods = "periods"
        case RecurringPriceMoney = "recurring_price_money"
        case Ordinal = "ordinal"
    }
}
