/**
 * @file: TabBar.ets
 * @author: Yeluzii
 * @date: 2025/09/10
 */
export interface TabItem {
  title: string
  icon: Resource
  selectedIcon: Resource
}

@Component
export struct TabBar {
  @Prop selectedIndex: number = 0
  private tabItems: TabItem[] = []
  private onTabClick?: (index: number) => void

  build() {
    Row() {
      ForEach(this.tabItems, (item: TabItem, index: number) => {
        Column() {
          Image(this.selectedIndex === index ? item.selectedIcon : item.icon)
            .width(24)
            .height(24)

          Text(item.title)
            .fontSize(10)
            .fontColor(this.selectedIndex === index ? '#007AFF' : '#8E8E93')
            .margin({ top: 4 })
            .fontWeight(this.selectedIndex === index ? FontWeight.Medium : FontWeight.Normal)
        }
        .layoutWeight(1)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .padding({ top: 8, bottom: 8 })
        .onClick(() => {
          this.onTabClick?.(index)
        })
      })
    }
    .width('100%')
    .height(60)
    .backgroundColor('#FFFFFF')
    .border({
      width: { top: 0.5 },
      color: '#E5E5EA'
    })
  }
}