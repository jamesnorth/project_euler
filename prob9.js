
function PythagoreanTriple(m, n) {
    var a = 0, b = 0, c = 0;
    if (m < n) {
        a = Math.pow(n, 2) - Math.pow(m, 2);
        b = 2 * m * n;
        c = Math.pow(m, 2) + Math.pow(n, 2);
        return [a,b,c];
    } else {
        return [0,0,0];
    }
}

(function() {
    var OuterFunc function(n) {
        var InnerFunc = function(m) {
            var triple = PythagoreanTripe(m,n);

        }
    }

}());
