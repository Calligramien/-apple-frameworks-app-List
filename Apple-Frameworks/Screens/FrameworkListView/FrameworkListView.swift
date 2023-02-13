//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Damien Gautier on 10/02/2023.
//

import SwiftUI

struct FrameworkListView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
                List {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
