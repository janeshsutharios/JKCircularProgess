Pod::Spec.new do |s|
  s.name             = 'JKCircularProgess'
  s.version          = '1.0.3'
  s.summary          = 'For showing circular animated progress'
 
  s.description      = <<-DESC
JKCircularProgess for showing circular animated progress
                       DESC
 
  s.homepage         = 'https://github.com/janeshsutharios/JKCircularProgess'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Janesh' => 'janesh.stack@gmail.com' }
  s.source           = { :git => 'https://github.com/janeshsutharios/JKCircularProgess.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'JKCircularProgress/JKCircularView/JKCircularView.swift' 
  s.swift_version = '4.0'
end