// es6
class Shape {
    constructor (id, x, y) {
        this.id = x
        this.move(x, y)
    }

    move (x, y) {
        this.x = x
        this.y = y
    }
}

class Rectangle extends Shape {
    constructor (id, x, y, width, height) {
        super(id, x, y)
        this.width = width
        this.height = height
    }
}

class Circle extends Shape {
    constructor (id, x, y, radius) {
        super(id, x, y)
        this.radius = radius
    }
}

// es5
var Shape = function (id, x, y) {
    this.id = id;
    this.move(x, y);
}

Shape.prototype.move = function (x, y) {
    this.x = x;
    this.y = y;
}
