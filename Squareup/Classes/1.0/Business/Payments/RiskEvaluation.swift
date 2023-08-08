//
//  RiskEvaluation.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

/// - RiskEvaluation: Represents fraud risk information for the associated payment.
/// When you take a payment through Square's Payments API (using the CreatePayment endpoint), Square evaluates it and assigns a risk level to the payment. Sellers can use this information to determine the course of action (for example, provide the goods/services or refund the payment).
/// https://developer.squareup.com/reference/square/objects/RiskEvaluation
open class RiskEvaluation: Codable {
    
    /// - CreatedAt: Read only The timestamp when payment risk was evaluated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - RiskLevel: The risk level associated with the payment
    var RiskLevel: RiskEvaluationRiskLevel?
    
    enum CodingKeys: String, CodingKey {
        case CreatedAt = "created_at"
        case RiskLevel = "risk_level"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        self.RiskLevel = try container.decodeIfPresent(RiskEvaluationRiskLevel.self, forKey: .RiskLevel)
//    }
}
