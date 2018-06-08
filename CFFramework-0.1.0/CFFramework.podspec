Pod::Spec.new do |s|
  s.name = "CFFramework"
  s.version = "0.1.0"
  s.summary = "A short description of CFFramework."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"Cflower8889"=>"chenyongwei@syswin.com"}
  s.homepage = "https://github.com/Cflower8889/CFFramework"
  s.description = "TODO: Add long description of the pod here."
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/CFFramework.framework'
end
