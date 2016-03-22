////drawTarget(targetNumber, activeNumber)

targetNumber = argument[0]
activeNumber = argument[1]
angle = degtorad(sequence[targetNumber]*360/numTargets)-degtorad(90)
radius = room_height/2.3

xx = room_width/2 + radius * cos(angle)
yy = room_height/2 + radius * sin(angle)

n = activeNumber

if( chx < xx+sr and chx > xx-sr and chy < yy+sr and chy > yy-sr ){
    if(actionCheck()){
        draw_sprite(CLICK,0,xx,yy)
    }
    else{
        draw_sprite(HOVER,0,xx,yy)
    }
}
else if( targetNumber == activeNumber ){
    draw_sprite(NEXT,0,xx,yy) 
}
else if(targetNumber < activeNumber){
    draw_sprite(COMPLETE,0,xx,yy)
}

else{
    draw_sprite(IDLE,0,xx,yy)
}

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(font0)
draw_set_color(c_black)
draw_text(xx+1,yy+1,string(sequence[targetNumber]))
draw_set_color(c_white)
draw_text(xx,yy,string(sequence[targetNumber]))
