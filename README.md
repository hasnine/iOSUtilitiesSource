# iOSUtilitiesSource
All types of swift utilities and necessary settings included in this library.
 - Local data save in preferences 
 - Internet check 
 - Date convertion
 - String check 
 - Button round 
 - View round


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
           
