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
 //   var homepage_pr: String
   // var homepage_ar: String
    //var homepage_ukr: String
}
