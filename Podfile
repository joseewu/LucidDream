platform :ios, '9.0'
use_frameworks!
def main_sources
#define your pod resources
pod 'Alamofire'
pod 'RxSwift','~> 4.0'
pod 'RxCocoa','~> 4.0'
end
def test_sources
#define your pod resources for unit test
pod 'RxBlocking','~> 4.0'
pod 'RxTest','~> 4.0'
end
target 'LucidDream' do
main_sources

  target 'LucidDreamTests' do
    inherit! :search_paths
    test_sources
  end

  target 'LucidDreamUITests' do
    inherit! :search_paths
    test_sources
  end

end
