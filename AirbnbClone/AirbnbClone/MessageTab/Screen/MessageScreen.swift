//
//  MessageScreen.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 05/08/24.
//

import Foundation
import UIKit

class MessageScreen: UIView {
    
    lazy var messageScreenLabel: UILabel = {
        let label = UILabel()
        
        // Sempre tem que deixar ele desabilitado para qualquer elemeto que eu criar em viewCode
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Message"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .gray
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(messageScreenLabel)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            messageScreenLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            messageScreenLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
}
