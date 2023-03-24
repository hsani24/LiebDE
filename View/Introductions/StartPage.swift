//
//  StartPage.swift
//  LiebDE-1
//
//  Created by Sani I on 14.03.23.
//

import SwiftUI

struct StartPage: View {
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [.black, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            VStack{
                GifImage("Liebde")
                    .frame(width: 300, height: 300, alignment: .top)
                    .cornerRadius(20)
                    .scaledToFill()
                Text("Your Second Home")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                
                GifImage("giphy")
                    .frame(width: 300, height: 300, alignment: .bottom)
                    .cornerRadius(20)
                    .scaledToFill()
            }
                   
            }
        
        }
    
   
    }



struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
