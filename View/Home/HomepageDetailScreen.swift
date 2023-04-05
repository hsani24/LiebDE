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
            // MARK:
            List{
                ForEach (homepage.categories){ category in
                    
                    // MARK:
                    NavigationLink(destination: CategoryDetailScreen(category: category)){
                        CategoryView(category: category)
                        
                    }
                }
                
            }
            
        }
    }

    struct HomepageDetailScreen_Previews: PreviewProvider {
        static var previews: some View {
            HomepageDetailScreen(homepage: Homepage(homepage_de: "", homepage_en: "", categories: [], homepage_tr: "", homepage_pr: "", homepage_ar: "", homepage_ukr: "", hometab_image: ""))
        }
    }
