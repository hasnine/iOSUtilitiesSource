//
//  NavigationBarColorChange.swift
//  iOSUtilitiesSource
//
//  Created by Jamil Hasnine Tamim on 20/12/18.
//  Copyright © 2018 SSL Wireless Limited. All rights reserved.
//

import Foundation

public class NavigationBarColorChange {
    
    private init (){
        
    }
    
   public static func changeNavigationBarColor(barTintColor: UIColor, tintColor: UIColor,forgroundColor: UIColor, isTranslucent: Bool){
        UINavigationBar.appearance().barTintColor = barTintColor
        UINavigationBar.appearance().tintColor = tintColor
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: forgroundColor]
        UINavigationBar.appearance().isTranslucent = isTranslucent
    }
}
