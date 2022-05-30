//
//  Suriken.swift
//  MyAnimation
//
//  Created by Артём Харченко on 30.05.2022.
//

import SwiftUI

struct Suriken: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2  //175
            let nearLine = size * 0.75
            let farLine = size * 0.25
            let radius = size * 0.13
        
            Path { path in
                path.move(to: CGPoint(x: 0 , y: 0))
                
                path.addLine(to: CGPoint(x: middle, y: farLine))
                
                path.addLine(to: CGPoint(x: size, y: 0))
                
                path.addLine(to: CGPoint(x: nearLine, y: middle))
                
                path.addLine(to: CGPoint(x: size, y: size))
                
                path.addLine(to: CGPoint(x: middle, y: nearLine))
                
                path.addLine(to: CGPoint(x: 0, y: size))
                
                path.addLine(to: CGPoint(x: farLine, y: middle))
            }
            .rotationEffect(.degrees(45))
            
//            Path { path in
//
//                path.addArc(
//                    center: CGPoint(x: middle, y: middle),
//                    radius: radius,
//                    startAngle: .degrees(0),
//                    endAngle: .degrees(360),
//                    clockwise: true
//                )
//            }
        }
    }
}

struct Suriken_Previews: PreviewProvider {
    static var previews: some View {
        Suriken()
            .frame(width: 200, height: 200)
    }
}
