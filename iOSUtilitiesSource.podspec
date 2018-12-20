
Pod::Spec.new do |s|
          #1.
          s.name               = "iOSUtilitiesSource"
          #2.
          s.version            = "1.0.0"
          #3.  
          s.summary         = "Sort description of 'iOSUtilitiesSource' framework"
          #4.
          s.homepage        = "https://github.com/hasnine/"
          #5.
          s.license              = "MIT"
          #6.
          s.author               = "Jamil Hasnine Tamim"
          #7.
          s.platform            = :ios, "10.0"
          #8.
          s.source              = { :git => "https://github.com/hasnine/iOSUtilitiesSource.git", :tag => "1.0.0" }
          #9.
          s.source_files     = "iOSUtilitiesSource", "iOSUtilitiesSource/**/*.{h,m,swift}"
    end