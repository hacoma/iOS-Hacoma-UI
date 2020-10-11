Pod::Spec.new do |s|
  s.name = 'HacomaUI'
  s.version = '1.0.2'
  s.license = { :type => 'MIT' }
  s.homepage = 'https://github.com/hacoma/iOS-HacomaUI'
  s.authors = { 'hacoma' => 'hacoma92@gmail.com' }
  s.summary = 'Common user interface for iOS application'
  s.swift_version = '5.0'

  s.ios.deployment_target = '11.0'

  s.source = { :git => 'https://github.com/hacoma/iOS-HacomaUI.git', :tag => s.version }

  s.default_subspec = :none

  s.subspec 'InsetTextField' do |ss|
    ss.source_files = 'HacomaUI/Module/InsetTextField/Source/*.swift'
  end
end