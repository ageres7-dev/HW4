//
//  HobbyViewController.swift
//  HW4
//
//  Created by Сергей Долгих on 24.10.2020.
//

import UIKit

class HobbyViewController: UIViewController {
    @IBOutlet var hobbyTextLebel: UILabel!
    @IBOutlet var hobbyImageView: UIImageView!
    
    var hobbyText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyImageView.layer.cornerRadius = 15
        hobbyTextLebel.text = hobbyText
    }
}
