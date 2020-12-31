$fn = 30;

thickness = .25;
outside_radius = 5;
inside_radius = 2;
hole_radius = 2.5;
hole_diameter = .5;
number_holes = 8;

difference() {
  cylinder(r = outside_radius, h = thickness);
  cylinder(r = inside_radius, h = thickness);

  for(x = [0 : number_holes]) {
    echo(x * 90);
    rotate(x * (360 / number_holes), [0, 0, 1]) {
      translate([hole_radius, 0, -1]) {
        cylinder(d = hole_diameter, h = thickness + 2);
      }
    }
  }
}
