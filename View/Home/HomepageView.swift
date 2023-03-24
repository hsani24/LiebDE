//
//  HomepageView.swift
//  LiebDE-1
//
//  Created by Sani I on 03.03.23.
//

import SwiftUI

struct HomepageView: View {
    var homepage: Homepage
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            ZStack{
                Color.white
                HStack(alignment: .center, spacing: 10){
                    Text(homepage.homepage_de)
                        .font(.body)
                        .frame(width: 150, height: 100, alignment: .center)
                        .foregroundColor(.blue)
                    Spacer()
                    Image("LebenInDeutschland")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .trailing)
                        .cornerRadius(8)
                        .foregroundColor(.blue)
                    
                       
                        
                    
                }
                
            }
            .cornerRadius(20)
            .padding()
            .frame(width: 200)
        }
    }
    func sendMessage(){
    }
}
    struct HomepageView_Previews: PreviewProvider {
        static var previews: some View {
            HomepageView(homepage: Homepage(homepage_de: "homepage_de", homepage_en: "", categories:
                                                [], homepage_tr: ""))
                         
        }
    }

