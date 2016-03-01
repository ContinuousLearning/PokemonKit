//
//  ViewController.swift
//  PokemonKit
//
//  Created by Yeung Yiu Hung on 02/28/2016.
//  Copyright (c) 2016 Yeung Yiu Hung. All rights reserved.
//

import UIKit
import PokemonKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PokemonKit.fetchBerryList()
            .then { berryList in
                print(berryList)
            }.error { error in
                print(error)
        }
        
        PokemonKit.fetchBerry("1")
            .then { berryInfo in
                self.testLabel.text = berryInfo.name;
            }.error {error in
                print(error)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

