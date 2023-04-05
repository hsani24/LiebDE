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
            ScrollView{
            
                
            Text(category.info_de)
                .frame(width: 350)
                .font(.title2)
                .foregroundColor(Color.black)
            
            }
        }
    }
}
struct CategoryDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailScreen(category: Category(address: "", category_de: "Info_de", website: "", info_tr: "", info_de: "", image: "", category_tr: "", email: "", tel: "", category_en: "", info_en: "", info_pr: "", info_ar: "", info_ukr: "" ))
    }
}

//.homepages.first!.categories.first!
