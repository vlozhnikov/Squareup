//
//  OrderLineItemAppliedServiceCharge.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - OrderLineItemAppliedServiceCharge:
/// https://developer.squareup.com/reference/square/objects/OrderLineItemAppliedServiceCharge
open class OrderLineItemAppliedServiceCharge: Codable {
 
    /// - UID: A unique ID that identifies the applied service charge only within this order.
    /// Max Length 60
    public var UID: String?
    /// - ServiceChargeUid: The uid of the service charge that the applied service charge represents. It must reference a service charge present in the order.service_charges field.
    /// This field is immutable. To change which service charges apply to a line item, delete and add a new OrderLineItemAppliedServiceCharge.
    /// Min Length 1
    /// Max Length 60
    public var ServiceChargeUid: String?
    /// - AppliedMoney: Read only The amount of money applied by the service charge to the line item.
    public var AppliedMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case ServiceChargeUid = "service_charge_uid"
        case AppliedMoney = "applied_money"
    }
}
