//
//  SecondViewController.swift
//  MemoryLeakPOC
//
//  Created by Bhanu on 15/05/24.
//

import UIKit

class SecondViewController: UIViewController {
    //let server = Server()
    
    
  //  var myObject: MyClass? = MyClass()
//    var myDelegate: MyDelegateImpl? = MyDelegateImpl()
    //var manager: TimerManager? = TimerManager()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        //server.client = Client(server: server)
        
        //   myObject?.setupClosure()

//        myObject?.delegate = myDelegate
//        myDelegate?.myObject = myObject
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        //MARK: If both references are strong, setting one to nil can break a retain cycle.
//        server.client = nil
//    }
    
    
    deinit {
        print("\(Self.self) object was deallocated")
    }
    
}

//class MyClass {
//    var closure: (() -> Void)?
//
//    func setupClosure() {
//        closure = { /*[weak self] in*/
//            // Strong reference to `self` captured in the closure.
//            self.doSomething()
//        }
        //MARK: ADD [weak self] to remove strong references
        //closure = { [weak self] in
//            // Strong reference to `self` captured in the closure.
//            self.doSomething()
//        }
//    }
//
//    func doSomething() {
//        print("Doing something")
//    }
//}


//protocol MyDelegate: AnyObject {
//    func didSomething()
//}
//
//class MyClass {
//     var delegate: MyDelegate?
//
//    func performTask() {
//        delegate?.didSomething()
//    }
//}

//class MyDelegateImpl: MyDelegate {
//MARK: ADD weak, unowned to remove strong references
//    var myObject: MyClass?
//    weak var myObject: MyClass?
//    func didSomething() {
//        print("Did something")
//    }
//}
