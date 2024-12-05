import processing.net.*;

Server server;
Client client;
float clientX = 200, clientY = 300; // 클라이언트의 원 위치
float serverX = 400, serverY = 300; // 서버의 원 위치
final int PORT = 12345;

void setup() {
  size(800, 600);
  server = new Server(this, PORT);
  println("서버가 포트 " + PORT + "에서 실행 중입니다.");
}

void draw() {
  background(255);
  
  // 파라이언트 연결 확인
  client = server.available();
  if (client != null) {
    println("클라이언트가 연결되었습니다: " + client);
  }

  // 클라이언트의 원 그리기
  fill(255, 0, 0); // 빨간색
  ellipse(clientX, clientY, 50, 50);

  // 서버의 원 그리기
  fill(0, 255, 0); // 녹색
  ellipse(serverX, serverY, 50, 50);

  // 마우스로 서버의 원 이동
  if (mousePressed) {
    serverX = mouseX;
    serverY = mouseY;
    // 클라이언트에 서버의 위치 전송
    String message = "SERVER," + serverX + "," + serverY;
    server.write(message);
  }

  // 클라이언트로부터 데이터 받기
  if (client != null && client.available() > 0) {
    String data = client.readString();
    if (data != null) {
      parseData(data);
    }
  }
}

void parseData(String data) {
    String[] parts = data.split(",");
    if (parts.length >= 3) {
        int x = int(parts[1]);
        int y = int(parts[2]);
        
        // 클라이언트의 위치 업데이트
        clientX = x;
        clientY = y;
    }
}
