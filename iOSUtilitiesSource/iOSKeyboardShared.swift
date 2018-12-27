//
//  iOSKeyboardShared.swift
//  TestAnother
//
//  Created by Jamil Hasnine Tamim on 27/12/18.
//  Copyright © 2018 SSL Wireless Limited. All rights reserved.
//

import Foundation
import UIKit

public final class iOSKeyboardShared {
    
    public static let shared = iOSKeyboardShared()
    var isKeyboardAppear = false
    var view: UIView?
    
    public func keyBoardShowHide(view : UIView){
        self.view = view
        hideKeyboardWhenTappedAround()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if !isKeyboardAppear {
            if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                if self.view?.frame.origin.y == 0{
                    self.view?.frame.origin.y -= keyboardSize.height/2
                }
            }
            isKeyboardAppear = true
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification,view: UIView) {
        if isKeyboardAppear {
            if ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil {
                if self.view?.frame.origin.y != 0{
                    self.view?.frame.origin.y = 0
                }
            }
            isKeyboardAppear = false
        }
    }
    
    public func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view!.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view!.endEditing(true)
    }
    
}
