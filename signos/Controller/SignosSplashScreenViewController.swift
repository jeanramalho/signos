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
    let coordinator: SignosCoordinatorProtocol?
    
    init(contentView: SignosSplashView, coordinator: SignosCoordinatorProtocol) {
        self.contentView = contentView
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        startTimer()
    }
    
    private func setup() {
    
        setHierarchy()
        setContrainsts()
    }
    
    private func setHierarchy(){
        self.view.addSubview(contentView)
    }
    
    private func setContrainsts(){
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func startTimer(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            self?.coordinator?.showHomeView()
        }
    }
}
