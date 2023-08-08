//
//  CreateDeviceCodeRequest.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

internal class CreateDeviceCodeRequest: Codable {
    
    /// - IdempotencyKey: A unique string that identifies this CreateDeviceCode request. Keys can be any valid string but must be unique for every CreateDeviceCode request.
    /// See Idempotency keys for more information.
    /// Min Length 1
    /// Max Length 128
    var IdempotencyKey: String?
    /// - deviceCode: The device code to create.
    var deviceCode: DeviceCode?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case deviceCode = "device_code"
    }
}
