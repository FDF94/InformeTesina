# Gnuplot script 
reset
set encoding locale # iso_8859_1

# set terminal x11
set terminal postscript portrait enhanced color "Helvetica" 19
set output "Termo.eps"
set nokey

set multiplot layout 3,2

set style data lines

# set xlabel ''
# set format x ''
# set xtics pi
# set mxtics 4
# set xr [148:294]

# ########################### Plot 1
# set origin 0.0,0.0;
set ylabel "{/Symbol x}" rotate by 90 offset 2,0;
# set xlabel 'Temperature (°K)' offset 0,0.5
set lmargin 3
set rmargin 1
set tmargin 0.3
set bmargin 1.7 
set size 0.5,0.33
set xrange [0:10]
set xtics ("T_0" 5)
set yr [-0.1:1.1]
set ytics ("0" 0,"1" 1)
# set label 'Cooling' at 250.4,(10) rotate by 0 font "Helvetica,19"
 
set label  '(a)' at 8.3,1.02 rotate by 0 font "Helvetica,20"
set arrow nohead from 0,1 to 5,1 lt 1 lc 3 lw 4
set arrow nohead from 5,1 to 5,0 lt 1 lc 3 lw 4
set arrow nohead from 5,0 to 10,0 lt 1 lc 3 lw 4

plot -0.1 title "" with lines lw 0.1 lt 1 lc 0;
unset label
unset arrow
# ########################### Plot 2
# set origin 0.0,0.0;
set ylabel "G (J)" rotate by 90 offset 2,0;
# set xlabel 'Temperature (°K)' offset 0,0.5
set lmargin 3
set rmargin 1
set tmargin 0.3
set bmargin 1.7 
set size 0.5,0.33
# set yr [-200:150]
# set ytics 50
 # set label 'Cooling' at 250.4,(10) rotate by 0 font "Helvetica,19"
 
set label  '(b)' at 7,0.3 rotate by 0 font "Helvetica,20"

unset yr
unset ytics


set style data lines
set xr [2:8]
set label  'Austenita' at 5.7,-5 rotate by -45 font "Helvetica,17"
set label  'Martensita'at 2.5,-2.2 rotate by -15 font "Helvetica,17"
set arrow nohead from 5,-3 to 5,-9 lc 1 lw 1 lt 3

set xtics format " "
set ytics  format " "
f(x) = ( 0 < x && x <= 5 ) ? 1*x**(1)-0.7*x*log(x)-2.4 : 1/0 
g(x) = ( 5 <= x && x < 10 ) ? 1*x**(1)-x*log(x) : 1/0 
 plot 1*x**(1)-x*log(x)  notitle with lines lw 3 lc 2 lt 5 ,\
   1*x**(1)-0.7*x*log(x)-2.4 notitle with lines lw 3 lc 3 lt 1,\
      f(x) notitle with lines lw 3 lc rgb "red" lt 5,\
     g(x) notitle with lines lw 3 lc rgb "red" lt 5;

unset label
unset xlabel
unset arrow
# ########################### Plot 3
# set origin 0.0,0.0;
set ylabel "{/Symbol x}" rotate by 90 offset 2,0;
# set xlabel 'Temperature (°K)' offset 0,0.5
set lmargin 3
set rmargin 1
set tmargin 0.3
set bmargin 1.7 
set size 0.5,0.33
set xrange [0:10]
set xtics ("T_0" 5,"T_u" 3,"T_s" 7)
set yr [-0.1:1.1]
set ytics ("0" 0,"1" 1)
# set label 'Cooling' at 250.4,(10) rotate by 0 font "Helvetica,19"
 
set label  '(c)' at 8.3,1.02 rotate by 0 font "Helvetica,20"
set arrow nohead from 0,1 to 7,1 lt 1 lc 3 lw 4
set arrow nohead from 3,1 to 3,0 lt 1 lc 3 lw 4
set arrow nohead from 7,1 to 7,0 lt 1 lc 3 lw 4
set arrow nohead from 3,0 to 10,0 lt 1 lc 3 lw 4

plot -0.1 title "" with lines lw 0.1 lt 1 lc 0;
unset label
unset arrow
# ########################### Plot 4
# set origin 0.0,0.0;
set ylabel "G (J)" rotate by 90 offset 2,0;
# set xlabel 'Temperature (°K)' offset 0,0.5
set lmargin 3
set rmargin 1
set tmargin 0.3
set bmargin 1.7 
set size 0.5,0.33
# set yr [-200:150]
# set ytics 50
 # set label 'Cooling' at 250.4,(10) rotate by 0 font "Helvetica,19"
 
set label  '(d)' at 7,0.3 rotate by 0 font "Helvetica,20"

set style data lines
set xr [2:8]
set xtics ("T_0" 5,"T_u" 3.8,"T_s" 6.2)
unset ytics
unset yr
set label  'Austenita' at 5.7,-5 rotate by -45 font "Helvetica,17"
set label  'Martensita'at 2.5,-2.2 rotate by -15 font "Helvetica,17"
# set arrow nohead from 5,-3 to 5,-9 lw 1.5 lc 0 lt 2

set label  '{/Symbol D}G' at 3.05,-1.6 rotate by 0 font "Helvetica,17" tc lt 1
set arrow from 3.8,-1.3 to 3.8,-2.1 lc 1 lw 2
set label  '{/Symbol D}G' at 6.3,-4.7 rotate by 0 font "Helvetica,17" tc lt 1
set arrow from 6.2,-4.2 to 6.2,-5 lc 1 lw 2

set arrow nohead from 3.8,-2.2 to 3.8,-9 lc 1 lw 1 lt 3
set arrow nohead from 6.2,-5.2 to 6.2,-9 lc 1 lw 1 lt 3
set arrow nohead from 5,-3 to 5,-9 lc 0 lw 1 lt 0

set label  '{/Symbol D}T' at 4.1,-6.3 rotate by 0 font "Helvetica,17" tc lt 0
set arrow heads from 3.85,-7 to 4.95,-7 lc 0 lw 1 lt 1

set xtics format " "
set ytics  format " "
f(x) = ( 0 < x && x <= 3.8 ) ? 1*x**(1)-0.7*x*log(x)-2.4 : 1/0 
g(x) = ( 3.8 <= x && x < 10 ) ? 1*x**(1)-x*log(x) : 1/0 
 plot 1*x**(1)-x*log(x)  notitle with lines lw 3 lc 2 lt 5 ,\
   1*x**(1)-0.7*x*log(x)-2.4 notitle with lines lw 3 lc 3 lt 1,\
      f(x) notitle with lines lw 3 lc rgb "red" lt 5,\
     g(x) notitle with lines lw 3 lc rgb "red" lt 5;

unset label
unset arrow
# ########################### Plot 5
# set origin 0.0,0.0;
set ylabel "{/Symbol x}" rotate by 90 offset 2,0;
# set xlabel 'Temperature (°K)' offset 0,0.5
set lmargin 3
set rmargin 1
set tmargin 0.3
set bmargin 1.7 
set size 0.5,0.33
set xrange [0:10]
set xtics ("T_0" 5,"T_u" 3,"T_s" 7)
set yr [-0.1:1.1]
set ytics ("0" 0,"1" 1)
 # set label 'Cooling' at 250.4,(10) rotate by 0 font "Helvetica,19"
 
set label  '(e)' at 8.3,1.02 rotate by 0 font "Helvetica,20"
set arrow nohead from 0,1 to (4.5+0.7),1 lt 1 lc 3 lw 4
set arrow nohead from (0.5+0.7),1 to (2+0.7),0 lt 1 lc 3 lw 4
set arrow nohead from (4.5+0.7),1 to (6+0.7),0 lt 1 lc 3 lw 4
set arrow nohead from (2+0.7),0 to 10,0 lt 1 lc 3 lw 4

set arrow nohead from (2+0.7),0 to (2+0.7),0.35 lc 1 lw 1 lt 3
set label  'M_s' at (1.5+0.7),0.4 rotate by 0 font "Helvetica,17" tc lt 1

set arrow nohead from (0.5+0.7),1 to (0.5+0.7),0.5 lc 1 lw 1 lt 3
set label  'M_f' at (0.1+0.7),0.45 rotate by 0 font "Helvetica,17" tc lt 1

set arrow nohead from (4.5+0.7),1 to (4.5+0.7),0.5 lc 1 lw 1 lt 3
set label  'A_s' at (4.2+0.7),0.43 rotate by 0 font "Helvetica,17" tc lt 1

set arrow nohead from (6+0.7),0 to (6+0.7),0.35 lc 1 lw 1 lt 3
set label  'A_f' at (5.7+0.7),0.4 rotate by 0 font "Helvetica,17" tc lt 1

plot -0.1 title "" with lines lw 0.1 lt 1 lc 0;
unset label
unset arrow
# ################# Plot 6
set ylabel "G (J)" rotate by 90 offset 2,0
set lmargin 3
set rmargin 1
set tmargin 0.3
set bmargin 1.7 
set size 0.5,0.33
# set yr [-500:370]
# set ytics 100
# set xr [200:330]
# set xtics 20
set format x "%-2.0f"
# set xlabel 'Temperature (°K)' offset 0,0.3
# set label 'Heating' at 205,-180 rotate by 0 font "Helvetica,19"
set label  '(f)' at 7,0.3 rotate by 0 font "Helvetica,20"
set style data lines
set xr [2:8]
set xtics ("T_0" 5,"T_u" 3.8,"T_s" 6.2)
unset ytics
unset yr
set label  'Austenita' at 6.2,-6.1 rotate by -47 font "Helvetica,17"
set label  'Martensita'at 5.5,-3 rotate by -30 font "Helvetica,17"
# set arrow nohead from 5,-3 to 5,-9 lw 1.5 lc 0 lt 2

set label  '{/Symbol D}G' at (2.4+0.42),-2.6 rotate by 0 font "Helvetica,17" tc lt 1
set arrow from (2.3+0.42),-0.1 to (2.3+0.42),-1.5 lc 1 lw 2
set arrow from (2.6+0.42),-0.4 to (2.6+0.42),-1.62 lc 1 lw 2
set arrow from (2.9+0.42),-0.75 to (2.9+0.42),-1.73 lc 1 lw 2
set arrow from (3.2+0.42),-1.2 to (3.2+0.42),-1.9 lc 1 lw 2


set arrow nohead from (3.2+0.42),-2 to (3.2+0.42),-6.5 lc 1 lw 1 lt 3
set arrow nohead from (3.2+0.42),-7.5 to (3.2+0.42),-9 lc 1 lw 1 lt 3
set arrow nohead from (2.3+0.42),-1.6 to (2.3+0.42),-6.5 lc 1 lw 1 lt 3
set arrow nohead from (2.3+0.42),-7.5 to (2.3+0.42),-9 lc 1 lw 1 lt 3
set label  'M_s' at (3.2+0.42-0.25),-7.1 rotate by 0 font "Helvetica,17" tc lt 1
set label  'M_f' at (2.3+0.42-0.2),-7 rotate by 0 font "Helvetica,17" tc lt 1

set arrow nohead from 5,-3 to 5,-9 lc 0 lw 1 lt 0

set label  '{/Symbol D}T' at 4.0,-5.4 rotate by 0 font "Helvetica,17" tc lt 0
set arrow heads from 3.65,-6 to 4.95,-6 lc 0 lw 1 lt 1

# Retransformación

set label  '{/Symbol D}G' at (5.25),-5.2 rotate by 0 font "Helvetica,17" tc lt 1
# set arrow from (4.7+0.42),-0.1 to (2.3+0.42),-1.5 lc 1 lw 2
set arrow from (5+0.42),-3.38 to (5+0.42),-3.7 lc 1 lw 2
set arrow from (5.3+0.42),-3.7 to (5.3+0.42),-4.2 lc 1 lw 2
set arrow from (5.6+0.42),-4 to (5.6+0.42),-4.7 lc 1 lw 2

set arrow nohead from (5.6+0.42),-4.8 to (5.6+0.42),-6.5 lc 1 lw 1 lt 3
set arrow nohead from (5.6+0.42),-7.5 to (5.6+0.42),-9 lc 1 lw 1 lt 3
set arrow nohead from (4.7+0.42),-3.2 to (4.7+0.42),-6.5 lc 1 lw 1 lt 3
set arrow nohead from (4.7+0.42),-7.5 to (4.7+0.42),-9 lc 1 lw 1 lt 3
set label  'A_f' at (5.6+0.42-0.25),-7.1 rotate by 0 font "Helvetica,17" tc lt 1
set label  'A_s' at (4.7+0.42-0.1),-7 rotate by 0 font "Helvetica,17" tc lt 1

set xtics format " "
set ytics  format " "
f(x) = ( 0 < x && x <= (3.2+0.42) ) ? 1*x**(1)-0.7*x*log(x)-2.4 : 1/0 
g(x) = ( (2.3+0.42) <= x && x < 10 ) ? 1*x**(1)-x*log(x) : 1/0 
 plot 1*x**(1)-x*log(x)  notitle with lines lw 3 lc 2 lt 5 ,\
   1*x**(1)-0.7*x*log(x)-2.4 notitle with lines lw 3 lc 3 lt 1,\
      f(x) notitle with lines lw 3 lc rgb "red" lt 5,\
     g(x) notitle with lines lw 3 lc rgb "red" lt 5;
unset label

unset multiplot
set out
