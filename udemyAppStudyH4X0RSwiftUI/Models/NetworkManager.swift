//
//  NetworkManager.swift
//  udemyAppStudyH4X0RSwiftUI
//
//  Created by MacOS on 27.10.2023.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        guard let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if error == nil {
                let decoder = JSONDecoder()
                guard let safeData = data else { return }
                
                do {
                    let results = try decoder.decode(Results.self, from: safeData)
                    DispatchQueue.main.async {
                        self.posts = results.hits
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
        task.resume()
    }
}
