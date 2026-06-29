import { AIComponent } from '../view/AIComponent';
import { EnvComponent } from '../view/EnvComponent';
import { SwiperComponent } from '../view/SwiperComponent';
import EnvironmentViewModel from '../viewmodel/EnvironmentViewModel';
import { MqttMessage } from '@ohos/mqtt';
import MQTTUtil from '../common/utils/MQTTUtil';

@Entry
@Component
struct Index {
  @State item: EnvironmentViewModel = new EnvironmentViewModel();
  aboutToAppear(): void {
    new MQTTUtil().connect(
      (err: Error, data: MqttMessage) => {
        //如果没有出错就处理数据
        if (!err) {
          //解析接收到的数据为 EnvironmentViewModel 对象
          this.item = JSON.parse(String(data.payload)) as EnvironmentViewModel;

          //如果实例不为空就更新状态变量
          if (!this.item) {
            this.item = new EnvironmentViewModel()
          }
        }
      }
    )
  }

  build() {
    Column({ space: 10 }) {
      Text("环境监测")
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .backgroundColor(Color.Green)
        .fontColor(Color.White)
        .width('100%')
        .height(50)
        .textAlign(TextAlign.Center)

      EnvComponent({ item: this.item })
      SwiperComponent({ item: this.item });
      AIComponent({ item: this.item });
    }
    .height('100%')
    .width('100%')
    .padding({ bottom: 20 })
    .backgroundColor('#eeeeee')
  }
}