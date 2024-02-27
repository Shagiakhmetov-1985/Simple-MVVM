//
//  DetailsViewController.swift
//  Simple MVVM
//
//  Created by Marat Shagiakhmetov on 27.02.2024.
//

import UIKit

class DetailsViewController: UIViewController {
    private let nameLabel = UILabel()
    private let usernameLabel = UILabel()
    private let emailLabel = UILabel()
    private let phoneLabel = UILabel()
    
    private let streetLabel = UILabel()
    private let suiteLabel = UILabel()
    private let zipcodeLabel = UILabel()
    
    private var stackView = UIStackView()
    
    let detailsViewModel: DetailsViewModel
    
    init(_ detailsViewModel: DetailsViewModel) {
        self.detailsViewModel = detailsViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        setConstraints()
        displayUserInfo()
    }
    
    private func setViews() {
        title = "User Details"
        view.backgroundColor = .white
        stackView = UIStackView(
            arrangedSubviews: [nameLabel, usernameLabel, emailLabel, phoneLabel,
                               streetLabel, suiteLabel, zipcodeLabel])
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
    }
    
    private func displayUserInfo() {
        nameLabel.text = detailsViewModel.name
        usernameLabel.text = detailsViewModel.username
        emailLabel.text = detailsViewModel.email
        phoneLabel.text = detailsViewModel.phone
        streetLabel.text = detailsViewModel.street
        suiteLabel.text = detailsViewModel.suite
        zipcodeLabel.text = detailsViewModel.zipcode
    }
}

extension DetailsViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }
}
