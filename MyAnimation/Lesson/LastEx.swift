//
//  LastEx.swift
//  MyAnimation
//
//  Created by Артём Харченко on 30.05.2022.
//

import SwiftUI

struct LastEx: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middle),
                    control: CGPoint(x: size, y: 0)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: farLine),
                    control: CGPoint(x: size, y: size)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: middle),
                    control: CGPoint(x: 0, y: size)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: nearLine),
                    control: CGPoint(x: 0, y: 0)
                )
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.white, .yellow]),
                    center: .center,
                    startRadius: size * 0.05,
                    endRadius: size * 0.6
                )
            )
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: nearLine, y: nearLine),
                    radius: middle,
                    startAngle: .degrees(90),
                    endAngle: .degrees(0),
                    clockwise: true
                )
                
                path.addArc(
                    center: CGPoint(x: farLine, y: nearLine),
                    radius: middle,
                    startAngle: .degrees(180),
                    endAngle: .degrees(90),
                    clockwise: true
                )
                
                path.addArc(
                    center: CGPoint(x: farLine, y: farLine),
                    radius: middle,
                    startAngle: .degrees(270),
                    endAngle: .degrees(180),
                    clockwise: true
                )
                
                path.addArc(
                    center: CGPoint(x: nearLine, y: farLine),
                    radius: middle,
                    startAngle: .degrees(0),
                    endAngle: .degrees(270),
                    clockwise: true
                )
                path.closeSubpath()
            }
            .stroke(Color.orange, lineWidth: 3)
        }
    }
}

struct LastEx_Previews: PreviewProvider {
    static var previews: some View {
        LastEx()
            .frame(width: 200, height: 200)
    }
}
