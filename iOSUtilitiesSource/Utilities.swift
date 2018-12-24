
import Foundation

public class Utilities {
    
    private init() {
        
    }
    
    
    public static func getFormattedDateString(inputDateString: String, inputDateFormat: String, outputDateFormat: String) -> String?{
        let dateFormatterInput = DateFormatter()
        dateFormatterInput.dateFormat = inputDateFormat//"yyyy-MM-dd HH:mm:ss"
        
        let dateFormatterOutput = DateFormatter()
        dateFormatterOutput.dateFormat = outputDateFormat//"EEEE, MMM dd hh:mm a"
        
        if let date = dateFormatterInput.date(from: inputDateString) {
            return (dateFormatterOutput.string(from: date))
        } else {
            return nil
        }
    }
    
    public static func isThisDateInPast(inputDateString: String, inputDateFormat: String) -> Bool{
        let dateFormatterInput = DateFormatter()
        dateFormatterInput.dateFormat = inputDateFormat//"yyyy-MM-dd HH:mm:ss"
        let intputDateTime = dateFormatterInput.date(from: inputDateString)
        if let inputDateTime = intputDateTime{
            if(inputDateTime.timeIntervalSinceNow.sign == .minus){
                return true
            }else{
                return false
            }
        }else{
            return false
        }
    }
    
    public static func isThisDateInFuture(inputDateString: String, inputDateFormat: String) -> Bool{
        let dateFormatterInput = DateFormatter()
        dateFormatterInput.dateFormat = inputDateFormat//"yyyy-MM-dd HH:mm:ss"
        let intputDateTime = dateFormatterInput.date(from: inputDateString)
        if let inputDateTime = intputDateTime{
            if(inputDateTime.timeIntervalSinceNow.sign == .plus){
                return true
            }else{
                return false
            }
        }else{
            return false
        }
    }
    
}
