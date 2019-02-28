//
//  ApiError.swift
//  test rx project
//
//  Created by Elizaveta Semyonova on 28/02/2019.
//  Copyright © 2019 thesharknight. All rights reserved.
//

import Foundation

enum ApiError: Error {
	case forbidden //403
	case notFound //404
	case conflict //409
	case internalServerError //500
}
