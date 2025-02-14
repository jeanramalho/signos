//
//  HomeView.swift
//  signos
//
//  Created by Jean Ramalho on 13/02/25.
//
import Foundation
import UIKit

class HomeView: UIView {
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFill
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

        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        
    }
    
    private func setConstraints(){
        
    }
}
