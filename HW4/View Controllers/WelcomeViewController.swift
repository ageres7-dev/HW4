//
//  WelcomeViewController.swift
//  HW4
//
//  Created by Сергей Долгих on 24.10.2020.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var fullNameLabel: UILabel!
    
//    var fullNameText = ""
    var user: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        fullNameLabel.text? += "\(fullNameText)!"
        fullNameLabel.text? += "\(user!.fullName)!"
    }
}
