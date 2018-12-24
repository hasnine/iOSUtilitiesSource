

import Foundation

public class PreferencesUtils {
    
    private init() {
    
    }
    
    public static func setBoolData(boolValue: Bool, dataName: String) {
        UserDefaults.standard.set(boolValue, forKey: dataName)
    }
    
    public static func getBoolData(dataName: String)-> Bool{
        
        let defaults = UserDefaults.standard
        
        if(defaults.value(forKey: dataName) != nil) {
            return defaults.value(forKey: dataName)! as! Bool
            
        } else {
            return false
        }
    }
    
    public static func saveStringData(data: String, dataName: String){
        let preferences = UserDefaults.standard
        preferences.set(data, forKey: dataName)
        let didSave = preferences.synchronize()
        if !didSave {
            debugPrint("Not saved yet")
        }
    }
    
    public static func getSavedStringData(dataName: String)-> String{
        let defaults = UserDefaults.standard
        if(defaults.value(forKey: dataName) != nil){
            return defaults.value(forKey: dataName) as! String
        } else {
            return ""
        }
    }
    
    public static func saveIntData(data : Int, dataName: String){
        let preferences = UserDefaults.standard
        preferences.set(data, forKey: dataName)
        let didSave = preferences.synchronize()
        if !didSave {
            debugPrint("Not saved yet")
        }
    }
    
    public static func getSavedIntData(dataName: String) -> Int {
        let defaults = UserDefaults.standard
        if(defaults.value(forKey: dataName) != nil){
            return defaults.value(forKey: dataName) as! Int
        }else{
            return 0
        }
    }
    
}
