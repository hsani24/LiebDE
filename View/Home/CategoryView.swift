//
//  CategoryView.swift
//  LiebDE-1
//
//  Created by Sani I on 03.03.23.
//

import SwiftUI

struct CategoryView: View {
    
    
    var category: Category
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            ZStack{
                Color.white
                
                HStack{
                    AsyncImage(url: URL(string: category.image ?? "")) { image in
                        image
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(20)
                            .tint(Color.white)
                    } placeholder: {
                        ProgressView()
                        
                    }
                    VStack{
                        Text(category.category_de)
                       Button(action: sendMessage){
                            
                                
                        }
                        .padding()
                        .background(Color.white)
                        .clipShape(Capsule())
                        
                    }
                }
                .padding()
            }
            .cornerRadius(30)
            
            .padding()
        }
    }
    func sendMessage(){
    }
    
    
    struct CategoryView_Previews: PreviewProvider {
        static var previews: some View {
            CategoryView(category: Category(address: "letterstrasse", category_de: "", website: "", info_tr: "", info_de: "", image: "https://public.syntax-institut.de/apps/batch3/Sani/pics/sicherheit.jpeg", category_tr: "", tel: "", category_en: "", info_en: "", info_pr: "", info_ar: "", info_ukr: ""))
        }
    }
    
}
