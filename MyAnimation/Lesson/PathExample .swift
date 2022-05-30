//
//  PathExample .swift
//  MyAnimation
//
//  Created by Артём Харченко on 30.05.2022.
//

import SwiftUI

struct PathExample_: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: nearLine + middle, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: middle - nearLine, y: nearLine))
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: middle, y: farLine))
            }
            .strokedPath(
                StrokeStyle(lineWidth: 3, dash: [size / nearLine])
            ).foregroundColor(.white)
        
        
            Image(systemName: "car.fill")
                .resizable()
                .foregroundColor(.white)
                .scaleEffect(nearLine / 100)
                .offset(x: -size / 7.3)
            
        }
        
    }
}

struct PathExample__Previews: PreviewProvider {
    static var previews: some View {
        PathExample_()
            .frame(width: 200, height: 200)
    }
}
