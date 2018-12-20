//
//  Utilities.swift
//  TestingProject
//
//  Created by Jamil Hasnine Tamim on 19/12/18.
//  Copyright © 2018 SSL Wireless Limited. All rights reserved.
//

import Foundation

public class Utilities {
    
    private init() {
        
    }
    
    
    public static func getDisplayableDateStringForPosts(inputDateString: String) -> String?{
        let dateFormatterInput = DateFormatter()
        dateFormatterInput.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let dateFormatterOutput = DateFormatter()
        dateFormatterOutput.dateFormat = "EEEE, MMM dd hh:mm a"
        
        if let date = dateFormatterInput.date(from: inputDateString) {
            return (dateFormatterOutput.string(from: date))
        } else {
            return nil
        }
    }
    
    public static func isThisDateInPast(inputDateString: String) -> Bool{
        let dateFormatterInput = DateFormatter()
        dateFormatterInput.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let intputDateTime = dateFormatterInput.date(from: inputDateString)
        if let inputDateTime = intputDateTime{
            if(inputDateTime.timeIntervalSinceNow.sign == .minus){
                return true
            }else{
                return false
            }
        }else{
            return true
        }
    }
    
}
