//
//  PauseSubscriptionRequest.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class PauseSubscriptionRequest: Codable {
    
    /// - PauseEffectiveDate: The YYYY-MM-DD-formatted date when the scheduled PAUSE action takes place on the subscription.
    /// When this date is unspecified or falls within the current billing cycle, the subscription is paused on the starting date of the next billing cycle
//    var PauseEffectiveDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> public var PauseEffectiveDate: Date?
    /// - PauseCycleDuration: The number of billing cycles the subscription will be paused before it is reactivated.
    /// When this is set, a RESUME action is also scheduled to take place on the subscription at the end of the specified pause cycle duration. In this case, neither resume_effective_date nor resume_change_timing may be specified.
    public var PauseCycleDuration: Int?
    /// - ResumeEffectiveDate: The date when the subscription is reactivated by a scheduled RESUME action. This date must be at least one billing cycle ahead of pause_effective_date
//    var ResumeEffectiveDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> public var ResumeEffectiveDate: Date?
    /// - ResumeChangeTiming: The timing whether the subscription is reactivated immediately or at the end of the billing cycle, relative to resume_effective_date.
    public var ResumeChangeTiming: ChangeTiming?
    /// - PauseReason: The user-provided reason to pause the subscription.
    /// Max Length 255
    public var PauseReason: String?
    
    enum CodingKeys: String, CodingKey {
        case PauseEffectiveDate = "pause_effective_date"
        case PauseCycleDuration = "pause_cycle_duration"
        case ResumeEffectiveDate = "resume_effective_date"
        case ResumeChangeTiming = "resume_change_timing"
        case PauseReason = "pause_reason"
    }
    
//    required init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .PauseEffectiveDate), !dateString.isEmpty {
//            self.PauseEffectiveDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .PauseEffectiveDate)
//        }
//        self.PauseCycleDuration = try container.decodeIfPresent(Int.self, forKey: .PauseCycleDuration)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ResumeEffectiveDate), !dateString.isEmpty {
//            self.ResumeEffectiveDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .ResumeEffectiveDate)
//        }
//        self.ResumeChangeTiming = try container.decodeIfPresent(ChangeTiming.self, forKey: .ResumeChangeTiming)
//        self.PauseReason = try container.decodeIfPresent(String.self, forKey: .PauseReason)
//    }
}
