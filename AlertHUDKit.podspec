Pod::Spec.new do |s|


# 1 - Specs
s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = 'AlertHUDKit'
s.summary = "A collection of alerts for toasting, pinging and progress messages"
s.requires_arc = true

# 2 - Version
s.version = "1.0.1"

# 3 - License
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Author
s.author = { "Nathan Tannar" => "nathantannar4@gmail.com" }

# 5 - Homepage
s.homepage = "https://github.com/nathantannar4/AlertHUDKit"

# 6 - Source
s.source = { :git => "https://github.com/nathantannar4/AlertHUDKit.git", :tag => "#{s.version}"}

# 7 - Dependencies
s.framework = "UIKit"

# 8 - Source Files
s.source_files = "Source/**/*.{swift}"

end
