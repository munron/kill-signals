## Send All Kill SIGNALS 
killコマンドで指定できるSIGNALオプションを全部試す

#### loop 

```
int main(){
  while(1){}
}
```

#### build 

`gcc -o loop loop.c` 

#### run

`sh kill_all_sig_pattern.sh > dying_messages.txt 2>&1`
