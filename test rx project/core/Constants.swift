//
//  Constants.swift
//  test rx project
//
//  Created by Elizaveta Semyonova on 28/02/2019.
//  Copyright © 2019 thesharknight. All rights reserved.
//

import Foundation

struct Constants {
	
	static let baseUrl = "https://jsonplaceholder.typicode.com"
	
	struct Parameters {
		static let userId = "userId"
	}
	
	enum HttpHeaderField: String {
		case authentication = "Authorization"
		case contentType = "Content-Type"
		case acceptType = "Accept"
		case acceptEncoding = "Accept-Encoding"
	}
	
	enum ContentType: String {
		case json = "application/json"
	}
	
}
