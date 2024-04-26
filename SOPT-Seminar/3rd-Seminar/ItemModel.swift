//
//  ItemModel.swift
//  SOPT-Seminar
//
//  Created by 송여경 on 4/26/24.
//

import UIKit

struct ItemModel {
    let itemImg: UIImage
    let name: String
    let price: String
    var heartIsSelected: Bool
}

extension ItemModel {
    static func dummy() -> [ItemModel] {
        return [
            ItemModel(itemImg: .product1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .product1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .product1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .product1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .product1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .product1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .product1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .product1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .product1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .product1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .product1, name: "류희재", price: "22000원", heartIsSelected: false)
        ]
    }
}


