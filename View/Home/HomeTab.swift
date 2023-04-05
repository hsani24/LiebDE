//
//  HomeTab.swift
//  LiebDE-1
//
//  Created by Sani I on 03.03.23.
//

import SwiftUI

struct HomeTab: View {
    
    @EnvironmentObject var viewmodel: DataViewModel
    @EnvironmentObject var authViewModel : AppViewModel
    
    var body: some View {
       
            VStack{
                Button(action: {
                    authViewModel.signOut()
                    
                },
                       label: {
                    Text ("Sign Out")
                        .foregroundColor(Color.blue)
                })
                Button(action: {
                    
                    authViewModel.resetLanguage()
                },
                       label: {
                    Text ("Change Language")
                        .foregroundColor(Color.blue)
                })
                List{
                    ForEach (viewmodel.homepages){ homepage in
                        
                        
                        NavigationLink(value: homepage){
                            
                            HomepageView(homepage: homepage)
                            
                        }.navigationDestination(for: Homepage.self){ homepage in
                            HomepageDetailScreen(homepage: homepage)
                        }
                    
                    }
                    
                } .listStyle(.plain)
            }
        }
    
}
    struct HomeTab_Previews: PreviewProvider {
        static var previews: some View {
            HomeTab().environmentObject(DataViewModel())
        }
    }

