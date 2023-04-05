//
//  Language.swift
//  LiebDE-1
//
//  Created by Sani I on 14.03.23.
//

import SwiftUI

struct Language: View {
    func buttonPressed(language: Language1){
        print("button pressed")
        viewModel.selectLanguage(language : language)
    }
    @EnvironmentObject var viewModel: AppViewModel
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("germany")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width:geo.size.width, height: geo.size.height, alignment: .center)
                    .opacity(1.0)
                    .blur(radius: 2)
                
                VStack{
                    Button(action: {
                        viewModel.signOut()},
                           label: {
                        Text("Sign Out")
                            .foregroundColor(Color.blue)
                    
                    })
                Text("Please Select Your Language")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                
                    Button(action:{
                        buttonPressed(language: Language1.de)
                        
                    }){
                        Image("Flags")
                            .resizable()
                            .frame(width: 120, height: 90)
                        
                    }
                    Button(action:{
                        buttonPressed(language: Language1.en)
                        
                    }){
                        Image("English")
                            .resizable()
                            .frame(width: 120, height: 90)
                        
                    }
                    Button(action:{
                        buttonPressed(language: Language1.tr)
                        
                    }){
                        Image("Turkish")
                            .resizable()
                            .frame(width: 120, height: 90)
                        
                    }
                    Button(action:{
                        buttonPressed(language: Language1.pr)
                        
                    }){
                        Image("Persian")
                            .resizable()
                            .frame(width: 120, height: 90)
                    
                    }
                    Button(action:{
                        buttonPressed(language: Language1.ar)
                        
                    }){
                        Image("Arabic")
                            .resizable()
                            .frame(width: 120, height: 90)
                          
                    }
                    Button(action:{
                        buttonPressed(language: Language1.ukr)
                        
                    }){
                        Image("Ukrainian")
                            .resizable()
                            .frame(width: 120, height: 90)
                            .cornerRadius(20)
                       
                    }
                }
            }
        }
    }
}
struct Language_Previews: PreviewProvider {
    static var previews: some View {
        Language().environmentObject(AppViewModel())
    }
}
