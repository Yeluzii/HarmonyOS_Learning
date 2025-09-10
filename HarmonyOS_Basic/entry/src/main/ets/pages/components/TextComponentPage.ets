/**
 * @file: TextComponentPage.ets
 * @author: Yeluzii
 * @date: 2025/09/10
 */

import router from '@ohos.router'

@Entry
@Component
struct TextComponentPage {
  @State fontSize: number = 16
  @State textColor: string = '#000000'
  @State fontWeight: FontWeight = FontWeight.Normal
  @State textAlign: TextAlign = TextAlign.Start

  build() {
    Column() {
      // 标题栏
      Row() {
        Row({ space: 2 }) {
          Image($r('app.media.ic_arrow_left'))
            .width(28)
            .height(28)
            .fillColor('#333333')
          Text('返回')
        }
        .onClick(() => {
          router.back()
        })

        Text('📝 Text 文本组件')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .layoutWeight(1)
          .textAlign(TextAlign.Center)

        Text('   ').width(60) // 占位平衡
      }
      .width('100%')
      .padding(16)
      .backgroundColor('#FFFFFF')
      .shadow({
        radius: 4,
        color: '#00000008',
        offsetX: 0,
        offsetY: 2
      })

      Scroll() {
        Column({ space: 20 }) {
          Text('Text组件基础用法')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .width('100%')
            .textAlign(TextAlign.Center)
            .margin({ bottom: 10 })

          Divider().color('#E5E5EA')

          // 基础文本示例
          Column({ space: 15 }) {
            Text('基础文本示例')
              .fontSize(16)
              .fontWeight(FontWeight.Medium)
              .alignSelf(ItemAlign.Start)

            Text('这是一段普通的文本')
              .fontSize(16)
              .padding(15)
              .backgroundColor('#F8F9FA')
              .borderRadius(8)

            Text('这是加粗的文本')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .padding(15)
              .backgroundColor('#F8F9FA')
              .borderRadius(8)

            Text('这是带颜色的文本')
              .fontSize(16)
              .fontColor('#007AFF')
              .padding(15)
              .backgroundColor('#F8F9FA')
              .borderRadius(8)
          }

          Divider().color('#E5E5EA')

          // 动态文本示例
          Column({ space: 15 }) {
            Text('动态文本示例')
              .fontSize(16)
              .fontWeight(FontWeight.Medium)
              .alignSelf(ItemAlign.Start)

            Text('可调整的文本样式')
              .fontSize(this.fontSize)
              .fontColor(this.textColor)
              .fontWeight(this.fontWeight)
              .textAlign(this.textAlign)
              .width('100%')
              .padding(15)
              .backgroundColor('#F8F9FA')
              .borderRadius(8)

            // 控制面板
            Column({ space: 10 }) {
              Row() {
                Text('字体大小:')
                  .fontSize(14)
                  .layoutWeight(1)

                Button('-')
                  .width(40)
                  .height(30)
                  .onClick(() => {
                    if (this.fontSize > 12) {
                      this.fontSize--
                    }
                  })

                Text(`${this.fontSize}px`)
                  .fontSize(14)
                  .width(50)
                  .textAlign(TextAlign.Center)

                Button('+')
                  .width(40)
                  .height(30)
                  .onClick(() => {
                    if (this.fontSize < 30) {
                      this.fontSize++
                    }
                  })
              }

              Row() {
                Text('字体粗细:')
                  .fontSize(14)
                  .layoutWeight(1)

                Button('正常')
                  .fontSize(12)
                  .backgroundColor(this.fontWeight === FontWeight.Normal ? '#007AFF' : '#E5E5EA')
                  .fontColor(this.fontWeight === FontWeight.Normal ? Color.White : '#666666')
                  .onClick(() => {
                    this.fontWeight = FontWeight.Normal
                  })

                Button('加粗')
                  .fontSize(12)
                  .backgroundColor(this.fontWeight === FontWeight.Bold ? '#007AFF' : '#E5E5EA')
                  .fontColor(this.fontWeight === FontWeight.Bold ? Color.White : '#666666')
                  .onClick(() => {
                    this.fontWeight = FontWeight.Bold
                  })
              }

              Row() {
                Text('文本对齐:')
                  .fontSize(14)
                  .layoutWeight(1)

                Button('左对齐')
                  .fontSize(12)
                  .backgroundColor(this.textAlign === TextAlign.Start ? '#007AFF' : '#E5E5EA')
                  .fontColor(this.textAlign === TextAlign.Start ? Color.White : '#666666')
                  .onClick(() => {
                    this.textAlign = TextAlign.Start
                  })

                Button('居中')
                  .fontSize(12)
                  .backgroundColor(this.textAlign === TextAlign.Center ? '#007AFF' : '#E5E5EA')
                  .fontColor(this.textAlign === TextAlign.Center ? Color.White : '#666666')
                  .onClick(() => {
                    this.textAlign = TextAlign.Center
                  })

                Button('右对齐')
                  .fontSize(12)
                  .backgroundColor(this.textAlign === TextAlign.End ? '#007AFF' : '#E5E5EA')
                  .fontColor(this.textAlign === TextAlign.End ? Color.White : '#666666')
                  .onClick(() => {
                    this.textAlign = TextAlign.End
                  })
              }
            }
            .padding(15)
            .backgroundColor('#FFFFFF')
            .borderRadius(10)
          }

          Divider().color('#E5E5EA')

          // 特殊效果文本
          Column({ space: 15 }) {
            Text('特殊效果文本')
              .fontSize(16)
              .fontWeight(FontWeight.Medium)
              .alignSelf(ItemAlign.Start)

            Text('带下划线的文本')
              .fontSize(16)
              .decoration({
                type: TextDecorationType.Underline,
                color: '#007AFF'
              })
              .padding(15)
              .backgroundColor('#F8F9FA')
              .borderRadius(8)

            Text('带删除线的文本')
              .fontSize(16)
              .decoration({
                type: TextDecorationType.LineThrough,
                color: '#FF0000'
              })
              .padding(15)
              .backgroundColor('#F8F9FA')
              .borderRadius(8)

            Text('多行文本示例：这是一段很长的文本，用于演示文本的自动换行功能，当文本超出容器宽度时会自动换行显示。')
              .fontSize(16)
              .maxLines(3)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .lineHeight(24)
              .padding(15)
              .backgroundColor('#F8F9FA')
              .borderRadius(8)
          }
        }
        .padding(20)
        .width('100%')
      }
      .layoutWeight(1)
    }
    .height('100%')
    .backgroundColor('#F2F2F7')
  }
}