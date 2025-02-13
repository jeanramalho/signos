//
//  SignosSplashScreenViewController.swift
//  signos
//
//  Created by Jean Ramalho on 13/02/25.
//
import Foundation
import UIKit

class SignosSplashScreenViewController: UIViewController {
    
    let contentView: SignosSplashView
    
    init(contentView: SignosSplashView) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        
        setHierarchy()
        setContrainsts()
    }
    
    private func setHierarchy(){
        self.view.addSubview(contentView)
    }
    
    private func setContrainsts(){
        
    }
}
