//
//  TrendingMoviesView.swift
//  Muvis
//
//  Created by Erick Lozano Borges on 05/07/23.
//

import SwiftUI

struct TrendingMoviesView: View {
    
    let colums = [
        GridItem(spacing: 12.0),
        GridItem(spacing: 12.0),
        GridItem(spacing: 12.0)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(
                    columns: colums,
                    alignment: .center,
                    spacing: 12.0
                ) {
                    ForEach(0..<40) { _ in
                        Image(.mario)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(
                                RoundedRectangle(
                                    cornerRadius:12.0,
                                    style: .continuous
                                )
                            )
                        
                    }
                }
            }
            .padding(.horizontal)
            .contentMargins(.top, 16.0)
            .navigationTitle("Trending")
        }
    }
}

#Preview {
    TrendingMoviesView()
}
