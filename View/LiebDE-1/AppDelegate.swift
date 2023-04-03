//
//  AppDelegate.swift
//  LiebDE-1
//
//  Created by Sani I on 28.03.23.
//

import SwiftUI
import FirebaseCore


class AppDelegate1: NSObject, UIApplicationDelegate {
 func application(_ application: UIApplication,
          didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
  FirebaseApp.configure()
  return true
 }
}
