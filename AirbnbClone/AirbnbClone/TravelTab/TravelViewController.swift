//
//  TravelViewController.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 05/08/24.
//

import Foundation
import UIKit

class TravelViewController: UIViewController {
    
    var screen: TravelScreen?
    
    override func loadView() {
       screen = TravelScreen()
       view = screen
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
