require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "RNVersionNumber"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = "https://github.com/APSL/react-native-version-number"
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "9.0"
  s.source       = { :http => 'file:' + __dir__ + '/ios' }
  s.source_files   = 'ios/RNVersionNumber/*.{h,m}'
  s.dependency 'React'

end
