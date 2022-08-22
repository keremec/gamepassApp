//
//  Capsules.swift
//  gamepassApp
//
//  Created by Kerem Safa Dirican on 22.08.2022.
//

import Foundation

class Capsules{
    
    init(capsuleId: Int, capsuleTitle: String, capsuleDesc: String, capsuleImgName: String) {
        self.capsuleId = capsuleId
        self.capsuleTitle = capsuleTitle
        self.capsuleDesc = capsuleDesc
        self.capsuleImgName = capsuleImgName
    }
    
    
    var capsuleId:Int?
    var capsuleTitle:String?
    var capsuleDesc:String?
    var capsuleImgName:String?
}
