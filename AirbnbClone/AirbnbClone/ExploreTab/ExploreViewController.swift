//
//  ExploreViewController.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 05/08/24.
//

import UIKit

class ExploreViewController: UIViewController {
    
    var screen: ExploreScreen?
    
    override func loadView() {
       screen = ExploreScreen()
       view = screen
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
