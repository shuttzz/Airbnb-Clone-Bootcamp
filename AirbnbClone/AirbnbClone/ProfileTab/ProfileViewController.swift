//
//  ProfileViewController.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 05/08/24.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    var screen: ProfileScreen?
    
    override func loadView() {
       screen = ProfileScreen()
       view = screen
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
