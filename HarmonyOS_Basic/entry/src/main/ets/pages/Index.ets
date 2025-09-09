import { MyButton } from '../components/MyButton'
import { MyProfile } from '../components/MyProfile'
import { UserList } from '../components/UserList'
import { UserProfile } from '../components/UserProfile'

@Entry
@Component
struct Index {
  // @State isOnline: boolean = false
  @State richText: string = '<h1 style="text-align: center;">h1标题</h1>' +
    '<h1 style="text-align: center;"><i>h1斜体</i></h1>' +
    '<h1 style="text-align: center;"><u>h1下划线</u></h1>' +
    '<h2 style="text-align: center;">h2标题</h2>' +
    '<h3 style="text-align: center;">h3标题</h3>' +
    '<p style="text-align: center;">p常规</p><hr/>' +
    '<div style="width: 500px;height: 500px;border: 1px solid;margin: 0 auto;">' +
    '<p style="font-size: 35px;text-align: center;font-weight: bold; color: rgb(24,78,228)">字体大小35px,行高45px</p>' +
    '<p style="background-color: #e5e5e5;line-height: 45px;font-size: 35px;text-indent: 2em;">' +
    '<p>这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字</p>'

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
        RichText(this.richText)
          .width('80%')
          .height('20%')

      UserList()

    }
    .width('100%')
    .height('100%')
  }
}