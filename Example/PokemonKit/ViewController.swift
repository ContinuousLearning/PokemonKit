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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PokemonKit.fetchBerryList({ (result) -> Void in
//            print(result);
            }) { (error) -> Void in
                print(error)
        }
        
        PokemonKit.fetchBerry("1",
            completion: { (result) -> Void in
                print("Berry name: \(result.name)")
            }) { (error) -> Void in
                print(error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

