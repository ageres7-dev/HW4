//
//  BiographyViewController.swift
//  HW4
//
//  Created by Сергей Долгих on 24.10.2020.
//

import UIKit

class BiographyViewController: UIViewController {
    @IBOutlet var bioLabel: UILabel!
    
    var biography = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        bioLabel.text = biography
    }
}
