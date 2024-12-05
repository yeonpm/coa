import processing.net.*;

Client client;
float myX = 200, myY = 300;     // 클라이언트의 원 위치
float serverX = 400, serverY = 300; // 서버의 원 위치

void setup() {
  size(800, 600);
  client = new Client(this, "127.0.0.1", 12345);
  println("클라이언트가 서버에 연결되었습니다.");
}

void draw() {
  background(255);
  
  // 클라이언트의 원 그리기 (빨간색)
  fill(255, 0, 0);
  ellipse(myX, myY, 50, 50);
  
  // 서버의 원 그리기 (녹색)
  fill(0, 255, 0);
  ellipse(serverX, serverY, 50, 50);
  
  // 마우스로 클라이언트의 원 이동
  if (mousePressed) {
    myX = mouseX;
    myY = mouseY;
    // 서버에 클라이언트의 위치 전송
    String message = "CLIENT," + myX + "," + myY;
    client.write(message);
  }
  
  // 서버로부터 데이터 받기
  if (client.available() > 0) {
    String data = client.readString();
    if (data != null) {
      parseData(data);
    }
  }
}

void parseData(String data) {
    String[] parts = data.split(",");
    if (parts.length >= 3 && parts[0].equals("SERVER")) {
        float x = float(parts[1]);
        float y = float(parts[2]);
        
        // 서버의 위치 업데이트
        serverX = x;
        serverY = y;
    }
}