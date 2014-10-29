Pod::Spec.new do |s|

  s.name         		= "KMMSmileyStrength"
  s.version      		= "1.0"
  s.summary      		= "A password strength display using smiley faces."
  s.description  		= 'A password strength display that uses zxcvbn and custom fonts to display smiley faces that represent the strength of a password.'
  s.homepage     		= "https://github.com/kerrmarin/KMMSmileyStrength"
  s.license      		= "MIT"
  s.author              = { "Kerr Marin Miller" => "kerr@kerrmarin.com" }
  s.social_media_url    = "http://twitter.com/kerrmarin"
  s.platform     		= :ios, "8.0"

  s.source       		= { :git => "http://EXAMPLE/KMMSmileyStrength.git", 
  					 		:tag => "1.0" }

  s.source_files  = "KMMPasswordStrength/KMMPasswordStrengthView/*.{h,m}"
  s.resource  = "KMMPasswordStrength/KMMPasswordStrengthView/Assets/flaticon.ttf"

  s.requires_arc = true

  s.dependency "zxcvbn-ios", "~> 1.0.1"

end
