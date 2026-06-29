import EnvironmentViewModel from "../viewmodel/EnvironmentViewModel";

@Component
export struct AIComponent {
  @Prop
  item: EnvironmentViewModel;
  @State
  resultString: string = '还未对当前环境进行评估'
  @State
  isBusy: boolean = false;

  build() {
    Column() {
      Row() {



        if (this.isBusy) {
          Row() {
            LoadingProgress()
              .width(40)
              .height(40)
              .color(Color.Green)
            Text('AI 评估中。。。')
              .fontColor(Color.Green)
          }
        }


      Button('AI 评估')
        .fontSize(16)
        .fontWeight(600)
        .height(34)
        .backgroundColor(Color.Green)
        .enabled(!this.isBusy)
        .onClick(() => {
          this.isBusy = true
        })
    }.width('100%')
    .justifyContent(FlexAlign.SpaceBetween)

    Scroll() {
      Text(this.resultString)
        .lineHeight(30)
        .fontSize(16)
        .width('100%')
    }
    .height('82%')
    .margin({ top: 10 })
    .padding(5)
    //.borderColor($r('app.color.green_128'))
    .borderWidth(1)
    .borderRadius(10)

    Blank()
  }
  .alignItems(HorizontalAlign.End)
  .padding(10)
  .width('94%')
  .height('36%')
  .borderRadius(10)
  .backgroundColor(Color.White)
  .margin({ left: 10, right: 10 })
}
}