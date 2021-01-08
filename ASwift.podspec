Pod::Spec.new do |s|
  s.name         = "ASwift"
  s.version      = "1.0.0"
  s.summary      = "ASwift is an advanced extension for Swift."
  s.description  = "ASwift is an advanced extension for ASwift. Description."
  s.homepage     = "https://github.com/ihormyroniuk/ASwift"
  s.license      = "MIT"
  s.author       = { "Ihor Myroniuk" => "ihormyroniuk@gmail.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/ihormyroniuk/ASwift.git", :tag => "1.0.0" }
  s.source_files = "ASwift/**/*.{swift}"
  s.swift_version = "4.2"
end
