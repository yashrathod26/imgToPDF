Pod::Spec.new do |s|
  s.name             = 'imgToPDF'
  s.version          = '1.0'
  s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'
 
  s.description      = <<-DESC
This pod ins used for converting array of images into one single pdf file.
                       DESC
 
  s.homepage         = 'https://github.com/yashrathod26/imgToPDF'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yash Rathod' => 'yashthedeveloper@gmail.com' }
  s.source           = { :git => 'https://github.com/yashrathod26/imgToPDF.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '11.0'
  s.source_files = 'imgToPDF/imgToPDF.swift'
  s.swift_version = '4.0'
end 