import { MyButton } from "../components/MyButton"
import { MyProfile } from "../components/MyProfile"

@Entry
@Component
export struct StateAndProp {
  @State isOnline: boolean = false

  build() {
    Column() {
      if (this.isOnline) {
        MyProfile()
      }
      Text(this.isOnline ? '在线' : '离线')
      MyButton({
        text: this.isOnline ? '下线' : '上线',
        color: this.isOnline ? Color.Red : Color.Green
      })
        .onClick(() => {
          this.isOnline = !this.isOnline
        })
    }
    .width('100%')
    .height('100%')
  }
}