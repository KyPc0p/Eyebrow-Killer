//
//  SwiftUIView.swift
//  MyAnimation
//
//  Created by Артём Харченко on 30.05.2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: nearLine - 20, y: middle - 10))
                path.addLine(to: CGPoint(x: 100, y: middle - 10))
                path.addLine(to: CGPoint(x: 100, y: middle - 30))
                path.addLine(to: CGPoint(x: 105, y: middle - 30))
                path.addLine(to: CGPoint(x: 105, y: middle - 10))
                
                path.addLine(to: CGPoint(x: middle + 30, y: middle - 10))
                path.addQuadCurve(
                    to: CGPoint(x: farLine + 20, y: middle + 10),
                    control: CGPoint(x: 300, y: middle - 9)
                )
                
                
                
                path.addLine(to: CGPoint(x: 105, y: middle + 10))
                path.addLine(to: CGPoint(x: 105, y: middle + 30))
                path.addLine(to: CGPoint(x: 100, y: middle + 30))
                path.addLine(to: CGPoint(x: 100, y: middle + 10))
                path.addLine(to: CGPoint(x: nearLine - 20, y: middle + 10))
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .frame(width: 350, height: 350)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
