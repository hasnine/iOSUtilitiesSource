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

- pod 'iOSUtilitiesSource', :git => 'https://github.com/hasnine/iOSUtilitiesSource.git'

# Usage

For data save in preferences just #import iOSUtilitiesSource in your view controller and save your data with line:
PreferencesUtils.saveStringData(data: "YOUR_DATA", dataName: "YOUR_KEY")
and for get this data just call : 
PreferencesUtils.getSavedStringData(dataName: "YOUR_KEY")
