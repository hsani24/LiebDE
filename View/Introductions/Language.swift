//
//  Language.swift
//  LiebDE-1
//
//  Created by Sani I on 14.03.23.
//

import SwiftUI

struct Language: View {
    func buttonPressed(){
        print("button pressed")
    }
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
                Text("Please Select your language")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                
                    Button(action:{
                        buttonPressed()
                        
                    }){
                        Image("Flags")
                            .resizable()
                            .frame(width: 120, height: 90)
                        
                    }
                    Button(action:{
                        buttonPressed()
                        
                    }){
                        Image("English")
                            .resizable()
                            .frame(width: 120, height: 90)
                        
                    }
                    Button(action:{
                        buttonPressed()
                        
                    }){
                        Image("Turkish")
                            .resizable()
                            .frame(width: 120, height: 90)
                        
                    }
                    Button(action:{
                        buttonPressed()
                        
                    }){
                        Image("Persian")
                            .resizable()
                            .frame(width: 120, height: 90)
                    
                    }
                    Button(action:{
                        buttonPressed()
                        
                    }){
                        Image("Arabic")
                            .resizable()
                            .frame(width: 120, height: 90)
                          
                    }
                    Button(action:{
                        buttonPressed()
                        
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
        Language()
    }
}
