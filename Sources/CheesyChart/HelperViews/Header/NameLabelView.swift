//
//  NameLabelView.swift
//  
//
//  Created by Adrian Suthold on 22.04.22.
//

import SwiftUI

struct NameLabelView: View {
    
    // MARK: - Properties
    var setup: SetupChart
    
    var body: some View {
        Text(setup.name)
            .foregroundColor(setup.chartHeaderFontColor)
            .font(.system(size: 24, weight: .semibold))
    }
}

struct NameLabelView_Previews: PreviewProvider {
    static var previews: some View {
        NameLabelView(setup: SetupChart(name: "Bitcoin"))
            .previewLayout(.sizeThatFits)
    }
}
