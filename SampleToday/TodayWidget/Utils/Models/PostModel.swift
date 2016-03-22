//
//  PostModel.swift
//  SampleToday
//
//  Created by Renato Matos on 22/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

import Foundation
import ObjectMapper

class PostModel : BaseModel {
    
    var title: String? = nil
    var body: String? = nil
    
    override func mapping(map: Map) {
        title    <- map["title"]
        body     <- map["body"]
    }
    
}