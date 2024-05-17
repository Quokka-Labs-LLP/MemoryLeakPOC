//
//  Client.swift
//  MemoryLeakPOC
//
//  Created by Bhanu on 15/05/24.
//

import Foundation

class Client {
    var server: Server?

    init (server: Server) {
        self.server = server
    }
    
    deinit {
        print("\(Self.self) object was deallocated")
    }
}
