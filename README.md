# 플러터 베이스

플러터 프로젝트를 빠르게 진행하기 위한 기본 베이스 (GetX)

---

## 다트 정보

Dart 3.0.0
DevTools 2.12.2

---

## 플러터 정보

Flutter 3.0.0(channel stable)

---

## 안드로이드 정보

### build.gradle

"android\build.gradle"
```
ext.kotlin_version = '1.6.21'   
classpath 'com.android.tools.build:gradle:7.2.0'
```

### gradle-wrapper.properties

"android\gradle\wrapper\gradle-wrapper.properties"
```
distributionUrl=https\://services.gradle.org/distributions/gradle-7.0.2-all.zip
```

### app\build.gradle

"android\app\build.gradle"
<img src="https://postfiles.pstatic.net/MjAyMjA1MTRfMyAg/MDAxNjUyNTA5NDk4NjU0.fIImQ3l912o0KImUXQp0xQ6CpM2kPV28PK8c3Sxcb5og.nzsvnMoWbqZJcQOzOGI9D_9ubUa4nzh1ya6py6G6rfAg.PNG.phongdaegi/image.png?type=w773" width="100%" height="450px" alt="사용자 비율"></img>
```
minSdkVersion 23
```

---

## 안드로이드 최적화

### build.gradle

릴리즈 모드 옵션 추가
```
release {
    signingConfig signingConfigs.debug
    minifyEnabled true
    debuggable false
}
```

디버그 모드 옵션 추가
```
debug {
    minifyEnabled false
    debuggable true
    aaptOptions.cruncherEnabled = false
}
```

---

## 패키지 이름 변경

VSCODE 기준
CTRL + SHIFT + F5 단축키로
"com.reafela.example" 해당 값을 지정하여 전체 변경

## 환경 설정

최상위 디렉토리에 .env 파일 값 수정

## pubspec.yaml

하단 값 변경
name, description, publish_to
