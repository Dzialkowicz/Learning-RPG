000100161201     Dsome_date        S              8p 0
000101161201     Dother_date       S               D   datfmt(*usa)
000102161201     Ddiff_date        S               T   timfmt(*eur)
000103161201     Dstrn             S             10A   inz('2012/02/02')
000104161201      *add 23 days to existing date old way
000105161201     C                   ADDDUR    23:*D         duedate
000106161201      *Detarmine number of days between loandate and duedate.
000107161201     C     loandate      SUBDUR    duedate       NUM_SECS:*D
000108161201      **Detarmine number of seconds between loandate and duedate.
000109161201     C     loandate      SUBDUR    duedate       NUM_SECS:*S
000110161201      *Extracting date info (better in free)
000111161201     C                   EXTRCT    logondate:*m  LOGMONTH          2 0
000112161201      *operation move, movel is used mostly to easly convert variables
000113161201      *move: from one variable to one
000114161201      *movel: the same, but adjust text to left
000115161201      /free
000116161201       //all dates are the dates when job started
000117161201       //add 23 to duedate
000118161201       newdate = duedate + %Days(23);
000119161201
000120161201       //Determine the number of days between the 2 dates
000121161201       num_days = %diff (loandate: duedate: *days);
000122161201
000123161201       //Add number of minutes between start and the end
000124161201       time = time + %diff (start: end: *minutes);
000125161201
000126161201       //Extracting specific date and time info
000127161201       date = d'1999-02-17';
000128161201       time = t'01.23.45';
000129161201       numy = %subdt(date:*years);
000130161201       //numy = 1999
000131161201       numm = %subdt(time:*mn);
000132161201       //numm = 23
000133161201
000134161201       string = %date(strn: *YMD);
000135161201
000136161201       //returns current date not dependent on job
000137161201       date = %date();
000138161201       time = %time();
000139161201       tmst = %timestamp();
000140161201
000141161201       eval *inlr = *on;
000142161201      /end-free
