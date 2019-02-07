---
layout: ios
title: 스토리보드 없이 앱 시작하기
description: ios
---

### 1. info.plist 에서 스토리보드를 불러오는 설정값을 삭제한다
~~~
Main storyboard file base name : ~~~   <- 이 부분 삭제
~~~  

### 2. AppDelegate 에서 윈도우를 지정한다
~~~swift
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    // didFinishLaunchingWithOptions 델리게이트에 다음 코드를 작성한다.
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // 1. 메인 윈도우 객체 생성
        // 앱 최초 기동시 window (최 상위 뷰 컨테이너) 객체가 업으므로 새로 생성하여 지정한다.
        // 스토리보드로 작성시 자동으로 지정되는 부분이므로 코드만으로 앱을 개발시 꼭 필요한 부분
        window = UIWindow(frame: UIScreen.main.bounds)

        // 2. 매인 윈도우 객체 생성에 실패하면 앱을 종료한다
        // 스토리보드로 작성시 자동으로 해주는 부분window 객체가 없으면 앱에 화면을 
        // 표기 할 수 없음으로 앱을 종료 한다
        guard let win = window else {
            return false
        }

        // 3. 메인뷰로 만들기
        // 새로 생성한 window 를 객체를 앱 매인 컨테이너로 지정한다
        win.makeKeyAndVisible()

        // 4. 기본 바탕색 지정
        // 앱의 기본 배경색상을 지정한다
        win.backgroundColor = UIColor.white
        
        // 5. 여기에 새로운 ViewController 를 입력한다
        // 최초 앱 기동시 보여질 뷰컨트롤러를 지정한다
        win.rootViewController = BootVC(nibName: nil, bundle: nil)
        
        // 부트 완료
        return true
    }
    ... 후략 ...
}
~~~