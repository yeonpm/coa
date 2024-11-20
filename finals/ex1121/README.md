# HW12 inheritance

## 1. inheritance

Ninja와 Bear는 Character를 상속받았다.

```processing
class Ninja extends Character {
...
}

class Bear extends Character {
...
}
```

## 2. class-in-class

Accessory 클래스는 Ninja, Bear 클래스 내부에 포함되어 있다.

```processing
class Ninja extends Character {
  Ninja(float x, float y, float size) {
    super(x, y, size);
    accessory = new Accessory("ninja", color(0, 0, 255));
  }
  ...
}
```
