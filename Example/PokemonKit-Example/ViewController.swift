//
//  ViewController.swift
//  PokemonKit-Example
//
//  Created by Yeung Yiu Hung on 8/8/2016.
//  Copyright © 2016年 Yeung Yiu Hung. All rights reserved.
//

import UIKit
import PokemonKit
import PromiseKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        PokemonKit.fetchBerry("1").done({ berry in
            print(berry.name!)
        })

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

