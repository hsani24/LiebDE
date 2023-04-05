//
//  SearchTab.swift
//  LiebDE-1
//
//  Created by Sani I on 03.03.23.
//

import SwiftUI


struct SearchTab: View {
    
    @State private var searchText = ""
    private let homepage = HomeTab()
    
    var body: some View {
        VStack {
            Image("dusseldorf1 1")
                .resizable()
                .frame(width: 330, height: 200)
                .cornerRadius(30)
            NavigationView {
                
                GifImage("Liebde")
                    .frame(width: 100, height: 100, alignment: .bottom)
                    .cornerRadius(20)
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .navigationTitle("Suchen")
                    .searchable(text: $searchText, prompt: "Schreiben Sie hier")
                    .font(.subheadline)
                
            }
            
        }
    }
}

struct SearchTab_Previews: PreviewProvider {
    static var previews: some View {
        SearchTab()
    }
}

