import router from '@ohos.router';

/**
 * @file: InputComponentPage.ets
 * @author: Yeluzii
 * @date: 2025/09/10
 */

@Entry
@Component
struct InputComponentPage {
  build() {
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

      Text('⌨️ Input 输入框组件')
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
  }
}