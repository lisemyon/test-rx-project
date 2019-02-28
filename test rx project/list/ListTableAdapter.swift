//
//  ListTableAdapter.swift
//  test rx project
//
//  Created by Elizaveta Semyonova on 18/02/2019.
//  Copyright © 2019 thesharknight. All rights reserved.
//

import UIKit

class ListTableAdapter: NSObject, UITableViewDelegate, UITableViewDataSource {
	
	private var tableView: UITableView?
	private var listViewModel: ListViewModel?
	
	init(tableView: UITableView) {
		self.tableView = tableView
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		guard let count = listViewModel?.listData.count else { return 0 }
		return count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = ListItemTableViewCell(style: .default, reuseIdentifier: "\(ListItemTableViewCell.self)")
		return cell
	}
}
