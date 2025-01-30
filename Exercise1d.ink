/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR day = -1 // 0 Monday Morning, 1 Monday Noon, 2 Monday Night, 3 Tuesday Morning, 4 Tuesday Noon, 5 Tuesday Night, 6 Wednesday Morning, 7 Wednesday Noon, 8 Wednesday Night, 9 Thursday Morning, 



-> seashore

== seashore ==
You are sitting on the beach. 

It is { advance_time () }
On { advance_day () }

+ { day == 0 } [Stroll down the beach ] -> beach1
+ { day == 3 } [Stroll down the beach ] -> beach2
+ { day == 6 } [Stroll down the beach ] -> beach3

== beach1 ==
This is further down the beach.

It is { advance_time () }
On { advance_day () }
* { time == 1 } [ Pick up some seashells ] -> shells_1


+ [Stroll back up the beach ] -> seashore

== shells_1 ==
You sift through the sand and end up finding a beautiful full sand dollar. 

You brush off the top of its engraving and place it into your little blue pail.

-> beach2

== beach2 ==
This is further down the beach.

It is { advance_time () }
On { advance_day () }
* { time == 1 } [ Pick up some seashells  ] -> shells_2

+ [Stroll back up the beach ] -> seashore

== shells_2 ==
You walk through the rushing water, kicking up sand and mudding the water. After a few steps you look bellow you and see a beautiful Conch shell sitting just above the dusty ocean waves.

You brush off the top of its skin and place it into your little blue pail.

-> beach3

== beach3 ==
This is further down the beach.

It is { advance_time () }
On { advance_day () }
* { time == 1 } [ Pick up some seashells ] -> shells_3

+ [Stroll back up the beach  ] -> seashore

== shells_3 ==
You look across the white sand and search for shells, with no avail you look out to the ocean and catch a glimpse of something shining just above the water. 
The waves crash against the shore, washing up what shining lost things can be found. 

A green glass bottle filled with tiny shells and dark colored sand! 
With a couple shakes and awe-filled stares, you place the bottle into your little blue pail and with little steps you make your way back to the home.

*[ Go to bed ] -> vacation_end


== vacation_end ==
It is { advance_time () }
On { advance_day () }
You pack your brightly colored suitcase with your favorite cartoon characters, then snuggle into bed with your plushies. Tucked under the soft blankets, you drift off to sleep.

* [Last Night] -> pack_up


== pack_up == 
It is { advance_time () }
On { advance_day () }
You grab your things, the shells you’ve gathered now resting in a small box. Your parents call from downstairs, telling you it's time to leave.

Your little heart sinks a little, knowing this place—the rhythm of the waves, and the sun on your face—will become something of a memory in days to come. The lul of the car engine makes your eyelids heavy, maybe a nap would make this car ride a bit shorter.

* [ look at the oceans horizon ] -> a_new_day

== a_new_day ==
<< Oh how the time flies >>
Your eyes begin to flutter open, the familiar sound of the ocean waves greet you kindly from your nap. 
Your partner parks the car in front of the beach house, the familiar view of the ocean spreading out before you. Your kids, wide-eyed with excitement, jump out of the car and run toward the shore. The sound of their laughter fills the air.

As you sit in the car for a moment, you glance at the ocean, the memories of your own childhood vacation creeping into your mind.

* [ Look back ] -> look_forward

== look_forward == 
The beach looks the same, but everything feels different now. The vacation you once had is a memory, a fleeting moment in time. But now, it’s their turn.

-> END 


== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    == function advance_day ==

    ~ day = day + 1
    
    {
        - day > 9:
            ~ day = vacation_end
    }
    
    {    
        - day == 0:
            ~ return "Monday"
        
        - day == 1:
            ~ return "Monday"
        
        - day == 2:
            ~ return "Monday"
        
        - day == 3:
            ~ return "Tuesday"
        
        - day == 4:
            ~ return "Tuesday"
        
        - day == 5:
            ~ return "Tuesday"
            
        - day == 6:
            ~ return "Wednesday"
        
        - day == 7:
            ~ return "Wednesday"
        
        - day == 8:
            ~ return "Wednesday"
            
        - day == 9 :
            ~ return "Thursday"
    }
    
    
    
