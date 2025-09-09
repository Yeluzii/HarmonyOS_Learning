import { MyButton } from '../components/MyButton'
import { MyProfile } from '../components/MyProfile'
import { UserList } from '../components/UserList'
import { UserProfile } from '../components/UserProfile'

@Entry
@Component
struct Index {
  // @State isOnline: boolean = false

  build() {
    Column({ space: 10 }) {
      // if (this.isOnline) {
      //   MyProfile()
      // }
      // Text(this.isOnline ? '在线' : '离线')
      // MyButton({
      //   text: this.isOnline ? '下线' : '上线',
      //   color: this.isOnline ? Color.Red : Color.Green
      // })
      //   .onClick(() => {
      //     this.isOnline = !this.isOnline
      //   })
      UserList()

    }
    .width('100%')
    .height('100%')
  }
}