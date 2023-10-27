//
//  ContentView.swift
//  udemyAppStudyH4X0RSwiftUI
//
//  Created by MacOS on 27.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                            .frame(width: 40, height: 20)
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
            .listStyle(GroupedListStyle())
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
