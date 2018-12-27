# iOSUtilitiesSource
All types of swift utilities and necessary settings included in this library.
 - Local data save in preferences 
 - Internet check 
 - Date convertion
 - String check 
 - Button round 
 - View round
 - Floating textField
 - Hide keyboard when tapped around
 - Toast message show
 - SimpleGradientView
 - GIF image loader
 - Keyboard show/hide with view up/down


# Pod Setup
Just add this line in your pod file:

     pod 'iOSUtilitiesSource', :git => 'https://github.com/hasnine/iOSUtilitiesSource.git'

# Usage
First import library to your ViewController

    #import iOSUtilitiesSource 
- For data save in preferences:

Save your data in preferences with line:

    PreferencesUtils.saveStringData(data: "YOUR_DATA", dataName: "YOUR_KEY")
and for get this saved data : 

    PreferencesUtils.getSavedStringData(dataName: "YOUR_KEY")

- Navigation bar color change:

*With code: 

      UINavigationBar.appearance().barTintColor = .black
      UINavigationBar.appearance().tintColor = .white
      UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
      UINavigationBar.appearance().isTranslucent = false
      
*With library: 

      NavigationBarColorChange.changeNavigationBarColor(barTintColor: .black, tintColor: .white,forgroundColor: UIColor, isTranslucent: true)
      
- Date formatter: 

*Input date format : "yyyy-MM-dd HH:mm:ss"
*OutPut Date format: "EEEE, MMM dd hh:mm a"
           
*Date format with code: 

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

*With library:

    Utilities.getDisplayableDateStringForPosts(inputDateString: yyyy-MM-dd HH:mm:ss)
    
- Floating TextField plceholder

Add 
       
       IuFloatingTextFiledPlaceHolder 
       
class in your textfield's custom class from storyboard.

Output:

<img src="https://imgur.com/GO6npGt.gif" width="140" height="280" />

- Hide keyboard when tapped around

Add this line in viewDidLoad:

    hideKeyboardWhenTappedAround()
    
- Toast Message

Add this line in your code, where you want to show your message:

    showToast(message: "YOUR_MESSAGE")
    
- SimpleGradientView :

  * Add view in your storyboard 
  
  * From  Story board Attributes inspector - set first , mid and End color
  
  * Provide direction value to change Gradient angle 
  
- GIF Image loader

  * Import 'iOSUtilitiesSource' in your class to use GifImage .
  
  * Drag your image in project folder    
  
  * Gif image needed to be placed in folder instead of image asset.
      
  * Add  UIimageView_Storybord_reference(name: "YOUR_GIF_NAME") in viewWillAppear / in your required method.
  
    
  
  <img src="https://imgur.com/bvxuMhk.gif" width="140" height="280" />
  
  - Keyboard show/hide with view up/down
  
  Add this line in your viewDidLoad():
           
      iOSKeyboardShared.shared.keyBoardShowHide(view: self.view)
      
   <img src="https://imgur.com/3fBZp2J.gif" width="140" height="280" />   
  
