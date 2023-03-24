//
//  CategoryView.swift
//  LiebDE-1
//
//  Created by Sani I on 03.03.23.
//

import SwiftUI

struct CategoryView: View {
    
    var name : String
    var imageName : String?
    var description : String
    var imageURL : String?
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            ZStack{
                Color.white
                
                HStack{
                    
                    AsyncImage(url: URL(string: imageURL ?? "")) { image in
                        image.resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(20)
                            .tint(Color.white)
                    } placeholder: {
                        ProgressView()
                        
                    }
                    VStack{
                        Text(name)
                       Button(action: sendMessage){
                            Text("Für Details")
                                .tint(Color.blue)
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
            CategoryView( name: "Düsseldorf", imageName: "LebenInDeutschland", description: "Herzlich Willkommen", imageURL: "https://public.syntax-institut.de/apps/batch3/Sani/pics/sicherheit.jpeg")
        }
    }
    
}
