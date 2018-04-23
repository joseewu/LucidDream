//
//  EndPointType.swift
//  LucidDream
//
//  Created by joseewu on 2018/4/23.
//  Copyright © 2018年 com.nietzsche. All rights reserved.
//

import Foundation
import Alamofire
import Firebase
protocol EndPointType {
    var baseHeader:HTTPHeaders { get }
    var database:DatabaseReference { get set }
}
