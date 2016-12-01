000100161128     d test            s              1    inz('a')
000200161128     d inna            s              3i 0 inz(2)
000300161128     d znak1           s              2a   inz('aa')
000400161128     d decim           s              3p 0 inz(20)
000500161128      /free
000600161128                dsply znak1;
000700161128                dsply decim;
000800161128                dsply inna ;
000900161128                dsply test ;
001000161128                clear znak1;
001100161128                clear decim;
001200161128                clear inna;
001300161128                clear test;
001400161128                dsply znak1;
001500161128                dsply decim;
001600161128                dsply inna ;
001700161128                dsply test ;
001800161128                reset znak1;
001900161128                reset decim;
002000161128                reset inna;
002100161128                reset test;
002200161128                dsply znak1;
002300161128                dsply decim;
002400161128                dsply inna ;
002500161128                dsply test ;
002600161128
002700161128                *inlr = *on;
002800161128      /end-free
