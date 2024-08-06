//
//  TravelScreen.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 05/08/24.
//

import Foundation
import UIKit

class TravelScreen: UIView {
    
    lazy var travelScreenLabel: UILabel = {
        let label = UILabel()
        
        // Sempre tem que deixar ele desabilitado para qualquer elemeto que eu criar em viewCode
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Travel"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .yellow
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(travelScreenLabel)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            travelScreenLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            travelScreenLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
}
