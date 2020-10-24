//
//  WelcomeViewController.swift
//  HW4
//
//  Created by Сергей Долгих on 24.10.2020.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var fullNameLabel: UILabel!
   
    
    
    var fullNameText = ""
//    var biography = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = fullNameText
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
