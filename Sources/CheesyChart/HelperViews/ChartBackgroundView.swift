//
//  ChartBackgroundView.swift
//  
//
//  Created by Adrian Suthold on 22.04.22.
//

import SwiftUI

struct ChartBackgroundView: View {
    
    // MARK: - Properties
    let backgroundColor: Color
    
    var body: some View {
        VStack {
            Divider()
            Spacer()
            Divider()
            Spacer()
            Divider()
        }
        .background(backgroundColor)
    }
}

struct ChartBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ChartBackgroundView(backgroundColor: .white)
    }
}
