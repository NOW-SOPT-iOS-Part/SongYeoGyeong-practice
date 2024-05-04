//
//  SignUpRequestModel.swift
//  SOPT-Seminar
//
//  Created by 송여경 on 4/27/24.
//

import Foundation

struct SignUpRequestModel: Codable {
    let authenticationId: String
    let password: String
    let nickname: String
    let phone: String
}
