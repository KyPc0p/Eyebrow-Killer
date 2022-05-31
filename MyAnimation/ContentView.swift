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
    @State private var isKatana = true
    @State private var throwAngle = 0.0
    
    var body: some View {
        ZStack {
            Circle().foregroundColor(.pink)
                .frame(width: 180, height: 180)
            VStack {
                Text("TRY TO HIT THE EYEBROW")
                    .font(.title)
                    .bold()
                    .padding()
                VStack{
                    Spacer()
                    HStack {
                        if isKatana {
                            Katana()
                                .frame(width: 200, height: 200)
                                .rotationEffect(.degrees(rotation))
                                .offset(x: start ? UIScreen.main.bounds.width - 200 : 0)
                                .rotationEffect(.degrees(throwAngle))
                                .animation(.default, value: start)
                        } else {
                            Suriken()
                                .frame(width: 20, height: 20)
                                .rotationEffect(.degrees(rotation))
                                .offset(x: start ? UIScreen.main.bounds.width - 70: 0)
                                .rotationEffect(.degrees(throwAngle))
                                .animation(.default, value: start)
                        }
                        Spacer()
                    }
                    Spacer()
                    Text("Trow").font(.title).bold()
                        .onTapGesture {
                            if start {
                                rotation = 0
                                throwAngle = Double.random(in: -5...7)
                                start.toggle()
                            } else {
                                start.toggle()
                                rotation = 360
                            }
                        }
                    
                    Text("Change Weapon")
                        .font(.title)
                        .bold()
                        .onTapGesture {
                            isKatana.toggle()
                        }
                }
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
