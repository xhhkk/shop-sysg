function pageInit(g, j, b, n, f, m) {
    var c = jQuery("#" + g);
    c.empty();
    var k = j;
    var i = b;
    var e = 5;
    var d = 2;
    var l = getCurrsPageYMax(k, d, i);
    var h = getCurrsPageYMin(k, d);
    var a = "";
    a += getPrevAndFistPage(k, n, f);
    a += getFrontEllipsis(h);
    if (h <= l) {
        a += getMiddlePage(k, e, h, i, l, n)
    }
    a += getBehindEllipsis(l, i);
    if (i > 1) {
        a += getLastPage(k, i, n)
    }
    a += getNextPage(k, i, n, m);
    c.append(a)
}
function getCurrsPageYMax(a, d, b) {
    var c = a + d;
    if (c >= b) {
        c = b - 1
    }
    return c
}
function getCurrsPageYMin(b, c) {
    var a = b - c;
    if (a < 2) {
        a = 2
    }
    return a
}
function getPrevAndFistPage(a, b, c) {
    var d = "";
    if (a == 1) {
        d += "<span class='prePage_h'> " + c + "</span>";
        d += "<a class='pageNum cPage' href='javascript:void(0);'>1</a>"
    } else {
        d += "<a class='prePage' href='javascript:void(0);' onclick='" + b + "(" + (a - 1) + ")'>" + c + "</a>";
        d += "<a class='pageNum' href='javascript:void(0);' onclick='" + b + "(1)'>1</a>"
    }
    return d
}
function getMiddlePage(f, b, e, d, h, j) {
    var a = "";
    for (var c = 0; c < b; c++) {
        var g = e + c;
        if (g == 0) {
            continue
        }
        if (g > h || g == d) {
            break
        }
        if (g == f) {
            a += " <a class='pageNum cPage' href='javascript:void(0);'>" + g + " </a>"
        } else {
            a += " <a class='pageNum' href='javascript:void(0);' onclick='" + j + "(" + g + ")'>" + g + "</a>"
        }
    }
    return a
}
function getLastPage(b, d, c) {
    var a = "";
    if (b == d) {
        a += " <a class='pageNum cPage' href='javascript:void(0);'>" + d + "</a>"
    } else {
        a += " <a class='pageNum' href='javascript:void(0);' onclick='" + c + "(" + d + ")'>" + d + "</a>"
    }
    return a
}
function getNextPage(a, c, b, e) {
    var d = "";
    if (a == c) {
        d += "<span class='prePage_h'> " + e + "</span>"
    } else {
        d += "<a class='prePage' href='javascript:void(0);' onclick='" + b + "(" + (a + 1) + ")'>" + e + "</a>"
    }
    return d
}
function getFrontEllipsis(a) {
    var b = "";
    if (a > 2) {
        b += "<span class='pageEllipsis'> ...</span>"
    }
    return b
}
function getBehindEllipsis(b, a) {
    var c = "";
    if ((b + 1) < a) {
        c += "<span class='pageEllipsis'> ...</span>"
    }
    return c
};