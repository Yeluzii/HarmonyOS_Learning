import { UserList } from './UserList'
import { Router } from '@kit.ArkUI'
import { ButtonProps } from '../model/ButtonProps'

@Entry
@Component
struct Index {
  router: Router = new Router()
  buttons: ButtonProps[] = [
    { text: '@State & @Prop', url: 'pages/StateAndProp' },
    { text: '@Link', url: 'pages/SettingsPage' },
    { text: '@Watch', url: 'pages/DataWatchExample' },
    { text: '自定义父传子 & 剪贴板', url: 'pages/UserList' },
    { text: 'RichText富文本渲染', url: 'pages/RichTextPage' },
  ]

  build() {
    Column({ space: 10 }) {
      Grid() {
        ForEach(this.buttons, (button: ButtonProps) => {
          GridItem() {
            Button(button.text)
              .onClick(() => {
                this.router.pushUrl({
                  url: button.url
                })
              })
          }
        })
      }
      .columnsGap(10)
      .rowsGap(10)
      .width('100%')
      .height('100%')

    }
    .padding(10)
    .width('100%')
    .height('100%')
  }
}