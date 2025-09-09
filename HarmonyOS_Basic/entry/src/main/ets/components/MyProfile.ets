@Component
export struct MyProfile {
  build() {
    Column({ space: 10 }) {
      Image('http://117.72.93.22:9000/yeluzi-se/ye_space/54c36f38-57c3-45ae-ac06-abd78a1c944d.png')
        .alt($r('app.media.avatar_null'))
        .objectFit(ImageFit.Cover)
        .border({
          radius: '50%'
        })
        .width(100)
        .height(100)
      Text("Yeluzi")
        .fontSize(20)
        .fontColor(Color.Blue)
      Row() {
        Text('点赞：666 ')
          .fontSize(16)
          .fontColor(Color.Gray)
        Text('粉丝：666 ')
          .fontSize(16)
          .fontColor(Color.Gray)
        Text('关注：666 ')
          .fontSize(16)
          .fontColor(Color.Gray)
      }
    }
  }
}