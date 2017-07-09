//
//  LeftToRightSeque.swift
//  modalDemo
//
//  Created by caijinglong on 2017/7/8.
//

import UIKit

class LeftToRightSeque: UIStoryboardSegue {

    override init(identifier: String?, source: UIViewController, destination: UIViewController) {
        super.init(identifier: identifier, source: source, destination: destination)
        NSLog("LeftToRightSeque init")
    }
    
    override func perform() {
        NSLog("ltr perform")
        
        let firstView = self.source.view as UIView
        let secondView = self.destination.view as UIView
        
        NSLog("source = \(self.source)")
        NSLog("target = \(self.destination)")
        
        let size = UIScreen.main.bounds.size
        let width = size.width
        let height = size.height
        
        firstView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        secondView.frame = CGRect(x: -width, y: 0, width: width, height: height)
        
//        let window = UIApplication.shared.keyWindow
//        window?.insertSubview(secondView, aboveSubview: firstView)
        
        NSLog("anim start")
//        UIView.transition(with: firstView, duration: 1, options: .curveEaseIn, animations: {
////            firstView.frame.offsetBy(dx: width, dy: 0)
//            firstView.frame.origin.x = width
//            NSLog("second animing")
//        }) { (result) in
//            self.source.dismiss(animated: false, completion: nil)
//            NSLog("result = \(result)")
//        }
        
//        UIView.animate(withDuration: 1) { 
//            firstView.frame.origin.x = width
//        }
        
//        UIView.animate(withDuration: 1, animations: { 
//            firstView.frame.origin.x = width
//            secondView.frame.origin.x = 0
//        }) { (result) in
//            self.source.dismiss(animated: false, completion: { 
//                
//            })
//        }
        
        UIView.transition(with: firstView, duration: 1, options: UIViewAnimationOptions.curveEaseIn, animations: {
            firstView.frame.origin.x = width
            secondView.frame.origin.x = 0
        }) { (result) in
            self.source.dismiss(animated: false, completion: {
                
            })
        }
        
//        
//        UIView.transition(with: secondView, duration: 1, options: .curveEaseIn, animations: {
////            secondView.frame.offsetBy(dx: width, dy: 0)
//            secondView.frame.origin.x = 0
//            NSLog("first animing")
//        }) { (result) in
//            NSLog("result = \(result)")
//
//        }
    }
    
}
