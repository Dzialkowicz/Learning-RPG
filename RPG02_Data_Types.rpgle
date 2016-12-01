      *character length 3 (When writing abc on length 3) dsply = ab
     DVariable         S              3a
      *Indicator (Bool)
     DVariable1        S               N
      * 3(127), 5(32767), 10, 20 Only allowed lengths for Integers, decimal always 0
      * All numeric variables are initialized with 0 - better always initialize it
     DVariable2        S              3i 0
      *Packed Normal length and decimal position must be (p not required)
     DVariable3        S              3p 0
      *Date (Date format is described in keyword, different things in())
     DVariable4        S              8D   datfmt(*ymd)
      *Time One length
     DVariable5        S               T   timfmt(*iso)
      *Timestamp yyy-mm-dd-hh.mm.ss.mmmmmm
      *inz - initialize this variable with value (here from system)
      *If on time and timestamp there is no keyword, value is taken from job
     DVariable6        S               Z   inz(*sys)
      *EXERCISE
     DExvar            S               N
      *clear resets variable to default value
      *clear Variable1;
      *reset resets variable to first initialized value
      *reset Variable2;
      /FREE
       dsply Variable2;
       clear Variable2;
       dsply Variable2;
       reset Variable2;
       dsply Variable2;


       eval *inlr = *on;
      /END-FREE
                   