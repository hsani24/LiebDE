//
//  StartPage.swift
//  LiebDE-1
//
//  Created by Sani I on 14.03.23.
//

import SwiftUI

struct StartPage: View {
    func buttonPressed(){
        print("button pressed")
    }
    var body: some View {
        
        NavigationStack {
            ZStack{
                LinearGradient(colors: [.black, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                
                VStack{
                    
                    NavigationLink("Weiter") {
                        intro()
                        
                    }
                        GifImage("Liebde")
                            .frame(width: 300, height: 300, alignment: .top)
                            .cornerRadius(20)
                            .scaledToFill()
                        
                        Text("Your Second Home")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        Button(action:{
                            buttonPressed()
                            
                        }){
                            
                            GifImage("giphy")
                                .frame(width: 300, height: 300, alignment: .bottom)
                                .cornerRadius(20)
                                .scaledToFill()
                            
                        }
                    }
                    
                }
            
            
            
        }
    }
    
}
struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
