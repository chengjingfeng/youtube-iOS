//  MIT License

//  Copyright (c) 2020 Haik Aslanyan

//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import SwiftUI

struct MainView: View {
  
  @State var selectedView = 0
  @EnvironmentObject var manager: StateManager
  
  var body: some View {
    ZStack {
      TabView(selection: $selectedView) {
        HomeView().tabItem {
          Image(systemName: "house.fill")
          Text("Home")
        }.tag(0)
        TrendingView().tabItem {
          Image(systemName: "flame.fill")
          Text("Trending")
        }.tag(1)
        PlaceholderView(placeholder: ObjectPlaceholder.subscription).tabItem {
          Image(systemName: "rectangle.stack.fill")
          Text("Subscriptions")
        }.tag(2)
        PlaceholderView(placeholder: ObjectPlaceholder.inbox).tabItem {
          Image(systemName: "envelope.fill")
          Text("Inbox")
        }.tag(3)
        PlaceholderView(placeholder: ObjectPlaceholder.library).tabItem {
          Image(systemName: "play.rectangle.fill")
          Text("Library")
        }.tag(4)
      }
      .accentColor(.white)
      .edgesIgnoringSafeArea(.top)
      if manager.showPlayer {
        Text("sfdghfdgf")
      }
    }
  }
}

struct TabView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}

