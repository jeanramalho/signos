//
//  SignosFlowController.swift
//  signos
//
//  Created by Jean Ramalho on 13/02/25.
//
import Foundation
import UIKit

class SignosFlowController: SignosCoordinatorProtocol {
    
    private var navigationController: UINavigationController?
    
    public init(){
        
    }
    
    func start() -> UINavigationController {
        
        
        let contentView = SignosSplashView()
        
        let startViewController = SignosSplashScreenViewController(contentView: contentView, coordinator: self)
        
        self.navigationController = UINavigationController(rootViewController: startViewController)
        
        
        return navigationController ?? UINavigationController()
    }
    
    func showHomeView(){
        let contentView = HomeView()
        
        let homeView = HomeViewController(contentView: contentView)
        
        self.navigationController?.setViewControllers([homeView], animated: true)
    }
}


