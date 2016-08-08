//
//  ViewController.swift
//  PokemonKit-Example
//
//  Created by Yeung Yiu Hung on 8/8/2016.
//  Copyright © 2016年 Yeung Yiu Hung. All rights reserved.
//

import UIKit
import PokemonKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        PokemonKit.fetchBerryList()
            .then { berryList in
                print(berryList)
            }.onError { error in
                print(error)
        }
        
        PokemonKit.fetchBerry("1")
            .then { berryInfo in
                print(berryInfo.name)
            }.onError {error in
                print(error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

