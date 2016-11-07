//
//  PlacePicker.swift
//  PlacePicker
//
//  Created by Sam Wu on 11/7/16.
//  Copyright © 2016 Sam Wu. All rights reserved.
//

import UIKit
import GooglePlacePicker

final class PlacePicker: UIViewController {

    private var placePicker: GMSPlacePicker?
    
    @IBOutlet private weak var pickAPlaceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure our view.
        view.clipsToBounds = true
        
        // Set the build number.
    }
    
    @IBAction func buttonTapped() {
        // Create a place picker.
        let config = GMSPlacePickerConfig(viewport: nil)
        let placePicker = GMSPlacePicker(config: config)
        
        // Present it fullscreen.
        placePicker.pickPlace { (place, error) in
            
            // Handle the selection if it was successful.
            if let place = place {
                // Create the next view controller we are going to display and present it.
                print(place)
                
            } else if error != nil {
                // In your own app you should handle this better, but for the demo we are just going to log
                // a message.
                NSLog("An error occurred while picking a place: \(error)")
            } else {
                NSLog("Looks like the place picker was canceled by the user")
            }
            
            // Release the reference to the place picker, we don't need it anymore and it can be freed.
            self.placePicker = nil
        }
        
        // Store a reference to the place picker until it's finished picking. As specified in the docs
        // we have to hold onto it otherwise it will be deallocated before it can return us a result.
        self.placePicker = placePicker
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }


}

