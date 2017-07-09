//
//  RightToLeftAnim.swift
//  modalDemo
//
//  Created by caijinglong on 2017/7/8.
//

import UIKit

class RightToLeftAnim: NSObject,UIViewControllerAnimatedTransitioning {
    
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 1
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let container = transitionContext.containerView
        let toView = transitionContext.view(forKey: UITransitionContextViewKey.to)
        
        container.addSubview(toView!)
        
//        UIView.animate(withDuration: <#T##TimeInterval#>, delay: <#T##TimeInterval#>, options: <#T##UIViewAnimationOptions#>, animations: <#T##() -> Void#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
    }
    
}
