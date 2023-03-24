//
//  CategoryDetailView.swift
//  LiebDE-1
//
//  Created by Sani I on 03.03.23.
//

import SwiftUI

struct CategoryDetailScreen: View {
    var category: Category
       
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
            Text(category.info_de)
                .frame(width: 350, height: 600)
                .font(.title2)
                
        }
    }
}

struct CategoryDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailScreen(category: Category(category_de: "Info_de", info_tr: "", info_de: "", category_tr: "", category_en: "", info_en: ""))
    }
}

//.homepages.first!.categories.first!
