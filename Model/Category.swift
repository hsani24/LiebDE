//
//  Category.swift
//  LiebDE-1
//
//  Created by Sani I on 03.03.23.
//

import Foundation


struct Category: Identifiable, Hashable, Decodable {
  let id = UUID()
  var address: String?
  var category_de: String
  var website: String?
  var info_tr: String
  var info_de: String
  var image: String?
  var category_tr: String
  var email: String?
  var tel:String?
  var category_en: String
  var info_en: String
}



