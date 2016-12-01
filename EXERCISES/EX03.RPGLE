000100161201     DdateA            s               d   inz(*sys)
000200161201     dtimeA            s               t   inz(*sys)
000300161201     dtstA             s               z   inz(*sys)
000400161201     DdateB            s               d
000500161201     dtimeB            s               t
000600161201     dtstB             s               z
000700161201     dtmp              s              8a
000800161201     dtmp2             s             10a
000900161201     dtmp3             s              5i 0
001000161201     dtmp4             s             10  0 inz(21600101)
001100161201     c                   move      dateA         tmp2
001200161201
001300161201      /free
001400161201        dateB= dateA + %MONTHS(1) + %DAYS(23);
001500161201        tstB= tstA + %MONTHS(1) + %DAYS(23) + %HOURS(1) + %MINUTES(23);
001600161201        timeB= timeA + %HOURS(1) + %MINUTES(23);
001700161201        dsply (%date(tmp4));
001800161201        tmp = '02:00 pm';
001900161201        tmp2 = '01.12.2016';
002000161201        tmp3 =  12345;
002100161201        tmp4 = 0123456789;
002200161201        dsply (%date(tmp2: *EUR));
002300161201        dsply tmp2;
002400161201        //dsply dateA;
002500161201        //dsply timeA;
002600161201        //dsply tstA;
002700161201        //dsply (%diff(dateB:dateA:*DAYS));
002800161201        //dsply (%diff(tstB:tstA:*HOURS));
002900161201        //dsply (%diff(timeB:timeA:*MINUTES));
003000161201
003100161128          *inlr=*on;
003200161128      /end-free
