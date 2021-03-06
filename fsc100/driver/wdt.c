#include <s5pc100.h>

void wdt_init(int sec)
{
	//初始化看门狗
	WDT.WTCON = (1 << 0) | (3 << 3) | (199 << 8);
	WDT.WTCNT = 2578 * sec;
	WDT.WTDAT = 2578 * sec;

	//使能开门狗
	WDT.WTCON |= (1 << 5);
	return;
}

#if 0
if(读值 == 1)
{
	//喂狗
	WTCNT=100;
}
#endif


void data_abort_handler()
{
	wdt_init(3);
	test_beep();
    while(1);
	return ;
}

void test_wdt()
{
	int *p = (int *)0;

	//出现数据终止异常
	//执行异常处理函数，在异常处理函数中打开蜂鸣器 3秒，开发板复位
	*p = 100;

	return ;
}
