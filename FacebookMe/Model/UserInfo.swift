//
//  UserInfo.swift
//  FacebookMe
//
//  Created by simyo on 2021/08/24.
//

import UIKit

class UserInfo {
    var userThumnail:String
    var userName:String
    var userItroduction:String
    var userUniv:String
    var favorities:[String]
    
    init(userThumnail:String, userName:String, userItroduction:String, userUniv:String, favorities:[String]) {
        self.userThumnail = userThumnail
        self.userName = userName
        self.userItroduction = userItroduction
        self.userUniv = userUniv
        self.favorities = favorities
    }
    
}
