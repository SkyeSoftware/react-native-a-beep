require "json"

Pod::Spec.new do |s|
  # NPM package specification
  package = JSON.parse(File.read(File.join(File.dirname(__FILE__), "package.json")))

  s.name         = "RNABeep"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/trietho/react-native-a-beep"
  s.license      = "MIT"
  s.author       = { package["author"]["name"] => package["author"]["email"] }
  s.platforms    = { :ios => "7.0", :tvos => "9.0" }
  s.source       = { :git => "https://github.com/trietho/react-native-a-beep", :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"

  s.dependency "React"

end
