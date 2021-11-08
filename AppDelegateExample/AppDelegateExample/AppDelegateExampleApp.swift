//
//  AppDelegateExampleApp.swift
//  AppDelegateExample
//
//  Created by Sezer Tunca on 08/11/2021.
//

import SwiftUI

@main
struct AppDelegateExampleApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        debugPrint("DidFinish Launching")
        return true
    }
}
