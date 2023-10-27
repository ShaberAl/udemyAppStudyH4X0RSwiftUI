//
//  DetailView.swift
//  udemyAppStudyH4X0RSwiftUI
//
//  Created by MacOS on 27.10.2023.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com/")
    }
}
