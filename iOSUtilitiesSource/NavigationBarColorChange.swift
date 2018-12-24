

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
