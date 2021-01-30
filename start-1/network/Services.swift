//
//  Services.swift
//  Sallah
//
//  Created by Ahmed on 12/18/19.
//  Copyright © 2019 AhmedDev. All rights reserved.
//
import UIKit
import Alamofire
 
 
let Headers : HTTPHeaders = ["Content-Type" : "application/x-www-form-urlencoded" , "X-Requested-With" : "XMLHttpRequest" , "X-lang" : "ar"]

  class Services {
   
     class  func  Register(name : String , phone : String , password: String ,callback: @escaping (RegisterModel) -> Void, failureHandler: @escaping (Error) -> Void) {
       
        let url = URLs.register_URL
          
        
           
        
        let parameters = ["name" : name , "phone" : phone , "password":password]

        Service.GetAnyData(url: url, method: .post, parameters: parameters, headers: Headers, callBack: { (data: RegisterModel) in
                             print("datataaaaaaa",data)
         
                             callback(data)
                         }) { (error) in
                             print("errroooooor",error)
                             failureHandler(error)
                         }
          
      }
    
    class  func  login(phone : String , password: String ,callback: @escaping (LoginModel) -> Void, failureHandler: @escaping (Error) -> Void) {
      
        let url = URLs.Login_URL
         
       
          
       
       let parameters = [ "phone" : phone , "password":password]

       Service.GetAnyData(url: url, method: .post, parameters: parameters, headers: Headers, callBack: { (data: LoginModel) in
                            print("datataaaaaaa",data)
        
                            callback(data)
                        }) { (error) in
                            print("errroooooor",error)
                            failureHandler(error)
                        }
         
     }
 
    
}
