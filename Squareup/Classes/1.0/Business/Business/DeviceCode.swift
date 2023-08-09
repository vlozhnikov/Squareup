//
//  DeviceCode.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

/// - DeviceCode:
/// https://developer.squareup.com/reference/square/objects/DeviceCode
open class DeviceCode: Codable {
    
    /// - Id: Read only The unique id for this device code.
    public var Id: String?
    /// - Name: An optional user-defined name for the device code.
    /// Max Length 128
    public var Name: String?
    /// - Code: Read only The unique code that can be used to login.
    public var Code: String?
    /// - DeviceId: Read only The unique id of the device that used this code. Populated when the device is paired up.
    public var DeviceId: String?
    /// - productType: The targeting product type of the device code.
    public var productType: ProductType?
    /// - LocationId: The location assigned to this code.
    /// Max Length 50
    public var LocationId: String?
    /// - Status: Read only The pairing status of the device code.
    public var Status: DeviceCodeStatus?
    /// - PairBy: Read only When this DeviceCode will expire and no longer login. Timestamp in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var PairBy: Date?
    /// - CreatedAt: Read only When this DeviceCode was created. Timestamp in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - StatusChangedAt: Read only When this DeviceCode's status was last changed. Timestamp in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var StatusChangedAt: Date?
    /// - PairedAt: Read only When this DeviceCode was paired. Timestamp in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var PairedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Name = "name"
        case Code = "code"
        case DeviceId = "device_id"
        case productType = "product_type"
        case LocationId = "location_id"
        case Status = "status"
        case PairBy = "pair_by"
        case CreatedAt = "created_at"
        case StatusChangedAt = "status_changed_at"
        case PairedAt = "paired_at"
    }
}
