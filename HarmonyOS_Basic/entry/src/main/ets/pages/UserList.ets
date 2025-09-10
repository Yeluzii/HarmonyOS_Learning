import { UserInfo } from "../model/UserInfo";
import { UserProfile } from "../components/UserProfile";

@Entry
@Component
export struct UserList {
  // @State userInfo: UserInfo = {
  //   id: 1,
  //   name: '张三',
  //   age: 18,
  //   avatar: $r('app.media.avatar_null'),
  //   active: true,
  // }

  @State users: UserInfo[] = [
    {
      id: 1,
      name: '张三',
      age: 18,
      avatar: $r('app.media.avatar_null'),
      email: 'zhangsan@123.com',
      active: true,
      info: '我是张三。。。。。。。'
    },
    {
      id: 2,
      name: '李四',
      age: 22,
      avatar: $r('app.media.avatar_null'),
      active: false,
      info: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
    },
    {
      id: 3,
      name: '王五',
      age: 20,
      avatar: $r('app.media.avatar_null'),
      active: true,
      info: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
    },
  ]

  build() {
    Column() {
      TextInput({ placeholder: '请输入...' })
      List({ space: 10 }) {
        ForEach(this.users, (userInfo: UserInfo) => {
          ListItem() {
            UserProfile({
              userInfo: userInfo
            })
          }
        })
      }
      .width('95%')
    }
    .width('100%')
    .height('100%')
  }
}