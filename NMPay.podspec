#  Be sure to run `pod spec lint test.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "NMPay"
  s.version      = "1.0"
  s.summary      = "NMPay"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = "aaadsfjadksjfkladjsfkajdf;jadfal;djsf;jaa"
                  

  s.homepage     = "https://github.com/jiangyancong/NMPay"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "StanleyJiang" => "jiangyancong@gmail.com" }
  # Or just: s.author    = "StanleyJiang"
  # s.authors            = { "StanleyJiang" => "jiangyancong@gmail.com" }
  # s.social_media_url   = "http://twitter.com/StanleyJiang"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
   s.platform     = :ios, "7.1"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source = {:git => "https://github.com/jiangyancong/NMPay.git"}

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  #s.source_files  ="**/*.{h,m}"
  #s.exclude_files = "**/*.{storyboard}","testTests"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = '**/*.xcodeproj'


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #
  
  s.framework = "Security","SystemConfiguration","CoreGraphics","CoreTelephony","CoreMotion","CFNetwork","QuartzCore","CoreText"

  s.libraries = "iconv","sqlite3","stdc++","z","c++"

  #s.prefix_header_file = 'SupportingFile/Test-Prefix.pch'


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

  s.subspec 'AliPay' do |ali|
     ali.source_files = 'AlixPay/2016_04_28/**/*.{h,m}'
     ali.header_mappings_dir = 'AlixPay/2016_04_28/'
     ali.resource = 'AlixPay/2016_04_28/AlipaySDK.bundle'
     ali.vendored_libraries = "AlixPay/2016_04_28/libcrypto.a","AlixPay/2016_04_28/libssl.a"
     ali.vendored_frameworks = "AlixPay/2016_04_28/AliPaySDK.framework"
  end

  #s.subspec 'Weibo' do |wb|
  #  wb.dependency 'WeiboSDK', '~> 3.1.3'
  #end
  s.subspec 'UPPay' do |up|
    up.source_files = "UPPay/3.3.3/**/*.h"
    up.vendored_libraries = "UPPay/3.3.3/libs/libPaymentControl.a"
  end
  s.subspec 'ApplePay' do |ap|
    ap.source_files = "UPApplePay/1.1/**/*.h"
    ap.framework = "PassKit"
    ap.vendored_libraries = "UPApplePay/1.1/libs/libUPAPayPlugin.a"
  end

end






