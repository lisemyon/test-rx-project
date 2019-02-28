//
//  ViewController.swift
//  test rx project
//
//  Created by Elizaveta Semyonova on 18/02/2019.
//  Copyright © 2019 thesharknight. All rights reserved.
//

import UIKit
import RxSwift

class ListViewController: UIViewController {
	
	//private let adapter = K
	
	var customView: ListView? {
		return self.view as? ListView
	}

	override func loadView() {
		let view = ListView(frame: UIScreen.main.bounds)
		self.view = view
	}
	
	private let disposeBag = DisposeBag()
	
	init() {
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		Network.getPosts(userId: 1)
			.observeOn(MainScheduler.instance)
			.subscribe(onNext: { postsList in
				print("List of posts:", postsList)
			}, onError: { error in
				switch error {
				case ApiError.conflict:
					print("Conflict error")
				case ApiError.forbidden:
					print("Forbidden error")
				case ApiError.notFound:
					print("Not found error")
				default:
					print("Unknown error:", error)
				}
			})
			.disposed(by: disposeBag)
		
		
		let sequence = Observable.just("Hello Rx")
		
		let fibonacciSequence = Observable.from([0,1,1,2,3,5,8,13,21])
		
		let dictSequence = Observable.from([1: "Hello", 2: "World"])
		
		let subscription = fibonacciSequence.subscribe { event in
			if event .isCompleted {
				print("fuck this")
			}
			print(event)
		}		
	}


}

