# Holly-Moley

멀티스레드를 사용하여 만든 게임 어플입니다.


## GCD (Grand Central Dispatch API)

- iOS의 공유된 Thread Pool을 관리하는 API
- Dispatch queue들의 thread 실행을 결정
- DispatchQueue 명령어를 통해 동기, 비동기 등을 설정하여 GCD에 작업을 추가해주면, GCD가 시스템 안에서 작업에 맞게 스레드에 작업을 분배해줍니다 

<br>
<br>
<br>

## 게임 설명

### 시작 화면
<img width="393" height="640" alt="image" src="https://user-images.githubusercontent.com/104834390/211485604-b7cabda2-21b1-4e95-a556-a0fc87ab022f.png">

<br>

### 게임 설명
<img width="395" height="640" alt="image" src="https://user-images.githubusercontent.com/104834390/211485718-30e1d051-2012-40a0-b463-0a14f0a9dcf2.png">

<br>

### 게임 화면
<img width="394" height="640" alt="image" src="https://user-images.githubusercontent.com/104834390/211485906-54503934-0463-44bf-8cd1-a43c69909786.png">

<br>

### 게임 종료
<img width="386" height="640" alt="image" src="https://user-images.githubusercontent.com/104834390/211486086-a2653889-b1fc-42e0-ad5a-ecec885e5652.png" >

<br>
<br>

## 사용한 로직

- 9개의 그림 셋을 각각의 스레드에서 비동기적으로 실행하도록 구성하였습니다.
- Image View에 TapGesture를 활성화하여 터치를 했을 때 반응을 할 수 있도록 구성하였습니다.
- 두더지나 토끼를 tap하였을 떄 image를 변경함으로 클릭이 된 것의 효과를 주었습니다.
- 폭탄 두더지를 tap했을 때는 진동이 울리도록 하였습니다.
- Score가 1000이상이 되었을 떄, 쉼표가 찍히도록 하였습니다.
- 시간이 종료되면 모든 스레드를 종료하도록 만들었습니다.

