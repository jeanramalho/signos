//
//  SignosFlowController.swift
//  signos
//
//  Created by Jean Ramalho on 13/02/25.
//
import Foundation
import UIKit

class SignosFlowController {
    
    private var navigationController: UINavigationController?
    
    public init(){
        
    }
    
    func start() -> UINavigationController {
        
        let contentView = SignosSplashView()
        
        let startViewController = SignosSplashScreenViewController(contentView: contentView)
        
        self.navigationController = UINavigationController(rootViewController: startViewController)
        
        return navigationController ?? UINavigationController()
    }
}
