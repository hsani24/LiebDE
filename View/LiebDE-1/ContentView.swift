//
//  ContentView.swift
//  LiebDE-1
//
//  Created by Sani I on 02.03.23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = DataViewModel()
    var body: some View {
       
        HomeTab().environmentObject(viewModel)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
