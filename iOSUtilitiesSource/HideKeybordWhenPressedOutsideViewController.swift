//
//  HideKeybordWhenPressedOutsideViewController.swift
//  Prohori
//
//  Created by Tamim AITS on 1/18/18.
//  Copyright © 2018 Tamim AITS. All rights reserved.
//


import UIKit

@available(iOS 9.0, *)
extension UIViewController {
    public func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

