module  clampBeam001() {
	module rotcy(rot, r, h) {
		rotate(90, rot)
			cylinder(r = r/2, h = h, center = true);
	}
	
	difference() {
	difference() {
		union() {
			cube(size = [25,130,15]);
			translate(v = [12.5, 0, 7.5]){
				rotcy([0, 1, 0], 15, 25.005);
			}
		}
		translate(v = [10, 0, 7.5]){
			rotcy([0, 1, 0], 5, 35);
		}
	}
		translate(v = [-1,12,2.5]) {
			cube(size = [9,140,10]);
		}
		translate(v = [17,12,2.5]) {
			cube(size = [9,140,10]);
		}
		translate(v = [5,-7.5,-1]){
			cube(size = [5,15,25]);
		}
		translate(v = [15,-7.5,-1]){
			cube(size = [5,15,25]);
		}
	}	
}

clampBeam001();

