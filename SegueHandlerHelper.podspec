Pod::Spec.new do |s|

  s.name         = "SegueHandlerHelper"
  s.version      = "1.0"
  s.summary      = "A better way to handle segue identifier. "

  s.description  = <<-DESC
                  A better way to handle segue identifier, Maybe should not type idetifier handly.
                   DESC

  s.homepage     = "https://github.com/qiuncheng/SegueHandlerHelper"

  # s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "qiuncheng" => "qiuncheng@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/qiuncheng/SegueHandlerHelper.git", :tag => s.version }

  s.source_files  = "Classes", "SegueHandlerHelper/*"

  s.framework  = "UIKit"
  s.requires_arc = true
end
