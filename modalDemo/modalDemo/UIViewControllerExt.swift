//
//  UIViewControllerExt.swift
//  modalDemo
//
//  Created by caijinglong on 2017/7/9.
//

import UIKit

extension UIViewController {
    
    func dismissModal(duration:TimeInterval,anim:ModalAnim,destinationView:UIView){
        self.anim(duration: duration, anim: anim, destinationView: destinationView) {
            self.dismiss(animated: false, completion: {
            })
        }
    }
    
    func presentModal(duration:TimeInterval,anim:ModalAnim,destinationViewContoller:UIViewController){
        self.anim(duration: duration, anim: anim, destinationView: destinationViewContoller.view) {
            self.present(destinationViewContoller, animated: false, completion: {
            })
        }
    }

    func anim(duration:TimeInterval,anim:ModalAnim,destinationView:UIView,block:@escaping ()->()){
        let width = self.view.frame.width
        let height = self.view.frame.height
        
        self.view.window?.insertSubview(destinationView, aboveSubview: self.view)
        
        if(anim == .leftToRight){
            destinationView.frame = CGRect(x: -width, y: 0, width: width, height: height)
            UIView.animate(withDuration: 0.3, animations: {
                self.view.frame.origin.x = (self.view.frame.width)
                destinationView.frame.origin.x = 0
            }) { (result) in
                block()
            }
        }else if(anim == .rightToLeft){
            destinationView.frame = CGRect(x: width, y: 0, width: width, height: height)
            UIView.animate(withDuration: 0.3, animations: {
                self.view.frame.origin.x = -(self.view.frame.width)
                destinationView.frame.origin.x = 0
            }) { (result) in
                block()
            }
        }
    }
    
    enum ModalAnim:Int {
        case leftToRight = 1,rightToLeft
    }
}

