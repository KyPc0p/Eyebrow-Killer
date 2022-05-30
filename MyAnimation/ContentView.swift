//
//  ContentView.swift
//  MyAnimation
//
//  Created by Артём Харченко on 30.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var start =  false
    @State private var rotation = 0.0
    
    var body: some View {
        VStack{
            HStack {
                Suriken()
                    .frame(width: 50, height: 50)
                    .rotationEffect(.degrees(rotation))
                    .offset(x: start ? UIScreen.main.bounds.width - 50 : 0)
                    .animation(.default, value: start)
                Spacer()
                
            }
            .onTapGesture {
                if rotation == 360 {
                    rotation = 0
                }
                start.toggle()
                rotation = 360
            }
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

extension AnyTransition {
    static var itemAnimation: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
        let removal = AnyTransition.scale
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
