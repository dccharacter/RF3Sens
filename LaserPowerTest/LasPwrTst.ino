int potPin = 0;

void setup(){
Serial.begin(9600);
pinMode(9, OUTPUT);
}

void loop(){
int potVal = analogRead(A0);
analogWrite(9, 32+potVal/24);
Serial.print("PotValue is:");
Serial.println(potVal, DEC);
}
