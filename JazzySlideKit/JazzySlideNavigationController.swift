//
//  JazzySlideNavigationController.swift
//  JazzySlideKit
//
//  Created by Kyler Jensen on 7/3/18.
//  Copyright © 2018 Kyler Jensen. All rights reserved.
//

import UIKit

@objc
@objcMembers
@available(iOS 10.0, *)
open class JazzySlideNavigationController: UINavigationController {
    
    private var jazzySlideDelegate = JazzySlideNavigationControllerDelegate()
    
    public var pushTransition: JazzySlideTransition {
        get { return jazzySlideDelegate.pushTransition }
        set { jazzySlideDelegate.pushTransition = newValue }
    }
    
    public var popTransition: JazzySlideTransition {
        get { return jazzySlideDelegate.popTransition }
        set { jazzySlideDelegate.popTransition = newValue }
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        super.delegate = jazzySlideDelegate
    }
    
    open override var delegate: UINavigationControllerDelegate? {
        get {
            return jazzySlideDelegate
        }
        set {
            guard let newValue = newValue as? JazzySlideNavigationControllerDelegate else {
                NSLog("Warning: It looks like you are trying to set a value for JazzySlideNavigationController.delegate to something other than an instance of JazzySlideNavigationControllerDelegate. This is an unsupported operation. No action will be performed.")
                return
            }
            jazzySlideDelegate = newValue
            super.delegate = newValue
        }
    }
    
}
