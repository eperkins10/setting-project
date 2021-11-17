//
//  SettingController.swift
//  Settings
//
//  Created by Ethan Perkins on 11/17/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import Foundation

class SettingController {
    
    static let settings: [Setting] = {
        let music = Setting(name: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(name: "iBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: true)
        return [music, appStore, iBooks]
    }()
    
    static func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
}
