//
//  API_Post.swift
//  SampleToday
//
//  Created by Renato Matos on 22/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

import Foundation

class API_Post : NetworkBase {
    
    func getPosts(completion: (result: AnyObject?, error: AnyObject?) -> Void) {
        callMethod() { (result, error) -> Void in
            if let unwrapError = error {
                completion(result: nil, error: unwrapError.localizedDescription)
            } else {
                completion(result: result, error: nil)
            }
        }
    }
    
}