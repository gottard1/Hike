//
//  SettingsView.swift
//  Hike
//
//  Created by Marcel Felipe Gottardi Anesi on 19/03/24.
//

import SwiftUI

struct SettingsView: View {
    private let alternateAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
    ]
    
    var body: some View {
        List {
            headerView
            
            appIconRow
            
            listRow
        }
    }
}

// MARK: - Layout
extension SettingsView {
    
    var headerView: some View {
        Section {
            HStack {
                Spacer()
                
                Image(systemName: "laurel.leading")
                    .font(.system(size: 80, weight: .black))
                
                VStack(spacing: -10) {
                    Text("Hike")
                        .font(.system(size: 66, weight: .black))
                    Text("Editors' choice")
                        .fontWeight(.medium)
                }
                
                Image(systemName: "laurel.trailing")
                    .font(.system(size: 80, weight: .black))
                
                Spacer()
            }
            .foregroundStyle(
                LinearGradient(
                    colors: [
                        .greenLight,
                        .greenMedium,
                        .greenDark
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .padding(.top, 8)
            
            VStack(spacing: 8) {
                Text("Where can you fond \nperfect tracks?")
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Text("The hike which looks gorgeous in photos but is even better once you are actually there. The kihe that you hope to do again someday. \nFind the best day hikes in the app.")
                    .font(.footnote)
                    .italic()
                
                Text("Dust off the boots! It's time for walk.")
                    .fontWeight(.heavy)
                    .foregroundStyle(.greenMedium)
            }
            .multilineTextAlignment(.center)
            .padding(.bottom, 16)
            .frame(maxWidth: .infinity)
            
        }
        .listRowSeparator(.hidden)
    }
    
    var appIconRow: some View {
        Section(
            header: Text("demais icones")
        ) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(alternateAppIcons.indices, id: \.self) { item in
                        Button {
                            UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) { error in
                                if error != nil {
                                    
                                }
                            }
                        } label: {
                            Image("preview-\(alternateAppIcons[item])")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(16)
                        }
                    .buttonStyle(.borderless)
                    }
                }
            }
            .padding(.top, 12)
            
            Text("Escolha o ícone favorito do aplicativo na coleção acima.")
                .frame(minWidth: 0, maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
                .font(.footnote)
                .padding(.bottom, 12)
        }
        .listRowSeparator(.hidden)
    }
    
    var listRow: some View {
        Section(
            header: Text("ABOUT THE APP"),
            footer:
                HStack {
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
                .padding(.vertical, 8)
        ) {
            CustomRowView(
                rowLabel: "Application",
                rowIcon: "apps.iphone",
                rowContent: "HIKE",
                rowTintColor: .blue
            )
            
            CustomRowView(
                rowLabel: "Compatibility",
                rowIcon: "info.circle",
                rowContent: "iOS, iPadOS",
                rowTintColor: .red
            )
            
            CustomRowView(
                rowLabel: "Technology",
                rowIcon: "swift",
                rowContent: "Swift",
                rowTintColor: .orange
            )
            
            CustomRowView(
                rowLabel: "Version",
                rowIcon: "gear",
                rowContent: "1.0",
                rowTintColor: .purple
            )
            
            CustomRowView(
                rowLabel: "Developer",
                rowIcon: "ellipsis.curlybraces",
                rowContent: "Marcel Felipe",
                rowTintColor: .mint
            )
            
            CustomRowView(
                rowLabel: "Designer",
                rowIcon: "paintpallet",
                rowContent: "Robert Petras",
                rowTintColor: .pink
            )
        }
    }
    
}

#Preview {
    SettingsView()
}
