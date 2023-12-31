//
//  PiaFirebaseApp.swift
//  PiaFirebase
//
//  Created by yusufyakuf on 2023-11-20.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
   func application(_ application: UIApplication,
                    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()
      
      return true
   }
}

@main
struct PiaFirebaseApp: App {
   // register app delegate for Firebase setup
   @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
   
    var body: some Scene {
        WindowGroup {
            StartView()
        }
    }
}
