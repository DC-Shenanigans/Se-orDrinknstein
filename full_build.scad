include <buck_converter.scad>;
include <pi_mount.scad>;
include <relay_mount.scad>;
include <power_board.scad>;

$fs=0.2;
$fn=150;

pi_board_y = 54;
pi_board_x = 40;

relay_board_x = 13.25;
relay_board_y = 66.25;
power_board_x = 19.3;
power_board_y = 99;
buck_converter_x = 43;
buck_converter_y = 21;

translate([10 ,relay_board_y + 15 ,0]) pi_mount();

relay();
translate([relay_board_x + 5,0,0])  relay();
translate([(relay_board_x + 5) * 2,0,0])  relay();
translate([(relay_board_x + 5) * 3,0,0])  relay();
translate([(relay_board_x + 5) * 4,0,0])  relay();
translate([(relay_board_x + 5) * 5,0,0])  relay();
//translate([(relay_board_x + 5) * 6,0,0])  relay();


translate([0,relay_board_y + 30 + pi_board_x]){
    
relay();
translate([relay_board_x + 5,0,0])  relay();
translate([(relay_board_x + 5) * 2,0,0])  relay();
translate([(relay_board_x + 5) * 3,0,0])  relay();
translate([(relay_board_x + 5) * 4,0,0])  relay();
translate([(relay_board_x + 5) * 5,0,0])  relay();
//translate([(relay_board_x + 5) * 6,0,0])  relay();
}

translate([(relay_board_x + 5) * 7 + 10,2,0]) power_board();

translate([(relay_board_x + 5) * 7 + 10,8 + power_board_y,0]) power_board();

//translate([75 ,relay_board_y +45 ,0]) power_board();

translate( [relay_board_y + 15,buck_converter_y + relay_board_y + 15,0]) rotate([0,0,270]) buck_converter();

translate( [relay_board_y + 15,buck_converter_y + relay_board_y + 10 + buck_converter_y + 10,0]) rotate([0,0,270]) buck_converter();