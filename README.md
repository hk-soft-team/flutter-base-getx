# 플러터 베이스

플러터 프로젝트를 빠르게 진행하기 위한 기본 베이스 (GetX)

## 다트 정보

Dart 2.17.0
DevTools 2.12.2

## 플러터 정보

Flutter 3.0.0(channel stable)

## 안드로이드 정보

### build.gradle

File Path : "android\build.gradle"
Kotlin Version : ext.kotlin_version = '1.6.10'
Gradle Version : classpath 'com.android.tools.build:gradle:7.0.2'

### gradle-wrapper.properties

File Path : "android\gradle\wrapper\gradle-wrapper.properties"
Gradle Version : distributionUrl=https\://services.gradle.org/distributions/gradle-7.0.2-all.zip

### android\app\build.gradle

Min SDK Version : minSdkVersion 21
※ 최소 SDK 버전 하단 기본값 주석처리되어있음

## 안드로이드 최적화

### build.gradle

릴리즈 모드 옵션 추가
minifyEnabled true
debuggable false

디버그 모드 옵션 추가

    debug {
        minifyEnabled false
        debuggable true
        aaptOptions.cruncherEnabled = false
    }

## 패키지 이름 변경

VSCODE 기준
CTRL + SHIFT + F5 단축키로
"com.reafela.example" 해당 값을 지정하여 전체 변경

## 환경 설정

최상위 디렉토리에 .env 파일 값 수정

## pubspec.yaml

하단 값 변경
name, description, publish_to
