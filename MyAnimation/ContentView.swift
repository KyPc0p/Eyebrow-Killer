//
//  ContentView.swift
//  MyAnimation
//
//  Created by Артём Харченко on 30.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        Text("Hi")
        
        Katana()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width: 100, height: 100)
    }
}
