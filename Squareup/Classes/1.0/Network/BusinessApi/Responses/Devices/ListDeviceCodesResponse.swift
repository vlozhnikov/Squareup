//
//  ListDeviceCodesResponse.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class ListDeviceCodesResponse: SquareupResponse {
    
    /// - DeviceCodes: The queried DeviceCode.
    public var DeviceCodes: [DeviceCode]?
    
    enum CodingKeys: String, CodingKey {
        case DeviceCodes = "device_codes"
    }
}
