#define GPG3CON 0xE03001C0
#define GPG3DAT 0xE03001C4
//LED: GPG3CON : 0xE03001C0
//0001 = Output
//GPG3DAT, R/W, Address = 0xE030_01C4
int led_init(int i)
{
	int *p = (int *)GPG3CON;

	//��Ϊ���ģʽ
	*p = *p & ~(0xf << i * 4);
	*p = *p | (0x1 << i * 4);

	return 0;
}

int led_on(int i)
{
	int *p = (int *)GPG3DAT;

	*p = *p | (0x1 << i);

	return 0;
}

int led_off(int i)
{
	int *p = (int *)GPG3DAT;

	*p = *p & ~(0x1 << i);

	return 0;
}

void delay(int time)
{
	int i,j;

	for (i = 0; i < time * 100; i++)
	{
		for (j = 0; j < time * 2000; j++)
		{
		}
	}
	return;
}

int main()
{
	int i = 0;


	while (1)
	{


		for (i = 0; i < 4; i++){
			led_init(i);
			led_on(i);

			delay(1);

			led_off(i);

		}
	}
	return 0;
}