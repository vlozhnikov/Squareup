//
//  ViewController.swift
//  Squareup
//
//  Created by vlozhnikov on 08/08/2023.
//  Copyright (c) 2023 vlozhnikov. All rights reserved.
//

import UIKit
import Squareup

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let APPLICATION_ID = "L5HXJCY39G6ZC"
        let SQUARE_LOCATION_ID = "sandbox-sq0idb-6vx7hwAFizH4Yk4VT0RIpQ"
        
        SquareupConfigurer.shared.setup(applicationId: APPLICATION_ID,
                                        squareLocationId: SQUARE_LOCATION_ID,
                                        type: .dev)
        
        let accessToken = "EAAAELomtEFZcVnhGtBahhaS4mCJloHthX8xvYrJHHLs_9WqacbOIpfJ4pXhgCO6"
        
        BusinessApi.locations.listLocations(accessToken: accessToken, completion: { response in
            print(response.Locations)
        }) { error in
            print(error.localizedDescription)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

