//
//  ContentView.swift
//  singleton-swift-macro-example
//
//  Created by Michael Papp on 11/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)

			let cls = TesttheSwiftTestClass()
			let textStr1 = cls.trytheclass()
			Text(textStr1)
			let textStr2 = cls.trythestruct()
			Text(textStr2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
