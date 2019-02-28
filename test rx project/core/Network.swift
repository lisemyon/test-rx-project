//
//  Network.swift
//  test rx project
//
//  Created by Elizaveta Semyonova on 18/02/2019.
//  Copyright © 2019 thesharknight. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire

class Network {
	
	static func getPosts(userId: Int) -> Observable<[Post]> {
		return request(ApiRouter.getPosts(userId: userId))
	}
	
	private static func request<T: Codable> (_ urlConvertible: URLRequestConvertible) -> Observable<T> {
		
		return Observable<T>.create { observer in
			let request = AF.request(urlConvertible).responseDecodable { (response: DataResponse<T>) in
				switch response.result {
				case .success(let value):
					observer.onNext(value)
					observer.onCompleted()
				case .failure(let error):
					switch response.response?.statusCode {
					case 403:
						observer.onError(ApiError.forbidden)
					case 404:
						observer.onError(ApiError.notFound)
					case 409:
						observer.onError(ApiError.conflict)
					case 500:
						observer.onError(ApiError.internalServerError)
					default:
						observer.onError(error)
					}
				}
			}
			
			return Disposables.create {
				request.cancel()
			}
		}
		
	}
	
}
