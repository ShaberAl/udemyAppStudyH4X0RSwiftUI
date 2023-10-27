//
//  WebView.swift
//  udemyAppStudyH4X0RSwiftUI
//
//  Created by MacOS on 27.10.2023.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safeString = urlString else { return }
        guard let url = URL(string: safeString) else { return }

        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
