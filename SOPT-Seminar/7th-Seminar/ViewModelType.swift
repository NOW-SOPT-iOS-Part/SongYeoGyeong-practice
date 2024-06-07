//
//  ViewModelType.swift
//  SOPT-Seminar
//
//  Created by 송여경 on 6/8/24.
//

import RxSwift

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(from input: Input, disposeBag: RxSwift.DisposeBag) -> Output
}
