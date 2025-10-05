//
//LOGIK Retro hra - Náhradní díl
//

w_max=77;// w-idth
d_max=17.75;//   d-epth
h_max=14;//   h-eight
t_max=1.5;//    t-hick
//w_max=77.5;// w-idth
//d_max=18;//   d-epth
//h_max=14;//   h-eight
//t_max=2;//    t-hick

module poly(w,d,h) {
    polyhedron(
        points=[
        [h,0,0],//0
        [h,d,0],//1
        [12,d,0],//2
        [0,10,0],//3
        [0,2,0],//4
        [h,0,w],//5
        [h,d,w],//6
        [12,d,w],//7
        [0,10,w],//8
        [0,2,w]],//9
        faces=[
        [0,1,2,3,4],//bottom
        [5,6,1,0],
        [2,1,6,7],
        [3,2,7,8],
        [4,3,8,9],
        [0,4,9,5],
        [9,8,7,6,5]
    ]);
}

difference(){
    poly(w_max,d_max,h_max);
    translate([t_max,-t_max,t_max]) poly(w_max-2*t_max,d_max,h_max);
}

