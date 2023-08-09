//
//  ResumeSubscriptionRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 23.06.23.
//

import Foundation

open class ResumeSubscriptionRequest: Codable {
    
    /// - ResumeEffectiveDate: The YYYY-MM-DD-formatted date when the subscription reactivated.
    @FormattedDate<YYYYMMDD_Strategy> public var ResumeEffectiveDate: Date?
    /// - ResumeChangeTiming: The timing to resume a subscription, relative to the specified resume_effective_date attribute value.
    public var ResumeChangeTiming: ChangeTiming?
    
    enum CodingKeys: String, CodingKey {
        case ResumeEffectiveDate = "resume_effective_date"
        case ResumeChangeTiming = "resume_change_timing"
    }
}
