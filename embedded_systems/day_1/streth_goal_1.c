#include<stdio.h>
int main(){
    int counter=0,button=0;
    printf("Button is off\n");
    for(counter=0;counter<5;counter++){
        if(counter==2){
            button=1;
            printf("Button Pressed\n");
        }
        if(button==1){
            printf("LED ON (Counter: %d)\n", counter);
            printf("LED OFF (Counter: %d)\n", counter);
        }
        else{
            printf("LED OFF (Counter: %d)\n", counter);

        }
    }
    return 0;
    
}