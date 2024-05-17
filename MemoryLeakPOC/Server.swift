//
//  Server.swift
//  MemoryLeakPOC
//
//  Created by Bhanu on 15/05/24.
//

import Foundation

class Server {
  //MARK: We can fix the memory leak and change the property to weak or unowned
     var client: Client?
    
    init(client: Client? = nil) {
        self.client = client
    }
    
    deinit {
        print("\(Self.self) object was deallocated server")
    }
    
}
