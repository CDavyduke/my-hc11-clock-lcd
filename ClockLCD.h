/*  Filename:       ClockLCD.h
    Author:         Corey Davyduke
    Created:        2012-01-09
    Modified:       2012-01-09
    Description:    This is the header file for the LCD clock project.
*/

#ifndef _CLOCKLCD_H
#define _CLOCKLCD_H

#include <sys/param.h>
#include <sys/interrupts.h>
#include <sys/sio.h>
#include <sys/locks.h>
#include <stdarg.h>

extern void timer_interrupt (void) __attribute__((interrupt));

inline static void
print (const char* msg)
{
  serial_print (msg);
}


#endif
