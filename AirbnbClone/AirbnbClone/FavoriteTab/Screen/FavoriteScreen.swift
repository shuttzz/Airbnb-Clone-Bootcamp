//
//  FavoriteScreen.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 05/08/24.
//

import Foundation
import UIKit

class FavoriteScreen: UIView {
    
    lazy var favoriteScreenLabel: UILabel = {
        let label = UILabel()
        
        // Sempre tem que deixar ele desabilitado para qualquer elemeto que eu criar em viewCode
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Favorite"
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
        addSubview(favoriteScreenLabel)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            favoriteScreenLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            favoriteScreenLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
}
