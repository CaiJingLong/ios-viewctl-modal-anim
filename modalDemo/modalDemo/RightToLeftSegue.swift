//
//  RightToLeftSegue.swift
//  modalDemo
//
//  Created by caijinglong on 2017/7/7.
//

import UIKit

class RightToLeftSegue: UIStoryboardSegue {
    
    override func perform() {
//        let firstView = self.source.view as UIView
//        let secondView = self.destination.view as UIView
//        
//        let size = UIScreen.main.bounds.size
//        let width = size.width
//        let height = size.height
//        
//        secondView.frame = CGRect(x: width, y: 0, width: width, height: height)
//        
//        let window = UIApplication.shared.keyWindow
//        window?.insertSubview(secondView, aboveSubview: firstView)
//        
//        UIView.transition(with: firstView, duration: 0.3, options: .curveEaseIn, animations: {
//            firstView.frame.origin.x = -width
//            secondView.frame.origin.x = 0
//           
//        }) { (result) in
//            self.source.present(self.destination, animated: false, completion: {
//            })
//        }
        
        self.source.presentModal(duration: 0.3, anim: .rightToLeft, destinationViewContoller: self.destination)
    }
    
}
