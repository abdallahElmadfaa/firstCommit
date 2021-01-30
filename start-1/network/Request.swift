//
//  Request.swift
//  Sallah
//
//  Created by Ahmed on 12/18/19.
//  Copyright © 2019 AhmedDev. All rights reserved.
//

import Foundation

import UIKit
import Alamofire

 class Service {
 
    
  //MARK:- get web data.
 class func GetAnyData<T: Codable>(url: String, method: HTTPMethod, parameters: Parameters?,
                                   headers: HTTPHeaders?, callBack: @escaping (T) -> Void,
                                   failureHandler:@escaping (Error) -> Void){
  
        Alamofire.request(url, method: method, parameters: parameters, encoding: URLEncoding.default, headers: headers).responseJSON { (response) in
                guard let data = response.data else {return}
                switch response.result{
                case .success(_ ):
                    do{
                        let decoder = JSONDecoder()
                        let model = try decoder.decode(T.self, from: data)
                        callBack(model)
                    }catch let error{
                        print("decoder error formatting", error)
                    }
                case .failure(let error):
                    failureHandler(error)
                }
            }
        }
 
}

