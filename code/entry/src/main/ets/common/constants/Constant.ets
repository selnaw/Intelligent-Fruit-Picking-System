//环境安全级别
export const StatusArray: string[] = ["安全", "警告", "危险", "未知"];
//服务器IP
const HOST_IP = '192.168.52.1'

//MQTT服务端地址
//export const MQTT_URL = `${HOST_IP}:1883`
// 正确格式（带协议头）
export const MQTT_URL = 'tcp://192.168.52.1:1883';