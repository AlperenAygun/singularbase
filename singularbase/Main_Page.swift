//
//  ContentView.swift
//  singularbase
//
//  Created by Alperen Aygün on 27.06.2023.
//

import SwiftUI


struct Main_Page: View {
    @State private var _name: String = ""
    @State private var _surname: String = ""
    @State private var _showhello_alert = false
    
    
    //BU ALAN EKRAN BOYUTLARINI ALIYOR.
    func getScreenBounds() -> CGRect{
    return UIScreen.main.bounds
    }
    
    var body: some View {
        VStack() {
            HStack(){
                Button(action:{}){
                    Image(systemName: "house")
                        .font(.title2)
                }
                .padding(.trailing)
                .padding(.leading)
                Spacer()
                Text("GİRİŞ SAYFASI")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .frame(alignment: Alignment.top)
                Spacer()
                Button(action:{}){
                    Image(systemName: "house")
                        .foregroundColor(Color.white)
                        .font(.title2)
                }
                .padding(.trailing)
            }
            .frame(width: .infinity, height: 35, alignment: Alignment.top)
            .background()
            .compositingGroup()
            .shadow(radius: 3)
            Spacer()
            VStack(){
                TextField("  Ad", text: self.$_name)
                    .frame(width: getScreenBounds().width * 0.98,height: 50)
                    .textFieldStyle(PlainTextFieldStyle())
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black.opacity(Double(0.4))))
                
                TextField("  Soyad", text: self.$_surname)
                    .frame(width: getScreenBounds().width * 0.98,height: 50)
                    .textFieldStyle(PlainTextFieldStyle())
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black.opacity(Double(0.4))))
                TextField("  Doğum Tarihi", text: self.$_surname)
                    .frame(width: getScreenBounds().width * 0.98,height: 50)
                    .textFieldStyle(PlainTextFieldStyle())
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black.opacity(Double(0.4))))
                TextField("  Doğum Yeri", text: self.$_surname)
                    .frame(width: getScreenBounds().width * 0.98,height: 50)
                    .textFieldStyle(PlainTextFieldStyle())
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black.opacity(Double(0.4))))
                TextField("  Meslek", text: self.$_surname)
                    .frame(width: getScreenBounds().width * 0.98,height: 50)
                    .textFieldStyle(PlainTextFieldStyle())
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black.opacity(Double(0.4))))
                TextField("  Maaş", text: self.$_surname)
                    .frame(width: getScreenBounds().width * 0.98,height: 50)
                    .textFieldStyle(PlainTextFieldStyle())
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black.opacity(Double(0.4))))
                
                
                Button(action:{
                   _showhello_alert = true
                }){
                Text("Giriş Yap")
                        .foregroundColor(Color.white)
                        .frame(width: getScreenBounds().width * 0.98, height: 50, alignment: .center)
                        .background(.blue.opacity(Double(0.6)))
                        .cornerRadius(10)
                }
                .padding(.top, 20.0)
                .buttonStyle(PlainButtonStyle())
                .alert(isPresented: $_showhello_alert) {
                    Alert(title: Text("Merhaba"),message: Text("Merhaba "+_name+" "+_surname))
                }
            }
            
            Spacer()
            
            HStack(alignment: .bottom){
                AsyncImage(
                    url: URL(string: "https://logowik.com/content/uploads/images/flutter5786.jpg"),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 60, maxHeight: 80)
                    },
                    placeholder: {
                        ProgressView()
                    }
                ).padding(.top, 10.0)
                Spacer()
                AsyncImage(
                    url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Dart-logo-icon.svg/2048px-Dart-logo-icon.svg.png"),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 60, maxHeight: 80)
                    },
                    placeholder: {
                        ProgressView()
                    }
                ).padding(.top, 10.0)
                Spacer()
                VStack(){
                    Text("Alperen")
                        .font(.footnote)
                        .padding(.top)
                    Text("Aygün")
                        .font(.footnote)
                }
                Spacer()
                AsyncImage(
                    url: URL(string: "https://go.dev/blog/go-brand/Go-Logo/PNG/Go-Logo_Blue.png"),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 60, maxHeight: 80)
                    },
                    placeholder: {
                        ProgressView()
                    }
                ).padding(.top, 10.0)
                Spacer()
                AsyncImage(
                    url: URL(string: "https://cdn-icons-png.flaticon.com/256/919/919833.png"),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 60, maxHeight: 80)
                    },
                    placeholder: {
                        ProgressView()
                    }
                ).padding(.top, 10.0)
            }
            .background()
            .compositingGroup()
            .shadow(radius: 3)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40, alignment: Alignment.bottom)
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.top)
        .background(.gray.opacity(Double(0.05)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Main_Page()
    }
}
