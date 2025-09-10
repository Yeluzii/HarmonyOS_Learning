import { SettingsPanel } from "../components/SettingsPanel"

@Entry
@Component
export struct SettingsPage {
  @State isDarkMode: boolean = false
  @State fontSize: number = 16

  build() {
    Column() {
      Text('当前设置')
        .fontSize(this.fontSize)
        .fontColor(this.isDarkMode ? Color.White : Color.Black)
        .backgroundColor(this.isDarkMode ? Color.Black : Color.White)

      SettingsPanel({
        isDarkMode: $isDarkMode, // 使用$传递Link
        fontSize: $fontSize
      })
    }
    .width('100%')
    .height('100%')
  }
}