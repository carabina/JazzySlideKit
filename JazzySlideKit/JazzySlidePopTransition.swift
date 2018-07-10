//
//  JazzySlidePopTransition.swift
//  JazzySlideKit
//
//  Created by Kyler Jensen on 7/3/18.
//  Copyright © 2018 Kyler Jensen. All rights reserved.
//

import UIKit

@objc
@objcMembers
@available(iOS 10.0, *)
open class JazzySlidePopTransition: JazzySlideTransition {
    
    override open func initialTransform(for transitionContext: UIViewControllerContextTransitioning, fromView: UIView, toView: UIView) -> CGAffineTransform {
        return CGAffineTransform(translationX: fromView.frame.width.negated, y: 0)
    }
    
    override open func finalTransform(for transitionContext: UIViewControllerContextTransitioning, fromView: UIView, toView: UIView) -> CGAffineTransform {
        return CGAffineTransform(translationX: fromView.frame.width, y: 0)
    }

}
