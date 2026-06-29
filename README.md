# YunMou Fruit Explorer - Intelligent Fruit Picking System
## Table of Contents
- [Project Overview](#project-overview)
- [Important Repository Statement](#important-repository-statement)
- [Core Innovation Highlights](#core-innovation-highlights)
- [System Architecture](#system-architecture)
- [Code Scope Description](#code-scope-description)
  - [Public Open Source Code](#public-open-source-code)
  - [Patent-Protected Closed Source Modules](#patent-protected-closed-source-modules)
- [Hardware Bill of Materials](#hardware-bill-of-materials)
- [Quick Deployment Guide for Hi3861 Code](#quick-deployment-guide-for-hi3861-code)
- [Cloud Platform Data Metrics](#cloud-platform-data-metrics)
- [Demo Function Description](#demo-function-description)
- [License & Disclaimer](#license--disclaimer)
- [Contact](#contact)

## Project Overview
YunMou Fruit Explorer is an automated intelligent fruit picking solution integrated with vision-olfaction dual-modal recognition, embedded control and IoT cloud platform.

Traditional fruit picking faces prominent pain points: high manual labor costs, inaccurate ripeness judgment relying solely on visual images, and lack of digital data support for orchard remote management. This project innovatively introduces odor sensing olfactory model to compensate defects of single computer vision. Equipped with automatic mechanical picking actuator and connected to Huawei IoT Cloud via MQTT protocol, the system realizes visualized remote monitoring of all picking data, promoting digital and intelligent transformation of traditional orchards.

## Important Repository Statement
Since the core algorithms and complete machine control logic are under patent application, full project source code cannot be released.
This repository only releases partial demo code running on Hi3861 chip, which is limited to basic peripheral interaction, sensor data collection and Huawei Cloud MQTT transmission. All open code is for embedded IoT learning and technical communication only.

## Core Innovation Highlights
1. Dual-modal ripeness identification combining vision and olfactory sensor
Single visual recognition is easily disturbed by light, leaf occlusion and fruit surface color difference. The system adopts odor sensor array to capture volatile gas features of fruits, calibrate ripeness level and greatly improve recognition accuracy.
2. Lightweight AI model deployment on embedded terminal
The lightweight vision model identifies fruit types on-site, automatically matches corresponding olfactory threshold parameters, and links mechanical grippers to implement adaptive grabbing.
3. MQTT IoT cloud remote management
Based on standard MQTT protocol to connect Huawei IoT DA platform. The device uploads real-time orchard operation data, including picking quantity, fruit category, ripeness level and equipment working duration. Managers can view all indicators remotely via cloud console.
4. Integrated automatic mechanical picking structure
After confirming ripe fruits, the servo-controlled flexible mechanical gripper clamps and separates fruits automatically, and fruits fall into collecting bags to complete unmanned picking operation.

## System Architecture
1. Perception Layer
- Camera module: fruit positioning and category identification
- Multi-channel odor sensor array: olfactory feature collection for ripeness auxiliary judgment
- Hi3861 main controller: raw sensor data collection and preprocessing, MQTT data encapsulation
2. Execution Control Layer
- Servo drive & flexible picking gripper: automatic fruit clamping and separation
- Mobile and obstacle avoidance unit: whole machine movement control (source code not open)
3. Network Transmission Layer
Hi3861 built-in WiFi module, MQTT protocol for wireless data transmission to Huawei Cloud
4. Cloud Platform Layer (Huawei IoT DA)
Visual dashboard displaying device online status, cumulative picking volume, working hours, real-time ripeness data and fruit types

## Code Scope Description
### Public Open Source Code
All files in this repository are Hi3861-based demo code, including:
1. Driver programs for odor sensor and picking counting module
2. Complete MQTT client implementation for Huawei IoT DA connection
3. Data packaging and uploading logic of defined IoT model attributes
4. Serial port log printing and hardware debugging auxiliary tools

### Patent-Protected Closed Source Modules
The following core modules are confidential for patent application and will not be open sourced temporarily:
1. Lightweight image recognition inference algorithm code
2. Vision-olfaction fusion ripeness evaluation algorithm
3. Servo motor linkage and automatic gripper picking motion control logic
4. Overall task scheduling program of the complete picking equipment

## Hardware Bill of Materials
- Main Controller: Hi3861 WiFi IoT Development Board
- Sensing Unit: Multi-channel odor gas sensor array, picking counter sensor
- Communication: Onboard WiFi, MQTT network protocol
- Cloud Service: Huawei IoT DA Instance
- Actuator: Flexible picking mechanical gripper + servo motors (control logic closed source)

## Quick Deployment Guide for Hi3861 Code
### Environment Dependencies
1. Complete Hi3861 SDK & HarmonyOS development environment
2. Registered Huawei IoT product instance with valid MQTT connection credentials
3. Matched sensor hardware and correct wiring

### Operation Steps
1. Clone this repository to local development workspace
2. Fill Huawei IoT MQTT tripartite parameters (device ID, access key, platform address) in configuration file
3. Modify sensor GPIO pin definitions according to actual hardware wiring
4. Compile the project and flash firmware to Hi3861 development board
5. Power on the device; it will automatically connect WiFi and upload data to cloud
6. Log in Huawei IoT console to check real-time uploaded picking data

## Cloud Platform Data Metrics
The device uploads the following物 model attributes to Huawei Cloud through MQTT continuously:
- `Maturity`: Fruit ripeness grade
- `Number`: Total picked fruit count
- `Type`: Identified fruit category
- `Time`: Cumulative working duration of equipment

Cloud platform supports real-time data viewing and historical data export to realize digital orchard management.

## Demo Function Description
The complete prototype machine can finish full automatic workflow: fruit visual positioning → olfactory ripeness verification → mechanical gripper picking → picking data cloud upload. The open Hi3861 code realizes the data collection and cloud uploading part of the whole workflow.

## License & Disclaimer
1. All open Hi3861 demo code is only allowed for personal learning and non-commercial technical exchange.
2. The overall system scheme, dual-modal recognition algorithm and mechanical control logic are patent pending. Commercial reproduction, modification and production without written authorization from the project team are strictly prohibited.
3. Any risk caused by commercial use of open demo code shall be borne by the user.

## Contact
If you have technical communication demands or industry-university-research cooperation intentions, please submit an Issue to contact the project author.
