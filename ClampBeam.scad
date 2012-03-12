
module example001()
{
	function r_from_dia(d) = d / 2;

	module rotcy(rot, r, h) {
		rotate(90, rot)
			cylinder(r = r, h = h, center = true);
	}

	difference() {
		sphere(r = r_from_dia(size));
		rotcy([0, 0, 0], cy_r, cy_h);
		rotcy([1, 0, 0], cy_r, cy_h);
		rotcy([0, 1, 0], cy_r, cy_h);
	}

	size = 50;
	hole = 25;

	cy_r = r_from_dia(hole);
	cy_h = r_from_dia(size * 2.5);
}

module  clampBeam001() {
	module rotcy(rot, r, h) {
		rotate(90, rot)
			cylinder(r = r/2, h = h, center = true);
	}
	
	
	difference() {
		union() {
			cube(size = [20,130,15]);
			translate(v = [10, 0, 7.5]){
				rotcy([0, 1, 0], 15, 20.001);
			}
		}
		translate(v = [10, 0, 7.5]){
			rotcy([0, 1, 0], 5, 25);
		}
	}
}

clampBeam001();

