# 기말 첫번째 팀 과제

## 과제 결과물

<img src="../../images/241101.gif" alt="241101" width="300" />

## 과제 내용

1. hw9function2class 동영상을 보고 다음 과정을 수행하라.

2. 각 팀원의 캐릭터가 들어간 하나의 동영상을 만들어라.

### 요구사항

- 캐릭터는 중간고사 이전에 만들어진 것 또는 새로운 것 사용 가능
  (복잡하다고 점수 더 주지 않으니 되도록 간단한 캐릭터로 할 것)

- 각 캐릭터별로 class를 하나 만들고, 다음 함수 포함 필수:

  1. 캐릭터를 보여주는 함수
  2. 매 draw마다 변하는 함수 (이동, 색깔 변화, 크기 변화 중 택1)

- 각 class에 대한 object를 하나씩 만들어서 실행

## 제출물

팀당 PPT 보고서

1. 계획
2. 소스 (깃허브 링크 가능)
3. 동영상
4. 느낀 소감
5. Extra 구현 사항 (개인 작업시 이름 명시)

## 예시 코드

```processing
    // 아래는 하나의 class에 하나의 object만 있을 때 예이다.
    smile ss;   // ss는 class smile의 object
    void setup(){
        size(800,600);
        ss = new smile(3,4);  // constructor를 호출함
    }
    void draw(){
        background(0,255,255);
        ss.update();
        ss.show();
    }
    class smile {
        smile(float a, float b){
            vx = a; vy = b; d = 100;
            x = random(width);
            y = random(height);
        }
        float x,y,vx,vy,d;
        void update() { // change at every draw()
            x += vx; y += vy;
            if(x<0 || x>width) vx = -vx;
            if(y<0 || y>height) vy = -vy;
        }
        void show() {  // display the character
            fill(255);
            circle(x,y,d);
            circle(x-0.2*d,y-0.2*d,0.3*d);
            circle(x+0.2*d,y-0.2*d,0.3*d);
        }
    }
```
