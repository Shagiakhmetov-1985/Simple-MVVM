//
//  MainCell.swift
//  Simple MVVM
//
//  Created by Marat Shagiakhmetov on 26.02.2024.
//

import UIKit

class MainCell: UITableViewCell {
    static var identifier: String {
        "MainCell"
    }
    
    private let nameLabel = UILabel()
    private let emailLabel = UILabel()
    private var stackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCell(viewModel: MainCellViewModel) {
        nameLabel.text = viewModel.name
        emailLabel.text = viewModel.email
    }
    
    private func setViews() {
        nameLabel.font = .systemFont(ofSize: 16)
        emailLabel.font = .systemFont(ofSize: 14)
        emailLabel.textColor = .gray
        
        stackView = UIStackView(arrangedSubviews: [nameLabel, emailLabel])
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
    }
}

extension MainCell {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
}
