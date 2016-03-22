//
//  NetworkBase.swift
//  SampleToday
//
//  Created by Renato Matos on 22/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

import Foundation
import Alamofire

public class NetworkBase: NSObject {
    
    
    //Base URL Dev
    let baseUrl = "https://api.github.com/repos/CocoaHeadsBrasil/equinociOS/issues"
    
    //Call Method Default
    func callMethod(completion: (result: AnyObject?, error: NSError?) -> Void) {
        
        Alamofire.request(.GET, baseUrl)
            .validate()
            .responseJSON { response in
                
                switch response.result {
                case .Success:
                    completion(result: response.result.value, error: nil)
                case .Failure:
                    completion(result: nil, error: response.result.error)
                }
        }
        
    }
    
}