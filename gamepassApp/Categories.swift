//
//  Categories.swift
//  gamepassApp
//
//  Created by Kerem Safa Dirican on 23.08.2022.
//

import Foundation

class Categories{
    internal init(CategoryId: Int, CategoryTitle: String, CategoryColor: String, CategoryImgName: String) {
        self.CategoryId = CategoryId
        self.CategoryTitle = CategoryTitle
        self.CategoryColor = CategoryColor
        self.CategoryImgName = CategoryImgName
    }
    
    
    var CategoryId:Int?
    var CategoryTitle:String?
    var CategoryColor:String?
    var CategoryImgName:String?
}

