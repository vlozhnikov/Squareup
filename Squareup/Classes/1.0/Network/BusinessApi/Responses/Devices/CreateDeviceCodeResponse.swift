//
//  CreateDeviceCodeResponse.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class CreateDeviceCodeResponse: SquareupResponse {
    
    /// - deviceCode: The created DeviceCode object containing the device code string.
    public var deviceCode: DeviceCode?
    
    enum CodingKeys: String, CodingKey {
        case deviceCode = "device_code"
    }
}
