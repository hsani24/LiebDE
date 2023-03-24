//
//  HomepageDetailView.swift
//  LiebDE-1
//
//  Created by Sani I on 03.03.23.
//

import SwiftUI

struct HomepageDetailScreen: View {
        var homepage: Homepage
        var body: some View {
            
            List{
                ForEach (homepage.categories){ category in
                    
                    NavigationLink(value: category){
                        CategoryView(name: category.category_de, imageName: category.image, description: category.info_de, imageURL: category.image)
                        
                    }.navigationDestination(for: Category.self){ category in
                        CategoryDetailScreen(category: category)
                    }
                }
                
            }
            
        }
    }

    struct HomepageDetailScreen_Previews: PreviewProvider {
        static var previews: some View {
            HomepageDetailScreen(homepage: Homepage(homepage_de: "", homepage_en: "", categories: [Category(category_de: "", info_tr: "", info_de: "", category_tr: "", category_en: "", info_en: "")], homepage_tr: ""))
        }
    }
