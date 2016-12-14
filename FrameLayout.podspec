Pod::Spec.new do |s|

s.name                  = 'FrameLayout'
s.version               = '0.0.1'
s.summary               = 'Frame layout for UIView, CALayer written in Swift'
s.homepage              = 'https://github.com/medvedzzz/FrameLayout'
s.license               = 'MIT'
s.author                = { 'Evgeny Mikhaylov' => 'evgenmikhaylov@gmail.com' }
s.source                = { :git => 'https://github.com/medvedzzz/FrameLayout.git', :tag => s.version.to_s }
s.requires_arc          = 'true'
s.source_files          = 'FrameLayout/*.swift'
s.ios.deployment_target = '8.0'
s.pod_target_xcconfig   = {
    'SWIFT_VERSION' => '3.0',
  }
  
end
