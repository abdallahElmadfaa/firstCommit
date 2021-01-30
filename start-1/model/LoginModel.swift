//
//  LoginModel.swift
//  start-1
//
//  Created by Abdullah on 12/2/20.
//

import Foundation

// MARK: - LoginModel
struct LoginModel: Codable {
    let status: Bool
    let msg: String
    let data: loginDataClass
}

// MARK: - DataClass
struct loginDataClass: Codable {
    let token: String
    let haveJobCv, haveSupplierCv: Bool
}

