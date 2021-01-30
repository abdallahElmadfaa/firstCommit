//
//  RegisterModel.swift
//  start-1
//
//  Created by Abdullah on 11/29/20.
//

import Foundation

// MARK: - RegisterModel
struct RegisterModel: Codable {
    let status: Bool
    let msg: String
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let token: String
    let haveJobCv, haveSupplyCv: Bool
}
