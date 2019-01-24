# iOSUtilitiesSource
All types of swift utilities and necessary settings included in this library.
 - Local data save in preferences 
 - Internet check 
 - Date convertion
 - String check 
 - Alert dialog extension
 - Button round 
 - View round
 - Floating textField
 - Hide keyboard when tapped around
 - Toast message show
 - SimpleGradientView
 - GIF image loader
 - Keyboard show/hide with view up/down
 - Alert toast with image(Success, Info, Custom, Error)
 - Rating view


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
   
- Alert toast View :

 Example :   
 
     self.noticeTop("Test Notice", autoClear: true, autoClearTime: 5)
     self.noticeError("Test Notice", autoClear: true, autoClearTime: 5)
     self.noticeSuccess("Test Notice", autoClear: true, autoClearTime: 5)
     self.noticeInfo("Test Notice")
     self.noticeError("Test Notice")
     self.noticeOnlyText("Test Notice")
     self.clearAllNotice()
   
   
  Output:
  
   <img src="https://imgur.com/79fkADZ.gif" width="140" height="280" />   
   
   
   - Rating View :
   
      Add StarRatingView class in storyboards in any specific view as following image below:
      
        <img src="https://imgur.com/hEkE8Sx.gif" width="340" height="280" />  
        
      
      Example code:
      
      
         override func viewDidLoad() {
         super.viewDidLoad()
        
         startView.didFinishTouchingStarRating = { rating in
            if rating == 4.0{
                self.startView.text = "Status : Favoulas"
            }else if rating == 3{
                self.startView.text = "Status : Good"
            }else{
                self.startView.text = "Status : Moderate"
            }
         }
         // Do not change rating when touched
         // Use if you need just to show the stars without getting user's input
         startView.settings.updateOnTouch = false
         // Show only fully filled stars
         startView.settings.fillMode = .full
         // Other fill modes: .half, .precise
         // Change the size of the stars
         startView.settings.starSize = 30
        
         // Set the distance between stars
         startView.settings.starMargin = 5
        
         // Set the color of a filled star
         startView.settings.filledColor = UIColor.orange
         
         // Set the border color of an empty star
         startView.settings.emptyBorderColor = UIColor.orange
        
         // Set the border color of a filled star
         startView.settings.filledBorderColor = UIColor.orange
         // Set image for the filled star
         //cosmosView.settings.filledImage = UIImage(named: "GoldStarFilled")
         // Set image for the empty star
         //cosmosView.settings.emptyImage = UIImage(named: "GoldStarEmpty")
         startView.textSize = 10
         }
      
        
     Output:
   
       <img src="https://imgur.com/c8RWBzB.gif" width="200" height="280" />
