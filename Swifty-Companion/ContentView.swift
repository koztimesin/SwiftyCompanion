//
//  ContentView.swift
//  Swifty-Companion
//
//  Created by koztimesin on 24/01/2021.
//

import SwiftUI
import Alamofire

struct ContentView: View {
        
    var auth = Auth()
    
    var body: some View {
        
        NavigationView {
            SearchView(auth: auth).navigationBarTitle("Search",displayMode: .large).environmentObject(User())
           
        }.onAppear{
            fetch()
        }
    }
    
    private func fetch() {
        auth.getToken()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
