let fullscreen = slate.operation("move",{
    "x" : "screenOriginX",
    "y" : "screenOriginY",
    "width" : "screenSizeX",
    "height" : "screenSizeY"
});
let topLeft = slate.operation("move",{
    "x" : "screenOriginX",
    "y" : "screenOriginY",
    "width" : "screenSizeX/2",
    "height" : "screenSizeY/2"
});
let bottomLeft = slate.operation("move",{
    "x" : "screenOriginX",
    "y" : "screenOriginY + screenSizeY/2",
    "width" : "screenSizeX/2",
    "height" : "screenSizeY/2"
});
let bottomRight = slate.operation("move",{
    "x" : "screenOriginX + screenSizeX/2",
    "y" : "screenOriginY + screenSizeY/2",
    "width" : "screenSizeX/2",
    "height" : "screenSizeY/2"
});
let topRight = slate.operation("move",{
    "x" : "screenOriginX + screenSizeX/2",
    "y" : "screenOriginY",
    "width" : "screenSizeX/2",
    "height" : "screenSizeY/2"
});
let topHalf = slate.operation("move",{
    "x" : "screenOriginX",
    "y" : "screenOriginY",
    "width" : "screenSizeX",
    "height" : "screenSizeY/2"
});
let leftHalf = slate.operation("move",{
    "x" : "screenOriginX",
    "y" : "screenOriginY",
    "width" : "screenSizeX / 2",
    "height" : "screenSizeY"
});
let rightHalf = slate.operation("move",{
    "x" : "screenOriginX + screenSizeX/2",
    "y" : "screenOriginY",
    "width" : "screenSizeX / 2",
    "height" : "screenSizeY"
});
let bottomHalf = slate.operation("move",{
    "x" : "screenOriginX",
    "y" : "screenOriginY + screenSizeY/2",
    "width" : "screenSizeX",
    "height" : "screenSizeY/2"
});
let leftThird = slate.operation("move",{
    "x" : "screenOriginX",
    "y" : "screenOriginY",
    "width" : "screenSizeX/3",
    "height" : "screenSizeY"
});
let middleThird = slate.operation("move",{
    "x" : "screenOriginX + screenSizeX/3",
    "y" : "screenOriginY",
    "width" : "screenSizeX/3",
    "height" : "screenSizeY"
});
let rightThird = slate.operation("move",{
    "x" : "screenOriginX + screenSizeX*2/3",
    "y" : "screenOriginY",
    "width" : "screenSizeX/3",
    "height" : "screenSizeY"
});

slate.bind("pad6:ctrl", function(win){ win.doOperation(rightHalf);  })
slate.bind("pad5:ctrl", function(win){ win.doOperation(fullscreen); })
slate.bind("pad7:ctrl", function(win){ win.doOperation(topLeft);    })
slate.bind("pad9:ctrl", function(win){ win.doOperation(topRight);   })
slate.bind("pad1:ctrl", function(win){ win.doOperation(bottomLeft); })
slate.bind("pad3:ctrl", function(win){ win.doOperation(bottomRight);})
slate.bind("pad8:ctrl", function(win){ win.doOperation(topHalf);    })
slate.bind("pad2:ctrl", function(win){ win.doOperation(bottomHalf); })
slate.bind("pad4:ctrl", function(win){ win.doOperation(leftHalf);   })
slate.bind("padClear:ctrl", function(win){ win.doOperation(leftThird);   })
slate.bind("pad=:ctrl", function(win){ win.doOperation(middleThird);   })
slate.bind("pad/:ctrl", function(win){ win.doOperation(rightThird);   })

// for a laptop without a numpad:
/*
slate.bind("d:space,ctrl", function(win){ win.doOperation(rightHalf); })
slate.bind("s:space,ctrl", function(win){ win.doOperation(fullscreen); })
slate.bind("q:space,ctrl", function(win){ win.doOperation(topleft); })
slate.bind("e:space,ctrl", function(win){ win.doOperation(topright); })
slate.bind("z:space,ctrl", function(win){ win.doOperation(bottomleft); })
slate.bind("c:space,ctrl", function(win){ win.doOperation(bottomright); })
slate.bind("w:space,ctrl", function(win){ win.doOperation(topHalf); })
slate.bind("x:space,ctrl", function(win){ win.doOperation(bottomHalf); })
slate.bind("a:space,ctrl", function(win){ win.doOperation(leftHalf); })

*/
