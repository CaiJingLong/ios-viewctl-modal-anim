//
//  SecondViewController.swift
//  modalDemo
//
//  Created by caijinglong on 2017/7/7.
//  Copyright © 2017年 caijinglong. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func dismis(_ sender: Any) {
        dismissModal(duration: 0.3, anim: .leftToRight, destinationView: (self.presentingViewController?.view)!)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.beginAppearanceTransition(false, animated: animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.endAppearanceTransition()
    }
}
