//
//  SignosTableViewCell.swift
//  signos
//
//  Created by Jean Ramalho on 14/02/25.
//
import Foundation
import UIKit

class SignosTableViewCell: UITableViewCell {
    
    static let identifier = "SignosTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
