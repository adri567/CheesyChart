//
//  SwiftUIView.swift
//  
//
//  Created by Adrian Suthold on 22.04.22.
//

import SwiftUI

struct ChartYAxiesStatsView: View {
    
    // MARK: - Properties
    let hide: Bool
    
    var body: some View {
        if !hide {
            VStack {
                Text("Highest")
                Spacer()
                Text("Middle")
                Spacer()
                Text("Lowest")
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ChartYAxiesStatsView(hide: false)
    }
}
