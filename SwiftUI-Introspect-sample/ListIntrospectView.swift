//
//  ListIntrospectView.swift
//  SwiftUI-Introspect-sample
//
//  Created by kazunori.aoki on 2022/07/30.
//

import SwiftUI
import Introspect

struct ListIntrospectView: View {
    var body: some View {
        List(1...30, id: \.self) { i in
            Text("Item #\(i)")
        }
//        .listRowSeparator(.hidden) // iOS15以降
        .introspectTableView { tableView in
            // tableViewを取得して、ゴニョゴニョする
            tableView.separatorStyle = .none
        }
        .introspectTableViewCell { cell in
            cell.backgroundColor = .blue
        }
    }
}

struct ListIntrospectView_Previews: PreviewProvider {
    static var previews: some View {
        ListIntrospectView()
    }
}
