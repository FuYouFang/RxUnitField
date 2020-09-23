#
# Be sure to run `pod lib lint RxUnitField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxUnitField'
  s.version          = '0.2.0'
  s.summary          = 'Rx extension for UnitField.'
  
  s.description      = <<-DESC
  Rx extension for UnitField. If necessary, you can add this extension.
  DESC
  
  s.homepage         = 'https://github.com/fuyoufang/RxUnitField'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fuyoufang' => 'fuyoufang@163.com' }
  s.source           = { :git => 'https://github.com/fuyoufang/RxUnitField.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'
  
  s.source_files = 'RxUnitField/Classes/**/*'
  
  s.swift_version = '5.0'
  s.dependency 'UnitField', '~> 0.3.0'
  s.dependency 'RxSwift'
  s.dependency 'RxCocoa'
end
