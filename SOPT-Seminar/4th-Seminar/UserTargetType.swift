//
//  UserTargetType.swift
//  SOPT-Seminar
//
//  Created by 송여경 on 4/27/24.
//

import Foundation

import Moya

//Config. baseURL을 통해서 접근
enum UserTargetType {
    case getUserInfo(memberId: String)
    case signUp(request: SignUpRequestModel)
}

extension UserTargetType: TargetType {
    var baseURL: URL {
        return URL(string: Config.baseURL)!
    }
    //path 지정
    var path: String {
        switch self {
        case .signUp:
            return "/member/join"
        case .getUserInfo(memberId: let memberId):
            return "/member/info"
        }
    }
    //명세서에 따라 get
    var method: Moya.Method {
        switch self {
        case .signUp:
            return .post
        case .getUserInfo:
            return .get
        }
    }
    //이번엔 인코딩해줄 body가 없기 때문에 .requestPlain으로 단순히 요청
    var task: Moya.Task {
        switch self {
        case .signUp(let request):
            return .requestJSONEncodable(request)
        case .getUserInfo:
            return .requestPlain
        }
    }
    //Content-type이 JSON이라는 정보와 memberId값 담기.
    var headers: [String : String]? {
        switch self {
        case.signUp:
            return ["Content-Type": "application/json"]
        case .getUserInfo(let memberId):
            return ["Content-Type": "application/json",
                    "memberId" : memberId]
        }
        
    }
}

