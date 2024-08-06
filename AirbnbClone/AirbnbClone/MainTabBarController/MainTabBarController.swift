//
//  ViewController.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 05/08/24.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let explore = createNavController(viewController: ExploreViewController(), title: "Explorar", imageName: "magnifyingglass")
        let favorite = createNavController(viewController: FavoriteViewController(), title: "Favoritos", imageName: "heart")
        let travelling = createNavController(viewController: TravelViewController(), title: "Viagens", imageName: "star")
        let messages = createNavController(viewController: MessageViewController(), title: "Mensagens", imageName: "message")
        let profile = createNavController(viewController: ProfileViewController(), title: "Perfil", imageName: "person.crop.circle")
        
        viewControllers = [explore, favorite, travelling, messages, profile]
        customizeTabBarAppearance()
    }
    
    private func createNavController(viewController: UIViewController, title: String, imageName: String) -> UINavigationController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        return navController
    }
    
    private func customizeTabBarAppearance() {
        tabBar.tintColor = .red // cor dos itens fica black quando selecionado
        tabBar.unselectedItemTintColor = .lightGray // cor dos itens fica lightGray quando não está selecionado
        tabBar.backgroundColor = .white // cor de fundo
        tabBar.isTranslucent = false // serve para não deixar transparente o fundo quando trabalhamos com lista
        tabBar.layer.borderColor = UIColor.lightGray.cgColor // cor da borda
        tabBar.layer.borderWidth = 0.5 // espessura da borda
    }
    
}

