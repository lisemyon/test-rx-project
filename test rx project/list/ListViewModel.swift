//
//  ListViewModel.swift
//  test rx project
//
//  Created by Elizaveta Semyonova on 18/02/2019.
//  Copyright © 2019 thesharknight. All rights reserved.
//

import Foundation

struct ListViewModel {
	let listData: [String]
}

struct Post: Codable {
	let id: Int
	let title: String
	let body: String
	let userId: Int
}
