//
//  ContentView.swift
//  Collectionviewsui
//
//  Created by Ksheetij Tayde on 11/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0..<Collectionviewcell.column){ i in
                HStack{
                    ForEach(0..<Collectionviewcell.column){ j in Collectionviewcell(row: i, Column: j)
                    
                    }
                    }
                }
            
            }.navigationBarTitle("Collection View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
