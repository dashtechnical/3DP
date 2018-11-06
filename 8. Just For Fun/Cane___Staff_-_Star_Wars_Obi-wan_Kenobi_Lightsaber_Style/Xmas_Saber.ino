#include "FastLED.h"
// make sure fastled is in your libraries.

/* Ports and Pins
 Direct port access is much faster than digitalWrite.
 Pin      Ardnino Port Pin    Leonardo
 13 (SCK)       PORTB   5      PORTC  7
 12 (MISO)      PORTB   4      PORTD  6
 11 (MOSI)      PORTB   3      PORTB  7
 10 (SS)        PORTB   2      PORTB  6
 9              PORTB   1      PORTB  5
 8              PORTB   0      PORTB  4
 7              PORTD   7      PORTE  6
 6              PORTD   6      PORTD  7
 5              PORTD   5      PORTC  6
 4              PORTD   4      PORTD  4
 3              PORTD   3      PORTD  0
 2              PORTD   2      PORTD  1
 1 (TX)         PORTD   1      PORTD  3
 0 (RX)         PORTD   0      PORTD  2
 A5 (Analog)    PORTC   5      PORTF  0
 A4 (Analog)    PORTC   4      PORTF  1
 A3 (Analog)    PORTC   3      PORTF  4
 A2 (Analog)    PORTC   2      PORTF  5
 A1 (Analog)    PORTC   1      PORTF  6
 A0 (Analog)    PORTC   0      PORTF  7
 */

// NEOPIXELES
// Number of RGB LEDs in Lightsaber
#define NUM_NEOPIXELS 4

// Define the array of leds
CRGB leds[NUM_NEOPIXELS]; 
// Arduino pin used for Data
// CHANGE THIS TO THE PIN # FOR WHATEVER YOU ARE PLUGGING IT IN TO
#define NEOPIXELPIN 6

// Switch
#define buttonpin 4
#define BUTTONPORT PORTD
#define BUTTONPIN (1<<4)

// Set pins to outputs and initial states
void setup() {
  FastLED.addLeds<NEOPIXEL, NEOPIXELPIN>(leds, NUM_NEOPIXELS);  
//  pinMode(buttonpin, INPUT_PULLUP);
  
  for (int i = 0; i < 3;i++)
  {
    initPattern();
  } 
}

// We're changing colors every little bit just because we can, you
// could get rid of this bit and just pick one set of colors below.
int colorChoice = 0;
int colorCycle = 4;

void loop() {
  colorCycle++;
  if (colorCycle > 100)
  {
    colorChoice++;
    colorCycle = 0;
    if (colorChoice > 5)
    {
      colorChoice = 0;
    }
  }

  for (byte q = 0; q < 19; q++)
  {
    // Want flicker effect.
    byte j = random(100,255);
    
    // If statements are just because we want to change colors, you could just
    // hard code your r, g & b to whatever.
    // Also this flickers, so you could just set them and be done at the 
    // end of setup if you just want a single solid color.
    // 0 & 3 are red
    // 1 & 4 are green
    // 2 is blue
    // 5 is cyan (I couldn't pick shades of blue)
    if (colorChoice == 0 || colorChoice == 3)
      leds[0].r = leds[1].r = leds[2].r = leds[3].r = j;
    else
      leds[0].r = leds[1].r = leds[2].r = leds[3].r = 0;
    if (colorChoice == 1 || colorChoice == 4 || colorChoice == 5)
      leds[0].g = leds[1].g = leds[2].g = leds[3].g = j;
    else
      leds[0].g = leds[1].g = leds[2].g = leds[3].g = 0;
    if (colorChoice == 2 || colorChoice == 5)
      leds[0].b = leds[1].b = leds[2].b = leds[3].b = j;
    else
      leds[0].b = leds[1].b = leds[2].b = leds[3].b = 0;

    FastLED.show();
    // Doing this 19x + show is hopefully ~200ms
    delay(random(5,15));
  }
}

void initPattern()
{
  leds[0].r = leds[1].r = leds[2].r = leds[3].r = 255;
  leds[0].g = leds[1].g = leds[2].g = leds[3].g = 255;
  leds[0].b = leds[1].b = leds[2].b = leds[3].b = 255;
  FastLED.show();  
  delay(200);
  leds[0].r = leds[1].r = leds[2].r = leds[3].r = 255;
  leds[0].g = leds[1].g = leds[2].g = leds[3].g = 0;
  leds[0].b = leds[1].b = leds[2].b = leds[3].b = 0;
  FastLED.show();  
  delay(200);
  leds[0].r = leds[1].r = leds[2].r = leds[3].r = 0;
  leds[0].g = leds[1].g = leds[2].g = leds[3].g = 255;
  leds[0].b = leds[1].b = leds[2].b = leds[3].b = 0;
  FastLED.show();  
  delay(200);
  leds[0].r = leds[1].r = leds[2].r = leds[3].r = 0;
  leds[0].g = leds[1].g = leds[2].g = leds[3].g = 0;
  leds[0].b = leds[1].b = leds[2].b = leds[3].b = 255;
  FastLED.show();    
  delay(200);
  
  // All off for an instant
  leds[0].r = leds[1].r = leds[2].r = leds[3].r = 0;
  leds[0].g = leds[1].g = leds[2].g = leds[3].g = 0;
  leds[0].b = leds[1].b = leds[2].b = leds[3].b = 0;
  FastLED.show();    
}

