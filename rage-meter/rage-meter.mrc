;USAGE /ragemeter [width] [level] [who] [message]
;Ported to mIRC Sripting by Weasel
;Based on fALSO aka Pedro Oliveira perl script aka fALSOVSKY @ GITHUB
;This script may never fail
;ALL GLORY TO THE HYPNOTOAD
alias ragemeter {

var %msg = rage-meter for $$3: [


var %i = 0

while (%i < $$1) {

        if (%i == 0) {
            %msg = %msg $+ 3
        }
 
        if (%i == $calc($$1 / 4)) {
            %msg = %msg $+ 8
        }
 
        if (%i == $int($calc($calc($$1 / 4)*2))) {
            %msg = %msg $+ 7
        }
 
        if (%i == $int($calc($calc($$1 / 4)*3))) {
            %msg = %msg $+ 4
        }
 
        if ( $int($calc((%i / $$1) * 100)) >= $$2 ) {
            %msg = %msg $+ -
        } else {
           %msg = %msg $+ $chr(61)
        }
        /inc %i 1
    }
    %msg = %msg $+ ]
    
    if ($$2 > 100) {
        var %levelwidth = $int($calc($calc($$2 * $$1) / 100))
        %msg = %msg $+ 4
        var %f = 0
       while (%f < $int($calc(%levelwidth - $$1)) {
            %msg = %msg $+ $chr(61)
            /inc %f 1
        }
    }
 
    if ($$4 == random) {
      if ($$2 <= 10) { %message = CALM AND PEACEFUL }
      if ($$2 > 10) && ($$2 <= 20) { %message = RELAXED }
      if ($$2 > 20) && ($$2 <= 50) { %message = NOT SO ANGRY }
      if ($$2 > 50) && ($$2 <= 100) { %message = ANGRY AT YOU }
      if ($$2 > 100) { %message = OFF DA SCALE (buffar overrun) }
      }
      else {
      %message = $$4- 
      }
    /say %msg 4 $+ %message
}