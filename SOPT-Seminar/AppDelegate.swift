//
//  AppDelegate.swift
//  SOPT-Seminar
//
//  Created by 송여경 on 3/30/24.
//

import UIKit

//@main 어노테이션은 이 클래스가 앱의 진입점임을 알리며, 애플리케이션을 시작할 때 가장 먼저 로드되는 클래스임
@main

class AppDelegate: UIResponder, UIApplicationDelegate {


//application(_:didFinishLaunchingWithOptions:) : 이 메소드는 앱이 처음 시작될 때 호출됩니다. 이 메소드에서는 앱의 초기 설정을 수행하거나, 앱의 주요 화면을 설정하는 등의 작업을 수행.
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //이 메소드는 Bool 값을 전달하고, 앱이 정상적으로 작동하는지를 , 시작되었는지를 알리기 위해 true값으로 반환을 해준다.
        // Override point for customization after application launch.
        return true
        //만약 리턴 값이 false일 때는, 앱이 시작되지 않아야 함을 의미하고, 시스템이 앱의 실행을 중지한다.
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

