//
//  ProfileScreen.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 05/08/24.
//

import Foundation
import UIKit

class ProfileScreen: UIView {
    
    lazy var profileScreenLabel: UILabel = {
        let label = UILabel()
        
        // Sempre tem que deixar ele desabilitado para qualquer elemeto que eu criar em viewCode
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Profile"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .orange
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(profileScreenLabel)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            profileScreenLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            profileScreenLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
}
