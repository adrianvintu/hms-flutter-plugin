/*
    Copyright 2020. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License")
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

class ARPose {
  static const List<double> IDENTITY_TRANSLATION = <double>[0, 0, 0];
  static const List<double> IDENTITY_ROTATION = <double>[0, 0, 0, 1];

  static const ARPose IDENTITY =
      ARPose(translation: IDENTITY_TRANSLATION, rotation: IDENTITY_ROTATION);

  final List<double> translation;
  final List<double> rotation;

  const ARPose({this.translation, this.rotation});

  factory ARPose.fromMap(Map<String, dynamic> jsonMap) {
    if (jsonMap == null) return null;
    return ARPose(
      translation: jsonMap['translation'] != null
          ? List<double>.from(jsonMap['translation'].map((x) => x.toDouble()))
          : null,
      rotation: jsonMap['rotation'] != null
          ? List<double>.from(jsonMap['rotation'].map((x) => x.toDouble()))
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "translation": translation,
      "rotation": rotation,
    };
  }

  @override
  String toString() {
    return toMap().toString();
  }
}