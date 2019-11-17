#
# Be sure to run `pod lib lint Light-MVVM-C.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LightMVVMC'
  s.version          = '0.1.2'
  s.summary          = 'Lightweight MVVM + Coordinator implementation.'

  s.description      = <<-DESC
Light MVVM-C is a lightweight implementation of the MVVM + Coordinator architectural pattern.
                       DESC

  s.homepage         = 'https://github.com/enriquebk/Light-MVVM-C'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'enriquebk' => 'me@ebermudez.com' }
  s.source           = { :git => 'https://github.com/enriquebk/Light-MVVM-C.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.swift_version = '5'

  s.requires_arc = true
  s.source_files = 'LightMVVMC/LightMVVMC/**/*.{swift}'

end
