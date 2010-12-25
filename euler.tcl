####################################################################################
# Project Euler Solutions
# April 2010, By James North
####################################################################################

proc ... {from to} {
    set seq {}
    for {set i $from} {$i <= $to} {incr i} {lappend seq $i}
    set seq
}

proc map {f list} {
    set 
}

proc square {n} { return [expr $n * $n] }

# GCD Algorithm
proc gcd {x y} {
    while { $y != 0 } {
        set z [expr $x % $y]
        set x $y
        set y $z
    }
}

# Calculate Fibonacci Numbers
proc fibonacci {n} {
    if {$n < 2} {
        return 1
    } else {
        return [expr {[fibonacci [expr {$n-2}]] + [fibonacci [expr {$n-1}]]}]
    }
}

####################################################################################

# Problem 1                             [SOLVED]
# December 2009
proc prob001 {} {
    set acc 0
    for {set n 0} {$n<1000} {incr n} {
        if {$n%3 == 0 || $n%5 == 0} {
            set acc [expr $acc + $n]
        }
    }
    puts [format "Problem 1   =    %i" $acc]
}

# This is REALLY slow. I need to get rid of the recursive function, function
# calls are obviously very costly.
proc prob002slow {} {
    set acc 0

    for {set  n 0} {$n < 500} {incr n} {
        set val [fibonacci $n]
        if {$val<4000000} {
            if {($val%2) == 1} {
                set acc [expr $acc + $val]
            }
       } else {
            break
        }
    }

    puts [format "Accumulator is %i" $acc]
}

# Problem 2                             [SOLVED]
# December 2009
# NOTE: Used WolframAlpha to work out the closed form of the recurrent sequence.
proc prob002 {} {
    set acc 0

    for {set n 0} {$n < 12} {incr n} {
        set elem [expr (pow((2 + sqrt(5)),$n) - pow((2 - sqrt(5)),$n)) / sqrt(5)]
        set acc [expr $acc + $elem]
    }

    puts [format "Problem 2   =    %i" [expr int($acc)]]
}

# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
proc prob003 {} {


}

# Problem 5                             []
#
# Factor Code :-
# : euler005 ( -- answer )
#   1 20 [a,b] 1 [ lcm ] reduce ;
#
proc prob005 {} {
    
}

# Problem 6                             [SOLVED]
# April 2010
proc prob006 {} {
    set n 100
    set acc 0
    set sum 0

    # turn on/off debug
    set dbg 0

    for {set i 1} {$i <= $n} {incr i} {
        set sum [expr $sum + pow($i, 2)]
    }

    for {set i 1} {$i <= $n} {incr i} {
        set acc [expr $acc + $i]
    }
    set square [expr pow($acc, 2)]

    set diff [expr int($square - $sum)]
    
    if {$dbg == 1} {
        puts [format "sum is %f" $sum]
        puts [format "square is %f" $square]
    }

    # Print the result
    puts [format "Problem 3   =    %i" $diff]
}

####################################################################################
# Solve the probs
####################################################################################
puts "============================================================================="
puts "=                     James' Project Euler Solutions                        ="
puts "============================================================================="
puts ""

prob001
prob002
prob006
