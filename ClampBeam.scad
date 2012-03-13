module rotcy(rot, r, h) {
	rotate(90, rot)
	cylinder(r = r/2, h = h, center = true);
}
module  clampBeam001() {
	// main beam
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

module clampBeam002() {
	// corner
	translate(v= [0,130,0]) {
		difference() {
			cube(size = [25,15,15]);	
			translate(v = [-1,-2.5,-2.5]) {
				cube(size = [9,15,15]);	
			}
			translate(v = [17,-2.5,-2.5]) {
				cube(size = [9,15,15]);
			}
		
		}
	}
}

module clampBeam003() {
	translate(v= [0,130,-20]) {
		difference() {
			cube(size = [25,15,22.5]);	
			translate(v = [-1,2.5,2.5]) {
				cube(size = [9,10,21]);	
			}
			translate(v = [17,2.5,2.5]) {
				cube(size = [9,10,25]);
			}
		
		}
	}
}

module lattice() {
	
	translate(v = [0,35,0]) {
		rotate(a = 60, v = [1,0,0]) {
			cube(size = [8,2.5, 25]);
		}
	}
	translate(v = [0,35,2.5]) {
		rotate(a =-60, v = [1,0,0]) {	
			cube(size = [8,2.5, 25]);
		}
	}
	translate(v = [0,77.5,0]) {
		rotate(a = 60, v = [1,0,0]) {
			cube(size = [8,2.5, 25]);
		}
	}
	translate(v = [0,77.5,2.5]) {
		rotate(a =-60, v = [1,0,0]) {	
			cube(size = [8,2.5, 25]);
		}
	}
	translate(v = [0,120,0]) {
		rotate(a = 60, v = [1,0,0]) {
			cube(size = [8,2.5, 25]);
		}
	}
	translate(v = [0,120,2.5]) {
		rotate(a =-60, v = [1,0,0]) {	
			cube(size = [8,2.5, 25]);
		}
	}
	translate(v = [0,142.5,-20]) {
		rotate(a = 30, v = [1,0,0]) {
			cube(size = [8,2.5, 24.5]);
		}
	}
	
}

module screwMount() {
	translate(v = [0,30,15]) {
		difference() {
			cube([25,2.5,15]);
			translate(v = [12.5,10,8]) {
				rotate(a = 90, v = [1,0,0]) {
					cylinder(h = 25, r=2, $fs=1);	
				}
			}
		}
		difference() {
			
			
			translate(v = [0, -5, 0]) {
				cube([25,5,15]);
			}
			union() {
			translate(v = [12.5,0.1,8]) {
				rotate(a = 90, v = [1,0,0]) {
					cylinder(h = 10, r=5, $fs=6);
					
				}
			}
			}
		}
		difference() {
			cube([2.5,27,15]);
			translate(v = [-1,43,25]) {
				rotate(a  = 150, v = [1,0,0]){
					cube([5,30,30]);
				}
			}
		
		}
		translate(v = [22.5,0,0]) {
		difference() {
			cube([2.5,27,15]);
			translate(v = [-1,43,25]) {
				rotate(a  = 150, v = [1,0,0]){
					cube([5,30,30]);
				}
			}
		}
		}
	}
	
}

union() {
	clampBeam001();
	clampBeam002();
	clampBeam003();
	
	lattice();
	translate(v = [17,0,0]) {
		lattice();
	}

	screwMount();
	
}

