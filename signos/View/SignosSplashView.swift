//
//  SignosSplashView.swift
//  signos
//
//  Created by Jean Ramalho on 13/02/25.
//
import Foundation
import UIKit

class SignosSplashView: UIView {
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleToFill
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        self.backgroundColor = .lightGray
        
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        addSubview(logoImageView)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),

        ])
    }
}
