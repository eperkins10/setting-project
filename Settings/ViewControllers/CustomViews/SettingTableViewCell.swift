//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Ethan Perkins on 11/17/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit

protocol SettingCellDelegate: class {
    //step one: Declare Protocol
    func settingSwitchToggled(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {

    
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    //step two: create the delegate
    
    weak var delegate: SettingCellDelegate?
    
    
    func updateViews(with setting: Setting) {
        settingNameLabel.text = setting.name
        settingImageView.image = setting.icon
        settingSwitch.isOn = setting.isOn
        
        backgroundColor = setting.isOn ? .cyan : .white 
    }
    
    
    @IBAction func settingSwitchToggled(_ sender: Any) {
        delegate?.settingSwitchToggled(for: self)
        
    }
    
}
