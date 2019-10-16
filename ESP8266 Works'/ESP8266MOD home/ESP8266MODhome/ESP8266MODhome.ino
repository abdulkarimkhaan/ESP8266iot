#include <ESP8266WiFi.h>

WiFiServer server(80); //Initialize the server on Port 80

void setup() {
//step 1
WiFi.mode(WIFI_AP); //Our ESP8266-12E is an AccessPoint 
WiFi.softAP("Abdul Karim", "12345678"); // Provide the (SSID, password); . 
server.begin(); // Start the HTTP Server

//step2
Serial.begin(115200); //Start communication between the ESP8266-12E and the monitor window
IPAddress HTTPS_ServerIP= WiFi.softAPIP(); // Obtain the IP of the Server 
Serial.print("Server IP is: "); // Print the IP to the monitor window 
Serial.println(HTTPS_ServerIP);


//step5
pinMode(13, OUTPUT); //GPIO16 is an OUTPUT pin;
digitalWrite(13, LOW); //Initial state is ON
pinMode(12, OUTPUT); //GPIO16 is an OUTPUT pin;
digitalWrite(12, LOW); //Initial state is ON
pinMode(14, OUTPUT); //GPIO16 is an OUTPUT pin;
digitalWrite(14, LOW); //Initial state is ON
pinMode(16, OUTPUT); //GPIO16 is an OUTPUT pin;
digitalWrite(16, LOW); //Initial state is ON
}

void loop() { 

//step 3  
WiFiClient client = server.available();
if (!client) { 
return; 
} 
//Looking under the hood 
Serial.println("Somebody has connected :)");

//step4
String request = client.readStringUntil('\r'); 
//Looking under the hood 
Serial.println(request);

//step6
// Handle the Request

if (request.indexOf("/dooron") != -1){ 
digitalWrite(13, HIGH); }
else if (request.indexOf("/dooroff") != -1){ 
digitalWrite(13, LOW); }

if (request.indexOf("/fan0") != -1){ 
digitalWrite(12, HIGH); }
else if (request.indexOf("/fan1") != -1){ 
digitalWrite(12, LOW); 
}

if (request.indexOf("/ac0") != -1){ 
digitalWrite(14, HIGH); }
else if (request.indexOf("/ac1") != -1){ 
digitalWrite(14, LOW); 
}


if (request.indexOf("/lighton") != -1){ 
digitalWrite(16, HIGH); }
else if (request.indexOf("/lightoff") != -1){ 
digitalWrite(16, LOW); 
}
//step7
//http://192.168.4.1/ON
}


