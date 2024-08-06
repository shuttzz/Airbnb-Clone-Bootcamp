//
//  ExploreScreen.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 05/08/24.
//

import UIKit

class ExploreScreen: UIView {
    
    lazy var explorerScreenLabel: UILabel = {
        let label = UILabel()
        
        // Sempre tem que deixar ele desabilitado para qualquer elemeto que eu criar em viewCode
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Explorer"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .cyan
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(explorerScreenLabel)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            explorerScreenLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            explorerScreenLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
}
