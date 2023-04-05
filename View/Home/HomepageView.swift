//
//  HomepageView.swift
//  LiebDE-1
//
//  Created by Sani I on 03.03.23.
//

import SwiftUI

struct HomepageView: View {
    @EnvironmentObject var viewModel: AppViewModel
    var homepage: Homepage
    var body: some View {
        
            
        
        ZStack{
            LinearGradient(colors: [.blue, .white], startPoint: .bottom, endPoint: .topTrailing)
            
            ZStack{
             
                Color.white
              
                HStack(alignment: .center, spacing: 5){
                    
                    Text(homepage.getName(selectedLanguage: viewModel.selectedLanguage))
                        .font(.body)
                        .frame(width: 150, height: 150, alignment: .center)
                        .foregroundColor(.blue)
                        .shadow(color: Color.white, radius: 5)
                        
                    Spacer()
                    AsyncImage(url: URL(string: homepage.hometab_image ?? "")) { image in
                        image
                            .resizable()
                            .frame(width: 150, height: 150)
                            .cornerRadius(20)
                            .tint(Color.white)
                    } placeholder: {
                        ProgressView()
                        
                    }
            }
                
        }
            .cornerRadius(20)
            .padding()
            .frame(width: 350)
            .onAppear{
                print(homepage.hometab_image)
            }
        }
    }
    func sendMessage(){
    }
}
    struct HomepageView_Previews: PreviewProvider {
        static var previews: some View {
            HomepageView(homepage: Homepage(homepage_de: "homepage_de", homepage_en: "homepage_en", categories:
                                                [], homepage_tr: "homepage_tr", homepage_pr: "homepage_pr", homepage_ar: "homepage_ar", homepage_ukr: "homepage_ukr", hometab_image: ""))
                         
        }
    }

