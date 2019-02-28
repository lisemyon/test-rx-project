//
//  ListView.swift
//  test rx project
//
//  Created by Elizaveta Semyonova on 18/02/2019.
//  Copyright © 2019 thesharknight. All rights reserved.
//

import UIKit
import RxSwift

class ListView: UIView {
	lazy var tableView: UITableView = {
		let tableView = UITableView()
		tableView.translatesAutoresizingMaskIntoConstraints = false
		return tableView
	}()
	
	lazy var searchBar: UISearchBar = {
		let searchBar = UISearchBar()
		searchBar.translatesAutoresizingMaskIntoConstraints = false
		return searchBar
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		addSubviews()
		makeConstraints()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func addSubviews() {
		self.addSubview(tableView)
		self.addSubview(searchBar)
	}
	
	private func update() {
		//searchBar.rx.base.
	}
	
	private func makeConstraints() {
		self.addConstraint(NSLayoutConstraint(item: searchBar, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0.0))
		self.addConstraint(NSLayoutConstraint(item: searchBar, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1.0, constant: 0.0))
		self.addConstraint(NSLayoutConstraint(item: searchBar, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1.0, constant: 0.0))
		
		searchBar.addConstraint(NSLayoutConstraint(item: searchBar, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0))
		
		self.addConstraint(NSLayoutConstraint(item: tableView, attribute: .top, relatedBy: .equal, toItem: searchBar, attribute: .bottom, multiplier: 1.0, constant: 0.0))
		
		self.addConstraint(NSLayoutConstraint(item: tableView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0.0))
		self.addConstraint(NSLayoutConstraint(item: tableView, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1.0, constant: 0.0))
		self.addConstraint(NSLayoutConstraint(item: tableView, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1.0, constant: 0.0))
	}
}
