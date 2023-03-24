//
//  CategoryViewModel.swift
//  LiebDE-1
//
//  Created by Sani I on 02.03.23.
//

import Foundation
import SwiftUI

@MainActor class DataViewModel: ObservableObject{
    @Published var homepages: [Homepage] = []
    
    init() {
        fetchAPI(){homepage in
            self.homepages = homepage
        }
    }
    
    func fetchAPI(completion: @escaping ([Homepage]) -> ()){
        guard let url = URL(string: "https://public.syntax-institut.de/apps/batch3/Sani/saniApi.json") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let homepage = try! JSONDecoder().decode([Homepage].self, from: data!)
            DispatchQueue.main.async {
                completion(homepage)
            }
        }
        .resume()
    }
}
/*@MainActor class DataViewModel: ObservableObject {
    @Published var homepages: [Homepage] = []
    
    init(){
        loadCategories()
    }
    
    func loadCategories(){
        // TODO make API call when API is ready
        homepages = [
            Homepage(homapage_de: "homepage_de", homepage_en: "", homepage_tr: "", categories:
                        [
                            Category(category_de: "Leben In Düsseldorf", category_en: "Life in Düsseldorf", category_tr: "Düsseldorf'da Yasam", image: "https://public.syntax-institut.de/apps/batch3/Sani/pics/bildung.jpeg", info_de: "", info_en: "", info_tr: "" ),
                            Category(category_de: "Leben In Düsseldorf", category_en: "Life in Düsseldorf", category_tr: "Düsseldorf'da Yasam", info_de: "", info_en: "", info_tr: "" ),
                            Category(category_de: "Auslanderbehörde", category_en: "Foreigners Authority", category_tr: "Yabancilar Kurumu", info_de: "", info_en: "", info_tr: "" ),
                            Category(category_de: "Job Center", category_en: "Job Center", category_tr: "Is Merkezi", info_de: "", info_en: "", info_tr: "")
                           
                            
                        ]
                    )]
        // this is only dummy data
       
        
    }

    
}*/

