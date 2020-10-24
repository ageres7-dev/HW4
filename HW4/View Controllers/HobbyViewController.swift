//
//  HobbyViewController.swift
//  HW4
//
//  Created by Сергей Долгих on 24.10.2020.
//

import UIKit

class HobbyViewController: UIViewController {
    @IBOutlet var hobbyTextLebel: UILabel!
    var hobbyText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyTextLebel.text = hobbyText
    }
}
