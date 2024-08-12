//
//  ExploreScreen.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 05/08/24.
//

import UIKit

class ExploreScreen: UIView {
    
    lazy var searchBarView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        // sombra
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.1
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowRadius = 8
        return view
    }()
    
    lazy var searchIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.tintColor = .black
        return imageView
    }()
    
    lazy var searchLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "Para onde?"
        return label
    }()
    
    lazy var searchDetailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "Qualquer lugar · Qualquer semana · Hóspedes? Qualquer lugar · Qualquer semana · Hóspedes?"
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(searchBarView)
        searchBarView.addSubview(searchIconImageView)
        searchBarView.addSubview(searchLabel)
        searchBarView.addSubview(searchDetailLabel)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            searchBarView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            searchBarView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            searchBarView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            searchBarView.heightAnchor.constraint(equalToConstant: 60),
            
            searchIconImageView.leadingAnchor.constraint(equalTo: searchBarView.leadingAnchor, constant: 12),
            searchIconImageView.centerYAnchor.constraint(equalTo: searchBarView.centerYAnchor),
            searchIconImageView.heightAnchor.constraint(equalToConstant: 24),
            searchIconImageView.widthAnchor.constraint(equalToConstant: 24),
            
            searchLabel.leadingAnchor.constraint(equalTo: searchIconImageView.trailingAnchor, constant: 8),
            searchLabel.topAnchor.constraint(equalTo: searchBarView.topAnchor, constant: 12),
            
            searchDetailLabel.leadingAnchor.constraint(equalTo: searchLabel.leadingAnchor),
            searchDetailLabel.topAnchor.constraint(equalTo: searchLabel.bottomAnchor, constant: 2),
            searchDetailLabel.trailingAnchor.constraint(equalTo: searchBarView.trailingAnchor, constant: -2)
        ])
    }
    
}
