//
//  HomePageController.swift
//  LucidDream
//
//  Created by joseewu on 2018/4/23.
//  Copyright © 2018年 com.nietzsche. All rights reserved.
//

import UIKit
import Firebase
class HomePageController: UIViewController {
    var ref: DatabaseReference = Database.database().reference()
    override func viewDidLoad() {
        super.viewDidLoad()
        let refHandle = ref.observe(DataEventType.value, with: { (snapshot) in
            if let data = snapshot.childSnapshot(forPath: "data").value as? [[String:Any]] {
                print(data)
            }
        })
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
