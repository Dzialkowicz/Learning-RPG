000100161115     FPF01      IF   E             DISK
000101161115      /Free
000102161115        //Free version of declaring file
000103161115        //dcl-f PF01 DISK;
000104161115      /End-free
000105161115     DVariable         S              3  0
000106161115
000107161115      *X = 10 - 2 * 3
000108161115      /Free
000109161115       dcl-s Ser packed(3);
000110161115      /end-free
000111161115     C                   EVAL      Variable = 10 - 2 * 3
000112161115      *dsply Variable
000113161115     C     Variable      DSPLY
000114161115      /Free
000115161115      // free version
000116161115      // dcl-s Ser packed(3);
000117161115       eval Ser = 100 - 2 *3;
000118161115       dsply Ser;
000119161115
000120161115       eval *inlr = *on;
000121161115      /end-free
