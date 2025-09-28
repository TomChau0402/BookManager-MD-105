//
//  SettingsView.swift
//  BookManager
//
import SwiftUI

struct SettingsView: View {
    
   // @State var currentThemeState: Theme = .light
    @AppStorage(SETTING_THEME_KEY) var currentTheme: Theme = .light
    @AppStorage(SETTING_GRID_COLUMNS_KEY) var gridColumns: Int =
        SETTING_GRID_COLUMNS_DEFAULT_VALUE
    

    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Appearance")){
                    Picker("Theme", selection: $currentTheme){
                        ForEach(Theme.allCases, id: \.self){ theme in
                            Text(theme.rawValue.capitalized).tag(theme)
                        }
                    }
                }
                Section(header: Text("Grid")) {
                    Stepper("Columns: \(gridColumn)", value:
                                $gridColumn, in:2...4)
                }
            }
            
        }
    }
}
//

