//
//  TabBarHost.swift
//  LiebDE-1
//
//  Created by Sani I on 03.03.23.
//

import SwiftUI

struct TabBarHost: View {
    @StateObject var viewModel = DataViewModel()
    
    var body: some View {
        TabView{
            HomeTab().tabItem({
                Image(systemName: "house")
                Text("Home")
            })
            .tag(0)
            SearchTab().tabItem({
                Image(systemName: "magnifyingglass")
                Text("Search")
            })
            .tag(1)
        }.environmentObject(viewModel)
    }
}

struct MainTabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarHost()
    }
}

