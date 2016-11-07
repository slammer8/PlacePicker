//
//  AppDelegate.swift
//  PlacePicker
//
//  Created by Sam Wu on 11/7/16.
//  Copyright © 2016 Sam Wu. All rights reserved.
//

import UIKit
import GooglePlaces

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        GMSPlacesClient.provideAPIKey("YOUR_API_KEY")
        
        return true
    }

}

