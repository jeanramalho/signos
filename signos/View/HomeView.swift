//
//  HomeView.swift
//  signos
//
//  Created by Jean Ramalho on 13/02/25.
//
import Foundation
import UIKit

class HomeView: UIView {
    
    lazy var logoTitleImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFill
        image.backgroundColor = .clear
        return image
    }()
    
    lazy var signosTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(SignosTableViewCell.self, forCellReuseIdentifier: SignosTableViewCell.identifier)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        self.backgroundColor = .white
        
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        addSubview(logoTitleImageView)
        addSubview(signosTableView)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            logoTitleImageView.topAnchor.constraint(equalTo: topAnchor),
            logoTitleImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            logoTitleImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            signosTableView.topAnchor.constraint(equalTo: logoTitleImageView.bottomAnchor),
            signosTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            signosTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            signosTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
