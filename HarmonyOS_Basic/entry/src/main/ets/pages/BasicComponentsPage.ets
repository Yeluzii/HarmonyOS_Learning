/**
 * @file: BasicComponentsPage.ets
 * @author: Yeluzii
 * @date: 2025/09/10
 */

import router from '@ohos.router'

interface ComponentItem {
  title: string
  description: string
  icon: string
  route: string
}

@Component
export struct BasicComponentsPage {
  private componentList: ComponentItem[] = [
    {
      title: 'Text 文本组件',
      description: '用于显示文本内容，支持样式设置',
      icon: '📝',
      route: 'pages/components/TextComponentPage'
    },
    {
      title: 'Image 图片组件',
      description: '显示图片，支持本地和网络图片',
      icon: '🖼️',
      route: 'pages/components/ImageComponentPage'
    },
    {
      title: 'TextInput 输入框组件',
      description: '文本输入框，支持多种输入类型',
      icon: '⌨️',
      route: 'pages/components/InputComponentPage'
    },
    {
      title: 'Button 按钮组件',
      description: '可点击的按钮，支持多种样式',
      icon: '🔘',
      route: 'pages/components/ButtonComponentPage'
    },
    {
      title: 'List 列表组件',
      description: '显示列表数据，支持滚动和交互',
      icon: '📋',
      route: 'pages/components/ListComponentPage'
    },
    {
      title: '自定义组件',
      description: '创建和使用自定义组件',
      icon: '🧩',
      route: 'pages/components/CustomComponentPage'
    }
  ]

  build() {
    Column() {
      Text('基础组件学习')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .width('100%')
        .textAlign(TextAlign.Center)
        .padding({ top: 20, bottom: 20 })

      List({ space: 15 }) {
        ForEach(this.componentList, (item: ComponentItem, index: number) => {
          ListItem() {
            Row({ space: 15 }) {
              Text(item.icon)
                .fontSize(24)
                .width(40)
                .textAlign(TextAlign.Center)

              Column({ space: 5 }) {
                Text(item.title)
                  .fontSize(16)
                  .fontWeight(FontWeight.Medium)
                  .alignSelf(ItemAlign.Start)

                Text(item.description)
                  .fontSize(14)
                  .fontColor('#666666')
                  .alignSelf(ItemAlign.Start)
              }
              .alignItems(HorizontalAlign.Start)
              .layoutWeight(1)

              Text('>')
                .fontSize(18)
                .fontColor('#999999')
            }
            .width('100%')
            .padding(20)
            .backgroundColor('#FFFFFF')
            .borderRadius(12)
            .shadow({
              radius: 4,
              color: '#00000010',
              offsetX: 0,
              offsetY: 2
            })
          }
          .onClick(() => {
            router.pushUrl({
              url: item.route
            }).catch((err: Error) => {
              console.error('路由跳转失败:', err.message)
            })
          })
        })
      }
      .layoutWeight(1)
      .padding({ left: 20, right: 20, bottom: 20 })
    }
    .height('100%')
    .backgroundColor('#F2F2F7')
  }
}