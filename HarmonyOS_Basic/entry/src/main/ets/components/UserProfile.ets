import { UserInfo } from "../model/UserInfo";
import { pasteboard } from '@kit.BasicServicesKit';

@Component
export struct UserProfile {
  @Prop userInfo: UserInfo = {
    id: 1,
    name: '张三',
    age: 18,
    avatar: $r('app.media.avatar_null'),
    active: true,
    info: 'xxxxxxxx'
  }

  aboutToAppear(): void {
    AppStorage.setOrCreate('context', this.getUIContext());
  }

  build() {
    Column() {
      Row({ space: 10 }) {
        Image(this.userInfo.avatar)
          .objectFit(ImageFit.Cover)
          .border({
            radius: '50%'
          })
          .width(50)
          .height(50)
        Column({ space: 5 }) {
          Text(`姓名：${this.userInfo.name}`)
            .fontSize(16)
          Text(`年龄：${this.userInfo.age}`)
            .fontSize(16)
          if (this.userInfo.email) {
            Text(`邮箱：${this.userInfo.email}`)
              .fontSize(16)
          }
        }
        .alignItems(HorizontalAlign.Start)

        Button(this.userInfo.active ? '禁用用户' : '启用用户')
          .backgroundColor(this.userInfo.active ? Color.Red : Color.Green)
          .onClick(() => {
            this.userInfo.active = !this.userInfo.active
          })
      }

      Text(this.userInfo.info)
        .ellipsisMode(EllipsisMode.END)
        .textOverflow({
          overflow: TextOverflow.Ellipsis
        })
        .maxLines(3)
        .width('100%')
        .onClick(() => {
          copyText(this.userInfo.info)
        })
    }
    .padding(10)
    .border({
      width: 1,
      color: Color.Gray,
      radius: 16
    })
  }
}

function copyText(text: string) {
  const uiContext: UIContext | undefined = AppStorage.get('context');
  // Create clipboard content object
  const pasteboardData = pasteboard.createData(pasteboard.MIMETYPE_TEXT_PLAIN, text);
  // Get system clipboard object
  const systemPasteboard = pasteboard.getSystemPasteboard();
  systemPasteboard.setData(pasteboardData); // Put data into clipboard
  systemPasteboard.getData().then((data) => { // Read clipboard content
    if (data) {
      uiContext?.getPromptAction().showToast({ message: '已复制到剪贴板' });
    } else {
      uiContext?.getPromptAction().showToast({ message: '复制失败！' });
    }
  })
}