//
//  PriceLabelView.swift
//  
//
//  Created by Adrian Suthold on 21.04.22.
//

import SwiftUI

public struct PriceLabelView: View {
    
    let setup: SetupChart
    let geometry: GeometryProxy
    @Binding var touchLocation: CGPoint
    @Binding var hide: Bool
    @Binding var point: Int

    public var body: some View {
        Text(point > 0 && point <= setup.data.count ? "\(setup.data[point])" : "")
            .padding(4)
            .background(Color.white)
            .position(x: calculateBorder(xLocation: touchLocation.x, geometry: geometry), y: 40)
            .foregroundColor(.black)
            .background(
                Rectangle()
                    .fill(Color(UIColor.lightGray))
                    .frame(width: 1, height: geometry.size.height)
                    .position(x: touchLocation.x, y: geometry.size.height / 2)
            )
            .opacity(hide ? 1 : 0)
            .zIndex(1)
    }
    
    private func calculateBorder(xLocation: CGFloat, geometry: GeometryProxy) -> CGFloat {
        if touchLocation.x > 50 && touchLocation.x < geometry.size.width - 50 {
            return touchLocation.x
        }
        return touchLocation.x > geometry.size.width - 50 ? geometry.size.width - 50 : 50
    }
}

//struct PriceLabelView_Previews: PreviewProvider {
//    static var previews: some View {
//        PriceLabelView(setup: SetupChart(), geometry: .constant(), touchLocation: <#Binding<CGPoint>#>, hide: <#Binding<Bool>#>, point: <#Binding<Int>#>)
//    }
//}
