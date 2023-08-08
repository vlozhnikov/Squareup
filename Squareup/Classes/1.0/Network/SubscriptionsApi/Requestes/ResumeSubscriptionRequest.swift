//
//  ResumeSubscriptionRequest.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class ResumeSubscriptionRequest: Codable {
    
    /// - ResumeEffectiveDate: The YYYY-MM-DD-formatted date when the subscription reactivated.
//    var ResumeEffectiveDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> public var ResumeEffectiveDate: Date?
    /// - ResumeChangeTiming: The timing to resume a subscription, relative to the specified resume_effective_date attribute value.
    public var ResumeChangeTiming: ChangeTiming?
    
    enum CodingKeys: String, CodingKey {
        case ResumeEffectiveDate = "resume_effective_date"
        case ResumeChangeTiming = "resume_change_timing"
    }
    
//    required init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ResumeEffectiveDate), !dateString.isEmpty {
//            self.ResumeEffectiveDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .ResumeEffectiveDate)
//        }
//        self.ResumeChangeTiming = try container.decodeIfPresent(ChangeTiming.self, forKey: .ResumeChangeTiming)
//    }
}
