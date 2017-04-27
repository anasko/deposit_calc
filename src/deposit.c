#include "deposit.h"
#include <stdio.h>

int inpData( int *summ, int *time){
int s,t;
printf("Введите сумму вклада=");
scanf("%d",&s);
printf("Введите срок вклада=");
scanf("%d",&t);
*summ=s;

*time=t;
 return t;
 
}

float CheckData(int summ, int time){

printf("Введите сумму вклада!=");
scanf("%d",&summ);
printf("Введите срок вклада=");
scanf("%d",&time);

//printf("!=%d", summ);

   if((time<=365)&&(summ>=1000)){

     if((time<=30)&&(time>=0))
       {
       printf("Cумму вклада=%f", (float)(summ-summ*10/100));
       
       return  (float)(summ-summ*10/100);}

   else if((time<=120)&&(time>=31)){

     printf("Cумму вклада=%f",(float) (summ+summ*2/100));
     
   return  (float)(summ+summ*2/100);}

   else if((time<=240)&&(time>=121)){

     printf("Cумму вклада=%f",(float) (summ+summ*6/100));
     
   return  (float)(summ+summ*6/100);}

   else if((time<=365)&&(time>=241)){

     printf("Cумму вклада=%f", (float)(summ+summ*12/100));
   return  (float)(summ+summ*12/100);}


           }else

            printf("Введите коректно данные\n");
   return -1;

}
