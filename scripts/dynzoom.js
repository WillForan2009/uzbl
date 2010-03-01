/*                                                                                                                    
 * Dynamically zoom the content 
 * based on uzbl's window size
 *
 * (c) 2009 by Robert Manea
 *
*/

(function(Uzbl) {
 
function set_zoom(level) {
    var zl = parseFloat(Uzbl.run("print \@zoom_level"));
 
    if(zl != level)
        Uzbl.run("set zoom_level = " + level); 
}
 
/* Get geometry information */
var r = /^([0-9]+)x([0-9]+)[+-].*$/;
var g = Uzbl.run("print \@geometry");
r.exec(g);
 
var w = parseInt(RegExp.$1);
var h = parseInt(RegExp.$2);
 
/* Logic */  
if(w*h > 300*400) { 
    set_zoom(1.0);
}
else {
    set_zoom(0.5);
}
 
})(Uzbl);
