//
//  SignosTableViewCell.swift
//  signos
//
//  Created by Jean Ramalho on 14/02/25.
//
import Foundation
import UIKit

class SignosTableViewCell: UITableViewCell {
    
    lazy var signoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    static let identifier = "SignosTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
        addSubview(signoLabel)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            signoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            signoLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            signoLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
}
