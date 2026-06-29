import { MqttAsync, MqttClient, MqttMessage } from '@ohos/mqtt';
import { MQTT_URL } from '../constants/Constant';

export default class MQTTUtil {
  private mqttAsyncClient: MqttClient | null = null;

  async connect(callback: (err: Error, data: MqttMessage) => void) {

    //1、实例化 MqttClient
    this.mqttAsyncClient = MqttAsync.createMqtt({
      url: MQTT_URL,
      clientId: 'harmonyos_gyz',
      persistenceType: 1,
    });

    //2、连接
    let isConnect = await this.mqttAsyncClient.connect(
      {
        userName: "userName",
        password: "password",
        connectTimeout: 300
      }
    );
    if (!isConnect) {
      return;
    }

    //3、设置回调
    this.mqttAsyncClient.messageArrived(callback)

    //4、订阅主题 ems
    this.mqttAsyncClient.subscribe({
      topic: 'ems',
      qos: 2
    })
  }
}