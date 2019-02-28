//
//  ListItemTableViewCell.swift
//  test rx project
//
//  Created by Elizaveta Semyonova on 18/02/2019.
//  Copyright © 2019 thesharknight. All rights reserved.
//

import UIKit

class ListItemTableViewCell: UITableViewCell {
	
	lazy var nameLabel: UILabel = {
		let label = UILabel()
		return label
	}()
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		addSubviews()
		makeConstraints()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func addSubviews() {
		self.contentView.addSubview(nameLabel)
	}
	
	private func makeConstraints() {
		nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0.0)
		nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0.0)
//		nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constraint: 0.0)
//		nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constraint: 0.0)
	}
}
