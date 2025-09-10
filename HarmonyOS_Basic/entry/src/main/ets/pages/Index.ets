import { TabBar, TabItem } from '../components/TabBar'
import { BasicComponentsPage } from './BasicComponentsPage'
import { LayoutStylePage } from './LayoutStylePage'
import { InteractionAnimationPage } from './InteractionAnimationPage'

@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  private tabItems: TabItem[] = [
    {
      title: '基础组件',
      icon: $r('app.media.tab_components_normal'),
      selectedIcon: $r('app.media.tab_components_selected')
    },
    {
      title: '布局样式',
      icon: $r('app.media.tab_layout_normal'),
      selectedIcon: $r('app.media.tab_layout_selected')
    },
    {
      title: '交互动画',
      icon: $r('app.media.tab_animation_normal'),
      selectedIcon: $r('app.media.tab_animation_selected')
    }
  ]

  @Builder
  getPageContent() {
    if (this.currentIndex === 0) {
      BasicComponentsPage()
    } else if (this.currentIndex === 1) {
      LayoutStylePage()
    } else if (this.currentIndex === 2) {
      InteractionAnimationPage()
    } else {
      BasicComponentsPage()
    }
  }

  build() {
    Column() {
      // 内容区域
      Column() {
        this.getPageContent()
      }
      .layoutWeight(1)

      // 底部导航栏
      TabBar({
        tabItems: this.tabItems,
        selectedIndex: this.currentIndex,
        onTabClick: (index: number) => {
          this.currentIndex = index
        }
      })
    }
    .height('100%')
    .backgroundColor('#F2F2F7')
  }
}

// import { UserList } from './UserList'
// import { Router } from '@kit.ArkUI'
// import { ButtonProps } from '../model/ButtonProps'
//
// @Entry
// @Component
// struct Index {
//   router: Router = new Router()
//   buttons: ButtonProps[] = [
//     { text: '@State & @Prop', url: 'pages/StateAndProp' },
//     { text: '@Link', url: 'pages/SettingsPage' },
//     { text: '@Watch', url: 'pages/DataWatchExample' },
//     { text: '自定义父传子 & 剪贴板', url: 'pages/UserList' },
//     { text: 'RichText富文本渲染', url: 'pages/RichTextPage' },
//   ]
//
//   build() {
//     Column({ space: 10 }) {
//       Grid() {
//         ForEach(this.buttons, (button: ButtonProps) => {
//           GridItem() {
//             Button(button.text)
//               .onClick(() => {
//                 this.router.pushUrl({
//                   url: button.url
//                 })
//               })
//           }
//         })
//       }
//       .columnsGap(10)
//       .rowsGap(10)
//       .width('100%')
//       .height('100%')
//
//     }
//     .padding(10)
//     .width('100%')
//     .height('100%')
//   }
// }