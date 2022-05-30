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
            
            let UpperBladeCurvePoint = size * 0.55
            let BottomBladeCurvePoint = size * 0.58
            
            let upperBladeYPoint = middle * 0.94
            
            let nearLine = size * 0.04
            let farLine = size * 0.96
            
            let bladeTrailingBottomXSharpPoint = farLine * 0.96
            let bladeTrailingSharpYPoint = middle * 0.975
            
            let bottomBladeXPoint = nearLine * 0.8
            let bottomSharpYPoint = middle * 1.009
            
            
            let cubaXPosition = nearLine * 6.6
            let cubaYPosition = middle * 0.985
            
            
            Path { path in
                path.move(to: CGPoint(x: nearLine , y: upperBladeYPoint))
                
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: upperBladeYPoint),
                    control: CGPoint(x: middle, y: UpperBladeCurvePoint)
                )
                path.addQuadCurve(
                    to: CGPoint(x: bladeTrailingBottomXSharpPoint, y: bottomSharpYPoint),
                    control: CGPoint(x: farLine, y: bladeTrailingSharpYPoint)
                )
                path.addQuadCurve(
                    to: CGPoint(x: bottomBladeXPoint, y: middle),
                    control: CGPoint(x: middle, y: BottomBladeCurvePoint)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: upperBladeYPoint),
                    control: CGPoint(x: nearLine - 4, y: middle - 8)
                )
            }
            
            Ellipse()
                .path(in: CGRect(
                    x: cubaXPosition,
                    y: cubaYPosition,
                    width: size * 0.016,
                    height: size * 0.1)
                )
                .rotationEffect(.degrees(7))
        }
//        .frame(width: 200, height: 200)
    }
}

struct Katana_Previews: PreviewProvider {
    static var previews: some View {
        Katana()
            .frame(width: 400, height: 400)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
