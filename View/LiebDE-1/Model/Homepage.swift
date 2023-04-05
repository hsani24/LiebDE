//
//  Homepage.swift
//  LiebDE-1
//
//  Created by Sani I on 03.03.23.
//

import Foundation
struct Homepage: Identifiable, Hashable, Decodable {
    let id = UUID()
    var homepage_de: String
    var homepage_en: String
    var categories: [Category]
    var homepage_tr: String
    var homepage_pr: String
    var homepage_ar: String
    var homepage_ukr: String
    var hometab_image: String
    func getName (selectedLanguage : Language1?) -> String {
        if selectedLanguage != nil {
             
            switch selectedLanguage! {
            case .de : return homepage_de
            case .en:
                return homepage_en
            case .tr:
                return homepage_tr
            case .pr:
                return homepage_pr
            case .ar:
                return homepage_ar
            case .ukr:
                return homepage_ukr
            }
        }
        else {
            return homepage_en
        }
    }
}
