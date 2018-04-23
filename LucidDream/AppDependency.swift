//
//  AppDependency.swift
//  LucidDream
//
//  Created by joseewu on 2018/4/23.
//  Copyright © 2018年 com.nietzsche. All rights reserved.
//

import Foundation
struct AppDependency: HasClients {
    let client: EndPointType
    init() {
        self.client = RecipeClient()
    }
}
