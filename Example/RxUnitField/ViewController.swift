//
//  ViewController.swift
//  RxUnitField
//
//  Created by fuyoufang on 09/23/2020.
//  Copyright (c) 2020 fuyoufang. All rights reserved.
//

import UIKit
import RxUnitField
import UnitField
import RxCocoa
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var unitField: UnitField!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        unitField.rx
            .text
            .subscribe { (test) in
                debugPrint("current text: \(test ?? "")")
            } onError: { (error) in
                debugPrint("error:\(error)")
            } onCompleted: {
                debugPrint("completed")
            } onDisposed: {
                debugPrint("disposeb")
            }
            .disposed(by: disposeBag)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

