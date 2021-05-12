//
//  Collectionviewcell.swift
//  Collectionviewsui
//
//  Created by Ksheetij Tayde on 11/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import SwiftUI

struct Collectionviewcell: View {
    static let column = 3
    static let row = 3
    let width = (UIScreen.main.bounds.width/3)-20
    var index = 0
    init(row : Int , Column : Int) {
        index = row + Column + (row * 2)
    }
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8).frame(width: width, height: width).foregroundColor(Color.green)
            Text("\(index)").font(.largeTitle).foregroundColor(.white)
        }.onTapGesture {
        
            print("\(self.index)")
        
        }
        
    }
}

struct Collectionviewcell_Previews: PreviewProvider {
    static var previews: some View {
        Collectionviewcell(row: 0, Column: 1)
    }
}
