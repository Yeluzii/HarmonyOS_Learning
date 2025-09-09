@Component
export struct MyButton {
  @Prop text: string
  @Prop color: Color

  build() {
    Row({ space: 10 }) {
      Button(this.text)
        .type(ButtonType.Normal)
        .backgroundColor(this.color)
    }
  }
}