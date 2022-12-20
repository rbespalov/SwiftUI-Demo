
import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}

//struct ContentView: View {
//
//    @State private var isPushLabelEnabled = false
//    @State private var isPushLabelEnabled2 = false
//
//
//    var body: some View {
//        Form {
//            Section {
//                Toggle(isOn: $isPushLabelEnabled) {
//                    Text("Push notifications")
//                }
//                Toggle(isOn: $isPushLabelEnabled2) {
//                    Text("Push notifications 2")
//                }
//            }
//            Toggle(isOn: $isPushLabelEnabled) {
//                Text("Push notifications")
//            }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

//struct ContentView: View {
//
//    @State var speed = 50.0
//    @State var editing = false
//
//    var body: some View {
//        VStack(alignment: .leading, spacing: 40 ) {
//            Slider(value: $speed, in: 0...100) { editing in
//                self.editing = editing
//                print("editing")
//            }
//            Text("\(speed)")
//                .foregroundColor(speed >= 80 ? .red : .green)
//        }
//        .padding()
//    }
//}
//
//struct ContentView_Preciews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            ContentView()
//        }
//    }
//}

//struct Universe: Identifiable {
//    var id: String { name }
//    var name: String
//}
//struct ContentView: View {
//    @State var universe: Universe?
//
//    var body: some View {
//        VStack (spacing: 16){
//            Text("Какая киновселенная вам нравится больше?")
//            Button(action: {
//                universe = Universe(name: "Marvel")
//            }, label: {
//                Text("Marvel")
//            })
//            Button(action: {
//                universe = Universe(name: "DC")
//            }, label: {
//                Text("DC")
//            })
//        }
//        .alert(item: $universe) { universe in
//            Alert(title: Text("Вы выбрали \(universe.name)"), dismissButton: .default(Text("OK")))
//        }
//    }
//}

struct ContentView: View {
    
    @State private var login: String = ""
    @State private var pass: String = ""
    
    var body: some View {
        
        TabView {
            Text("Feed Tab")
                .tabItem {
                    Image(systemName: "house.fill")
                        Text("Feed")
                }
            
            VStack(spacing: 20) {

                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding(.top, -200)
                
                VStack(spacing: 0) {
                    
                    TextField("Email or phone", text: $login)
                        .padding()
                        .background(Color.init(.systemGray6))
                    
                    Divider()
                        .background(Color.gray)
                        .frame(minHeight: 1)
                        .overlay(Color.gray)
                    
                    TextField("Password", text: $pass)
                        .padding()
                        .background(Color.init(.systemGray6))
                }
                .overlay(RoundedRectangle(cornerRadius: 15) .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                
                Button("Log in") {
                    print("logined")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
            .padding(.init(top: 0, leading: 15, bottom: 0, trailing: 15))
            .tabItem {
                Image(systemName: "person.fill")
                    Text("Profile")
            }
            
            Text("Player Tab")
                .tabItem {
                    Image(systemName: "music.note")
                        Text("Player")
                }
            
            Text("Video Tab")
                .tabItem {
                    Image(systemName: "play.rectangle.fill")
                        Text("Video")
                }
            
            Text("Recorder tab")
                .tabItem {
                    Image(systemName: "music.mic")
                        Text("Recorder")
                }
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
