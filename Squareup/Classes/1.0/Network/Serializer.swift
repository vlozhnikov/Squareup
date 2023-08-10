//
//  FSerializer.swift
//  Pazitive
//
//  Created by Владимир on 22.01.2019.
//  Copyright © 2019 ciferton. All rights reserved.
//

import Foundation

open class Serializer {
    
    public class func deserialize<T>(_ object: T.Type, _ json: [String: Any]?, _ id: String = "") -> T! where T : Decodable {
        
        if json == nil {
            return nil
        }
        
        do {
            
            let jsonData = try JSONSerialization.data(withJSONObject: json!, options: [])
            let decoder = JSONDecoder()
            
            let fobject = try! decoder.decode(object, from: jsonData)
            return fobject
        }
        catch {
            print(error)
        }
        
        return nil
    }
    
    public class func serialize<T>(_ object: T) throws -> [String: Any] where T: Encodable {
        
        let encoder = JSONEncoder()
        
        let jsonData = try encoder.encode(object)
        let encoded = try JSONSerialization.jsonObject(with: jsonData)
        if let encoded = encoded as? [String : Any] {
            return encoded
        }
        
        return [:]
    }
    
    public class func serialize<T>(_ object: T) -> String? where T: Encodable {
        
        let encoder = JSONEncoder()
        
        if let jsonData = try? encoder.encode(object) {
            let result = String(data: jsonData, encoding: .utf8)
            return result
        }
        
        return nil
    }
}
