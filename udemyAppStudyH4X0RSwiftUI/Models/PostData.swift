//
//  PostData.swift
//  udemyAppStudyH4X0RSwiftUI
//
//  Created by MacOS on 27.10.2023.
//

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String { objectID }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
