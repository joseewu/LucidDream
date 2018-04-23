//
//  RecipeClient.swift
//  LucidDream
//
//  Created by joseewu on 2018/4/23.
//  Copyright © 2018年 com.nietzsche. All rights reserved.
//

import UIKit
import Firebase
import Alamofire
typealias completionHandler = (_ data:[[String:Any]]?) -> Void
class RecipeClient: NSObject,EndPointType {
    var baseHeader: HTTPHeaders {
        return ["cookies":""]
    }
    var database: DatabaseReference = Database.database().reference()
    override init() {
        super.init()

    }
    public func getRecipes(_ completion:@escaping completionHandler) {
        let _ = database.observe(DataEventType.value, with: { (dataShot) in
            if let data = dataShot.childSnapshot(forPath: "data").value as? [[String:Any]] {
                completion(data)
            }
            completion(nil)
        })
    }
}
