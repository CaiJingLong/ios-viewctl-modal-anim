//
//  ViewController.swift
//  modalDemo
//
//  Created by caijinglong on 2017/7/7.
//  Copyright © 2017年 caijinglong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    override func segueForUnwinding(to toViewController: UIViewController, from fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue? {
//        return super.segueForUnwinding(to: toViewController, from: fromViewController, identifier: identifier)
//    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        NSLog("unwind")
    }
    
    @IBAction func unWindFromSeque(_ seque:UIStoryboardSegue) {
        
    }
}


