#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include "scia.h"
#include "wdog.h"
#include "sm.h"

uint32_t uptime    = 0;

uint32_t readUptime(void)
{
   return uptime;
}
uint32_t readUptimeDSecs(void)
{
   return uptime%10;
}
uint32_t readUptimeSecs(void)
{
   return (uptime/10)%60;
}
uint32_t readUptimeMins(void)
{
   return ((uptime/10)/(60))%60;
}
uint32_t readUptimeHours(void)
{
   return ((uptime/10)/(3660))%24;
}
uint32_t readUptimeDays(void)
{
   return ((uptime/10)/3660)/24;
}

uint16_t Cmd_Uptime(int argc, char *argv[])
{
   sciPrintf("%d days %02d:%02d:%02d.%1d \r\n",
                  readUptimeDays  ( ),
                  readUptimeHours ( ),
                  readUptimeMins  ( ),
                  readUptimeSecs  ( ),
                  readUptimeDSecs ( )
                  );
   return 0;
}

void wdogHandler ( void )
{
}

void wdogTask(void)
{
      uptime++;
}
void initWdog(void)
{
}


