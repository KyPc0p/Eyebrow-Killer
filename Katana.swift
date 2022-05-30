//
//  Katana.swift
//  MyAnimation
//
//  Created by Артём Харченко on 30.05.2022.
//

import SwiftUI

struct Katana: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2  //175
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: nearLine - 20, y: middle - 10))
                
                path.addQuadCurve(
                    to: CGPoint(x: farLine + 20, y: middle - 10),
                    control: CGPoint(x: middle, y: 190)
                )
                path.addQuadCurve(
                    to: CGPoint(x: farLine + 5, y: middle   ),
                    control: CGPoint(x: farLine + 20, y: middle - 5)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine - 22, y: middle ),
                    control: CGPoint(x: middle , y: 200)
                )
                
            }
        }
    }
}

struct Katana_Previews: PreviewProvider {
    static var previews: some View {
        Katana()
            .frame(width: 350, height: 350)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
