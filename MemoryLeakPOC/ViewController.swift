//
//  ViewController.swift
//  MemoryLeakPOC
//
//  Created by Bhanu on 15/05/24.
//

import UIKit

class ViewController: UIViewController {
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Navigate", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc func buttonTapped() {
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
}

class Server {
    var client: Client?
    init(client: Client? = nil) {
        self.client = client
    }
    
    deinit {
        print("\(Self.self) object was deallocated")
    }
}
 
class Client {
    var server: Server?

    init (server: Server) {
        self.server = server
    }
    
    deinit {
        print("\(Self.self) object was deallocated")
    }
}

class SecondViewController: UIViewController {
    let server = Server()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        server.client = Client(server: server)
    }
    
    deinit {
        print("\(Self.self) object was deallocated")
    }
}
