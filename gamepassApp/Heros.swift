//
//  Heros.swift
//  gamepassApp
//
//  Created by Kerem Safa Dirican on 22.08.2022.
//

import Foundation

class Heros{
    
    init(heroId: Int, heroTitle: String, heroDesc: String, heroImgName: String) {
        self.heroId = heroId
        self.heroTitle = heroTitle
        self.heroDesc = heroDesc
        self.heroImgName = heroImgName
    }
    
    
    var heroId:Int?
    var heroTitle:String?
    var heroDesc:String?
    var heroImgName:String?
}
