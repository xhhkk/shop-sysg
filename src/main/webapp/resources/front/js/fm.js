(function (c, f) {
    if (c.FMs) {
        return
    }
    var b, d = Object.prototype.toString, e = Array.prototype.slice, a = c.document;
    b = function () {
        return b.dom.quick.apply(this, arguments)
    };
    b.add = function (g, h) {
        if (typeof g != "string") {
            var i = g;
            for (var g in i) {
                b.add(g, i[g])
            }
            return
        }
        if (b[g] == f) {
            b[g] = h
        } else {
            throw new Error("FMs Lib：模块名" + g + "已被占用")
        }
    };
    b.version = "1.0";
    b.add({
        isFunction: function (g) {
            return d.call(g) === "[object Function]"
        }, isArray: function (g) {
            return d.call(g) === "[object Array]"
        }, isPlainObject: function (g) {
            return g && d.call(g) === "[object Object]" && !g.nodeType && !g.setInterval
        }, isBoolean: function (g) {
            return d.call(g) === "[object Boolean]"
        }, isUndefined: function (g) {
            return g === f
        }, isString: function (g) {
            return d.call(g) === "[object String]"
        }, isNumber: function (g) {
            return d.call(g) === "[object Number]"
        }, trim: function (g) {
            if (String.prototype.trim) {
                return g.trim()
            }
            return g.replace(/^\s+/g, "").replace(/\s+$/g, "")
        }, each: function (h, l) {
            if (f === h.length) {
                for (var k in h) {
                    if (false === l.call(h, h[k], k)) {
                        break
                    }
                }
            } else {
                for (var j = 0, g = h.length; j < g; j++) {
                    if (j in h) {
                        if (false === l.call(h, h[j], j)) {
                            break
                        }
                    }
                }
            }
        }, extend: function (g, j, h) {
            if (h === f) {
                h = true
            }
            for (var i in j) {
                if (h || !(i in g)) {
                    g[i] = j[i]
                }
            }
            return g
        }, merge: function () {
            var j = {}, h, g = arguments.length;
            for (h = 0; h < g; ++h) {
                b.extend(j, arguments[h])
            }
            return j
        }, bindFn: function (g) {
            return function () {
                var i = e.call(arguments, 0), h;
                i.unshift(this);
                h = g.apply(this, i);
                if (h === f) {
                    return this
                } else {
                    if (h && h.nodeType && h.nodeType == 1) {
                        return b.element(h)
                    } else {
                        return h
                    }
                }
            }
        }
    });
    b.add("dom", function (h) {
        var g = false, l = [], i = function () {
            if (!g) {
                g = true;
                if (l) {
                    b.each(l, function (m) {
                        m.call(a, b)
                    });
                    l = null
                }
            }
        }, k = false;
        bindReady = function () {
            if (k) {
                return
            }
            k = true;
            if (a.addEventListener) {
                a.addEventListener("DOMContentLoaded", function () {
                    a.removeEventListener("DOMContentLoaded", arguments.callee, false);
                    i()
                }, false)
            } else {
                if (a.attachEvent) {
                    a.attachEvent("onreadystatechange", function () {
                        if (a.readyState === "complete") {
                            a.detachEvent("onreadystatechange", arguments.callee);
                            i()
                        }
                    });
                    if (a.documentElement.doScroll && c == c.top) {
                        (function () {
                            if (g) {
                                return
                            }
                            try {
                                a.documentElement.doScroll("left")
                            } catch (m) {
                                setTimeout(arguments.callee, 0);
                                return
                            }
                            i()
                        })()
                    }
                }
            }
            b.addEvent(c, "load", i)
        };
        var j = {
            getElems: function (m, n) {
                return b.selector(m, n)
            }, getElem: function (m, o) {
                var n = b.dom.getElems(m, o);
                return n.length ? n[0] : null
            }, quick: function (p, o) {
                var n, m;
                if (!p) {
                    return null
                }
                if (b.isString(p)) {
                    var n = b.dom.getElems(p, o);
                    return b.dom.quick(n)
                }
                if (b.isFunction(p)) {
                    return b.dom.ready(p)
                }
                if (b.isArray(p)) {
                    b.each(p, function (q) {
                        b.dom.quick(q)
                    });
                    if (p.length > 1) {
                        p.each = b.bindFn(b.each)
                    } else {
                        p = p[0];
                        p[0] = p;
                        p.each = function (q) {
                            q(p)
                        }
                    }
                    return p
                }
                if (p.nodeType) {
                    return b.dom.element(p)
                }
                return null
            }, ready: function (m) {
                bindReady();
                if (g) {
                    m.call(a, b)
                } else {
                    l.push(function () {
                        return m.call(a, b)
                    })
                }
                return this
            }, element: function (m) {
                b.extend(m, b.dom.methods);
                return m
            }, extend: function (p, o) {
                if (!b.isString(p)) {
                    var q = {};
                    if (o) {
                        b.each(o, function (s) {
                            var t = p[s];
                            if (t) {
                                q[s] = t
                            }
                        })
                    } else {
                        q = p
                    }
                    b.each(q, function (t, s) {
                        b.dom.extend(s, t)
                    })
                } else {
                    var m = b.dom.methods, n = p, r = o;
                    if (b.isFunction(r)) {
                        m[n] = b.bindFn(r)
                    } else {
                        m[n] = r
                    }
                }
            }, methods: {}
        };
        return j
    }(b));
    b.getElem = b.dom.getElem;
    b.getElems = b.dom.getElems;
    b.ready = b.dom.ready;
    b.element = b.dom.element;
    b.add("loader", {
        getScript: function (h, k, j) {
            var i = a.getElementsByTagName("head")[0] || a.documentElement, g = a.createElement("script");
            g.src = h;
            j && (g.charset = j);
            g.onload = g.onreadystatechange = function () {
                if ((!this.readyState || this.readyState === "loaded" || this.readyState === "complete")) {
                    k && k();
                    g.onload = g.onreadystatechange = null;
                    if (i && g.parentNode) {
                        i.removeChild(g)
                    }
                }
            };
            i.appendChild(g);
            return g
        },
        need: function () {
            var g = b.loader, h = e.call(arguments, 0), i = h.pop();
            if (!b.isFunction(i)) {
                return
            }
            var j = function () {
                i.call(b, b)
            };
            j.depth = h.length;
            b.each(h, function (o) {
                var l, n = g.__mods[o];
                if (n) {
                    l = o;
                    o = n
                }
                if (o) {
                    var m = function () {
                        !--j.depth && j()
                    }, k = g.__log[o] || (g.__log[o] = {});
                    if (l && b[l]) {
                        k.status = "loaded"
                    }
                    if (k.status == "sent") {
                        k.callbaks.push(m)
                    } else {
                        if (k.status == "loaded") {
                            m()
                        } else {
                            k.status = "sent";
                            k.callbaks = [m];
                            g.getScript(o, function () {
                                b.each(k.callbaks, function (p) {
                                    p.call(c, b)
                                });
                                k.status = "loaded"
                            })
                        }
                    }
                }
            })
        },
        __log: {},
        __mods: {
            ajax: "http://js.3conline.com/min/temp/v2/mod-ajax.js",
            cookie: "http://js.3conline.com/min/temp/v2/mod-cookie.js",
            tab: "http://js.3conline.com/min/temp/v2/dpl-tab.js"
        }
    });
    b.need = b.loader.need;
    b.getScript = b.loader.getScript;
    c.fm = c.FMs = b
})(window);
FMs.add("selector", (function (f) {
    var g = /^(?:[\w\-_]+)?\.([\w\-_]+)/, e = /^(?:[\w\-_]+)?#([\w\-_]+)/, k = /^([\w\*\-_]+)/, h = /^(?:[\w\-_]+)?\[([\w]+)(=(\w+))?\]/, i = [null, null, null, null];

    function c(p, n) {
        n = n || document;
        var l = /^[\w\-_#]+$/.test(p);
        if (!l && n.querySelectorAll) {
            return b(n.querySelectorAll(p))
        }
        if (p.indexOf(",") > -1) {
            var z = p.split(/,/g), w = [], v = 0, u = z.length;
            for (; v < u; ++v) {
                w = w.concat(c(z[v], n))
            }
            return d(w)
        }
        p = p.replace(" > ", ">").replace(">", " > ");
        var r = p.split(/ /g), o = r.pop(), m = (o.match(e) || i)[1], x = !m && (o.match(g) || i)[1], A = !m && (o.match(k) || i)[1], q = o.match(h) || i, y = q[1] || null, t = q[3] || null, s;
        if (x && !A && n.getElementsByClassName) {
            s = b(n.getElementsByClassName(x))
        } else {
            s = !m && b(n.getElementsByTagName(A || "*"));
            if (x) {
                s = j(s, "className", x)
            }
            if (y) {
                s = j(s, y, t)
            }
            if (m) {
                var B = n.getElementById(m);
                return B ? [B] : []
            }
        }
        return r[0] && s[0] ? a(r, s) : s
    }

    function b(p) {
        try {
            return slice.call(p)
        } catch (o) {
            var m = [], n = 0, l = p.length;
            for (; n < l; ++n) {
                m[n] = p[n]
            }
            return m
        }
    }

    function a(x, q, o) {
        var s = x.pop();
        if (s === ">") {
            return a(x, q, true)
        }
        var t = [], l = -1, m = (s.match(e) || i)[1], u = !m && (s.match(g) || i)[1], w = !m && (s.match(k) || i)[1], v = -1, n, y, p;
        w = w && w.toLowerCase();
        while ((n = q[++v])) {
            y = n.parentNode;
            do {
                p = !w || w === "*" || w === y.nodeName.toLowerCase();
                p = p && (!m || y.id === m);
                p = p && (!u || RegExp("(^|\\s)" + u + "(\\s|$)").test(y.className));
                if (o || p) {
                    break
                }
            } while ((y = y.parentNode));
            if (p) {
                t[++l] = n
            }
        }
        return x[0] && t[0] ? a(x, t) : t
    }

    var d = (function () {
        var l = new Date().getTime();
        var m = (function () {
            var o = 1;
            return function (q) {
                var p = q[l], n = o++;
                if (!p) {
                    q[l] = n;
                    return true
                }
                return false
            }
        })();
        return function (n) {
            var t = n.length, o = [], s = -1, p = 0, q;
            for (; p < t; ++p) {
                q = n[p];
                if (m(q)) {
                    o[++s] = q
                }
            }
            l += 1;
            return o
        }
    })();

    function j(p, s, u) {
        var m = RegExp("(^|\\s)" + u + "(\\s|$)");
        var t = function (w) {
            var r = s == "className" ? w.className : w.getAttribute(s);
            if (r) {
                if (u) {
                    if (m.test(r)) {
                        return true
                    }
                } else {
                    return true
                }
            }
            return false
        };
        var o = -1, n, l = -1, q = [];
        while ((n = p[++o])) {
            if (t(n)) {
                q[++l] = n
            }
        }
        return q
    }

    return c
})(FMs));
FMs.add("browser", (function (e) {
    var c = {
        msie: /msie/.test(e) && !/opera/.test(e),
        opera: /opera/.test(e),
        safari: /webkit/.test(e) && !/chrome/.test(e),
        firefox: /firefox/.test(e),
        chrome: /chrome/.test(e),
        ipad: (/ipad/).test(e),
        iphone: (/iphone/).test(e)
    };
    var a = "";
    for (var d in c) {
        if (c[d]) {
            a = "safari" == d ? "version" : d;
            break
        }
    }
    c.version = a && RegExp("(?:" + a + ")[\\/: ]([\\d.]+)").test(e) ? RegExp.$1 : "0";
    c.ie = c.msie;
    c.ie6 = c.msie && parseInt(c.version, 10) == 6;
    c.ie7 = c.msie && parseInt(c.version, 10) == 7;
    c.ie8 = c.msie && parseInt(c.version, 10) == 8;
    c.ie9 = c.msie && parseInt(c.version, 10) == 9;
    c.support = function () {
        var f = document.createElement("div");
        f.style.display = "none";
        f.innerHTML = "<a href='#' style='color:red;float:left;opacity:.55;'>a</a>";
        var b = f.getElementsByTagName("a")[0];
        return {opacity: /^0.55$/.test(b.style.opacity), cssFloat: !!b.style.cssFloat}
    }();
    return c
})(window.navigator.userAgent.toLowerCase()));
(function (h, d) {
    var f = /alpha\([^)]*\)/, e = /float/i, n = /opacity=([^)]*)/, i = h.browser.support.cssFloat ? "cssFloat" : "styleFloat", m = /([A-Z])/g, b = /-([a-z])/ig, c = function (o, p) {
        return p.toUpperCase()
    }, a = document.defaultView && document.defaultView.getComputedStyle, g = /^-?\d+(?:px)?$/i, l = /^-?\d/;
    h.add({
        cssHooks: {}, getStyle: function (u, r, v, p) {
            var q, t = u.style, s, o = FMs.cssHooks[r];
            if (!h.browser.support.opacity && r === "opacity" && u.currentStyle) {
                q = n.test(u.currentStyle.filter || "") ? (parseFloat(RegExp.$1) / 100) + "" : "";
                return q === "" ? "1" : q
            }
            if (e.test(r)) {
                r = i
            }
            if (o && "get" in o && (q = o.get(u, p)) !== d) {
                return q
            } else {
                if (!v && t && t[r]) {
                    q = t[r]
                } else {
                    q = k(u, r, v)
                }
            }
            return q
        }, setStyle: function () {
            var t = arguments, r = t[0];
            if (typeof t[1] != "string") {
                for (var w in t[1]) {
                    h.setStyle.apply(h, [r, w, t[1][w]])
                }
                return
            }
            var p = t[1], v = t[2];
            var o = r.style || r, u = v !== d;
            if (!h.browser.support.opacity && p === "opacity") {
                if (u) {
                    o.zoom = 1;
                    var s = parseInt(v, 10) + "" === "NaN" ? "" : "alpha(opacity=" + v * 100 + ")";
                    var q = o.filter || "";
                    o.filter = f.test(q) ? q.replace(f, s) : s
                }
                return o.filter && o.filter.indexOf("opacity=") >= 0 ? (parseFloat(n.exec(o.filter)[1]) / 100) + "" : ""
            }
            if (e.test(p)) {
                p = i
            }
            p = p.replace(b, c);
            if (u) {
                o[p] = v
            }
        }
    });
    function j(s, q, p) {
        var u = q === "width" ? s.offsetWidth : s.offsetHeight, t = q === "width" ? ["Left", "Right"] : ["Top", "Bottom"], r = 0, o = t.length;
        if (u > 0) {
            if (p !== "border") {
                for (; r < o; r++) {
                    if (!p) {
                        u -= parseFloat(FMs.getStyle(s, "padding" + t[r])) || 0
                    }
                    if (p === "margin") {
                        u += parseFloat(FMs.getStyle(s, p + t[r])) || 0
                    } else {
                        u -= parseFloat(FMs.getStyle(s, "border" + t[r] + "Width")) || 0
                    }
                }
            }
            return u + "px"
        }
        u = k(s, q, q);
        if (u < 0 || u == null) {
            u = s.style[q] || 0
        }
        u = parseFloat(u) || 0;
        if (p) {
            for (; r < o; r++) {
                u += parseFloat(FMs.getStyle(s, "padding" + t[r])) || 0;
                if (p !== "padding") {
                    u += parseFloat(FMs.getStyle(s, "border" + t[r] + "Width")) || 0
                }
                if (p === "margin") {
                    u += parseFloat(FMs.getStyle(s, p + t[r])) || 0
                }
            }
        }
        return u + "px"
    }

    function k(s, p, q) {
        var o = s.style, w;
        if (a) {
            if (e.test(p)) {
                p = "float"
            }
            p = p.replace(m, "-$1").toLowerCase();
            var v = s.ownerDocument.defaultView;
            if (!v) {
                return null
            }
            var x = v.getComputedStyle(s, null);
            if (x) {
                w = x.getPropertyValue(p)
            }
            if (p === "opacity" && w === "") {
                w = "1"
            }
        } else {
            if (s.currentStyle) {
                var t = p.replace(b, c);
                w = s.currentStyle[p] || s.currentStyle[t];
                if (!g.test(w) && l.test(w)) {
                    var r = o.left, u = s.runtimeStyle.left;
                    s.runtimeStyle.left = s.currentStyle.left;
                    o.left = t === "fontSize" ? "1em" : (w || 0);
                    w = o.pixelLeft + "px";
                    o.left = r;
                    s.runtimeStyle.left = u
                }
            }
        }
        return w
    }

    FMs.each(["height", "width"], function (o) {
        FMs.cssHooks[o] = {
            get: function (q, p) {
                return j(q, o, p)
            }
        }
    });
    FMs.dom.extend(FMs, ["getStyle", "setStyle"])
})(FMs);
(function (f, d) {
    var j = /\s+/, e = /[\n\t\r]/g;
    var b = function (n, k, m) {
        k = k || 1;
        var l = 0;
        for (; n; n = n[m]) {
            if (n.nodeType == 1 && ++l == k) {
                break
            }
        }
        return n
    }, g = function (m, l) {
        var k = [];
        for (; m; m = m.nextSibling) {
            if (m.nodeType == 1 && m != l) {
                k.push(m)
            }
        }
        return k
    };
    var c = {}, i = "FMs", a = 0;
    var h = document.documentElement.textContent !== d ? "textContent" : "innerText";
    f.add({
        create: function (n, l, o) {
            var o = o || document;
            var k = o.createElement(n);
            if (l) {
                for (var m in l) {
                    var p = l[m];
                    if (m == "className") {
                        f.addClass(k, p);
                        continue
                    }
                    k.setAttribute(m, p)
                }
            }
            return k
        }, prependChild: function (l, k) {
            if (l.nodeType == 1) {
                l.insertBefore(k, l.firstChild)
            }
        }, insertAfter: function (n, k) {
            var l = n.parentNode, m = l.lastChild;
            if (m == n) {
                l.appendChild(k)
            } else {
                l.insertBefore(k, n.nextSibling)
            }
        }, hasClass: function (m, k) {
            var l = " ", n = l + m.className + l;
            return n.indexOf(l + k + l) != -1
        }, addClass: function (l, k) {
            if (!fm.hasClass(l, k)) {
                l.className = fm.trim(l.className + " " + k)
            }
        }, removeClass: function (n, l) {
            var m = (" " + n.className + " ").replace(e, " "), o = l.split(j);
            for (var p = 0, k = o.length; p < k; p++) {
                m = m.replace(" " + o[p] + " ", " ")
            }
            n.className = fm.trim(m)
        }, nextElem: function (k) {
            return b(k, 2, "nextSibling")
        }, prevElem: function (k) {
            return b(k, 2, "previousSibling")
        }, parentElems: function (k) {
            return fm.walk(k, "parentNode")
        }, nextElems: function (k) {
            return fm.walk(k, "nextSibling")
        }, prevElems: function (k) {
            return fm.walk(k, "previousSibling")
        }, siblings: function (k) {
            return g(k.parentNode.firstChild, k)
        }, walk: function (n, l, m) {
            var k = [], p = n[l];
            while (p && p.nodeType !== 9) {
                if (p.nodeType === 1) {
                    if (m) {
                        var o = m(p);
                        if (o === false) {
                            p = p[l];
                            continue
                        }
                    }
                    k.push(p)
                }
                p = p[l]
            }
            return k
        }, childElems: function (k) {
            return g(k.firstChild)
        }, getText: function (k) {
            return k[h]
        }, setText: function (k, l) {
            if (l !== d) {
                k[h] = l
            }
        }, setData: function (l, k, m) {
            var n = l[i];
            if (n === d) {
                n = a++;
                l[i] = n
            }
            if (c[n] === d) {
                c[n] = {}
            }
            return c[n][k] = m
        }, getData: function (l, k) {
            var n = l[i], m = c[n] && c[n][k];
            if (m === d) {
                m = null
            }
            return m
        }, removeData: function (l, k) {
            var m = l[i];
            if (m !== d && c[m]) {
                delete c[m][k]
            }
        }
    });
    FMs.dom.extend(FMs, ["prependChild", "insertAfter", "hasClass", "addClass", "removeClass", "nextElem", "prevElem", "parentElems", "nextElems", "prevElems", "siblings", "childElems", "setData", "getData", "removeData", "walk", "getText", "setText"])
})(FMs);
(function (e, f) {
    var c = 0, d = "FMsEventID", b = "FMsEvents", a = [];
    e.add({
        addEvent: function (l, k, j) {
            var h;
            if (!e.getData(l, b)) {
                e.setData(l, b, {})
            }
            h = e.getData(l, b);
            if (!h[k]) {
                h[k] = {}
            }
            var g = function (p) {
                var p = p || window.event, n = this;
                if (p !== f) {
                    var o = FMs.extend({}, p);
                    p = fm.eventTarget(p)
                }
                j.apply(l, [p, o])
            };
            var m = function (s) {
                var p = function (u, t) {
                    try {
                        return u.contains ? u != t && u.contains(t) : !!(u.compareDocumentPosition(t) & 16)
                    } catch (v) {
                    }
                };
                var s = s || window.event, o = this;
                if (s !== f) {
                    var q = FMs.extend({}, s);
                    s = fm.eventTarget(s);
                    var r = s.target, n = s.relatedTarget;
                    if (!p(o, n) && o != n) {
                        j.apply(l, [s, q])
                    }
                }
            };
            g.fn = j;
            j[b] = g;
            var i = c++;
            g[d] = i;
            h[k][i] = g;
            if (l.attachEvent) {
                l.attachEvent("on" + k, g)
            } else {
                if (k == "mouseenter") {
                    l.addEventListener("mouseover", m, false)
                } else {
                    if (k == "mouseleave") {
                        l.addEventListener("mouseout", m, false)
                    } else {
                        l.addEventListener(k, g, false)
                    }
                }
            }
        }, removeEvent: function (l, k, j) {
            var g = e.getData(l, b);
            if (!k && !j) {
                var i = e.getEvent(l);
                if (i) {
                    fm.each(i, function (m, n) {
                        e.removeEvent(l, n)
                    })
                }
            }
            if (!j) {
                var i = e.getEvent(l, k);
                if (i) {
                    fm.each(i, function (m) {
                        e.removeEvent(l, k, m.fn)
                    })
                }
                return
            }
            var h = j[b][d];
            j = g[k][h];
            if (l.detachEvent) {
                l.detachEvent("on" + k, j)
            } else {
                l.removeEventListener(k, j, false)
            }
            delete g[k][h]
        }, getEvent: function (k, j, l) {
            var i = {}, g, h = false;
            if (!e.getData(k, b)) {
                e.setData(k, b, {})
            }
            g = e.getData(k, b);
            if (g) {
                e.each(g, function (n, m) {
                    if (j && j != m) {
                        return true
                    }
                    i[m] = i[m] || [];
                    e.each(n, function (o) {
                        h = true;
                        i[m].push(o)
                    })
                })
            }
            return h ? (j ? i[j] : i) : null
        }, cloneEvent: function (j, i, h) {
            var g = e.getEvent(j, h);
            if (g) {
                if (h) {
                    fm.each(g, function (k) {
                        fm.addEvent(i, h, k.fn)
                    })
                } else {
                    fm.each(g, function (k, l) {
                        fm.each(k, function (m) {
                            fm.addEvent(i, l, m.fn)
                        })
                    })
                }
            }
        }, eventTarget: function (i) {
            if (!i.target) {
                i.target = i.srcElement || document
            }
            if (i.target.nodeType === 3) {
                i.target = i.target.parentNode
            }
            if (!i.relatedTarget && i.fromElement) {
                i.relatedTarget = (i.fromElement === i.target) ? i.toElement : i.fromElement
            }
            if (i.which === f) {
                i.which = (i.charCode !== f) ? i.charCode : i.keyCode
            }
            if (i.pageX == null && i.clientX != null) {
                var h = document.documentElement, g = document.body;
                i.pageX = i.clientX + (h && h.scrollLeft || g && g.scrollLeft || 0) - (h && h.clientLeft || g && g.clientLeft || 0);
                i.pageY = i.clientY + (h && h.scrollTop || g && g.scrollTop || 0) - (h && h.clientTop || g && g.clientTop || 0)
            }
            if (!i.preventDefault) {
                i.preventDefault = function () {
                    i.returnValue = false
                }
            }
            if (!i.stopPropagation) {
                i.stopPropagation = function (j) {
                    i.cancelBubble = true
                }
            }
            return i
        }
    });
    FMs.dom.extend(FMs, ["addEvent", "removeEvent", "getEvent", "cloneEvent"])
})(FMs);
(function (a, b) {
    a.add({
        timers: {}, stopTimer: function () {
            a.each(this.timers, function (c) {
                c.stop()
            })
        }, startTimer: function () {
            a.each(this.timers, function (c) {
                c.start()
            })
        }, pauseTimer: function () {
            a.each(this.timers, function (c) {
                c.pause()
            })
        }, addTimer: function (g, e, h, f) {
            var d = this, f = f || [], c = {
                fn: g, repeatCount: 0, start: function () {
                    if (h !== b && this.run === false) {
                        this.startTime += d.now() - this.restTime
                    } else {
                        this.startTime = d.now()
                    }
                    this.run = true
                }, pause: function () {
                    if (this.run != false && h !== b) {
                        this.restTime = d.now()
                    }
                    this.run = false
                }, stop: function () {
                    window.clearInterval(this.id);
                    delete d.timers[this.id]
                }, __init: function () {
                    c.id = window.setInterval(function () {
                        if (c.run === false) {
                            return
                        }
                        g.apply(c, f);
                        c.repeatCount++;
                        if (h) {
                            var i = d.now() - c.startTime;
                            if (i > h) {
                                c.oncomplete && c.oncomplete();
                                c.stop()
                            }
                        }
                    }, e);
                    c.start();
                    d.timers[c.id] = c
                }
            };
            c.__init();
            return c
        }, now: function () {
            return new Date().getTime()
        }
    })
})(FMs);
(function (d, g) {
    var f = document, c = encodeURIComponent, e = decodeURIComponent;
    var a = {
        get: function (j) {
            var i, h;
            if (b(j)) {
                if ((h = f.cookie.match("(?:^| )" + j + "(?:(?:=([^;]*))|;|$)"))) {
                    i = h[1] ? e(h[1]) : ""
                }
            }
            return i
        }, set: function (j, o, h, k, m, l) {
            var n = c(o), i = h;
            if (typeof i === "number") {
                i = new Date();
                i.setTime(i.getTime() + h * 86400000)
            }
            if (i instanceof Date) {
                n += "; expires=" + i.toUTCString()
            }
            if (b(k)) {
                n += "; domain=" + k
            }
            if (b(m)) {
                n += "; path=" + m
            }
            if (l) {
                n += "; secure"
            }
            f.cookie = j + "=" + n
        }, remove: function (h, i, k, j) {
            d.setCookie(h, "", 0, i, k, j)
        }
    };
    d.add({cookie: a, getCookie: a.get, setCookie: a.set, removeCookie: a.remove});
    function b(h) {
        return d.isString(h) && h !== ""
    }
})(FMs);
(function (c, h) {
    var g = Array.prototype.slice, f = Object.prototype.toString, d = function (i, j, l, k) {
        this.elem = i;
        this.duration = j;
        this.easing = l;
        this.callback = function () {
            var m = c.getData(i, "timers");
            if (c.isArray(m) && m.length > 0) {
                m.shift()
            }
            k && k.call(this);
            c.dequeue(i)
        };
        this.clips = []
    }, b = function (l, m, i, j, k) {
        this.elem = l;
        this.start = m;
        this.end = i;
        this.name = j;
        this.unit = k
    };
    var e = {visibility: "hidden", display: "block"};
    var a = function (j, l, k) {
        var i;
        if (c.isNumber(j) && c.isFunction(l)) {
            k = l;
            l = i
        } else {
            if (c.isString(j)) {
                if (c.isFunction(l)) {
                    k = l
                }
                l = j;
                j = i
            } else {
                if (c.isFunction(j)) {
                    k = j;
                    j = i;
                    l = i
                }
            }
        }
        return {duration: j, easing: l, callback: k}
    };
    c.add({
        animate: function (l, j, m, s, t, o) {
            var k = arguments, u = [], r, q;
            for (var n = 2; n < k.length; n++) {
                if (c.isNumber(k[n])) {
                    r = k[n]
                }
                if (c.isString(k[n])) {
                    q = k[n]
                }
                if (c.isFunction(k[n])) {
                    u.push(k[n])
                }
            }
            t = u[0];
            o = u[1];
            m = r || 1000;
            s = q || "swing";
            c.queue(l, function () {
                if (o && c.isFunction(o)) {
                    if (o() === false) {
                        c.dequeue(l);
                        return
                    }
                }
                var i = new d(l, m, s, t);
                c.each(j, function (A, C) {
                    var y = A.toString().match(/^([+-]=)?([\d+-.]+)(.*)$/);
                    if (y) {
                        var p, z = C.toLowerCase();
                        if (z == "scrollleft" || z == "scrolltop") {
                            p = true
                        }
                        var x = parseFloat(y[2]), B = y[3], v = p ? l[C] : parseFloat(c.getStyle(l, C));
                        if (!B) {
                            if (C.search(/opacity/i) == -1) {
                                B = "px"
                            }
                        }
                        var w = new b(l, v, x, C, B);
                        w.nonStyle = p;
                        i.clips.push(w);
                        lastProp = C
                    }
                });
                i.init()
            });
            return l
        }, easing: {
            linear: function (k, l, i, j) {
                return i + j * k
            }, swing: function (k, l, i, j) {
                return ((-Math.cos(k * Math.PI) / 2) + 0.5) * j + i
            }, quadIn: function (k, l, i, j) {
                return k * k * j + i
            }, quadOut: function (k, l, i, j) {
                return -k * k * j + 2 * k * j + i
            }, cubicIn: function (k, l, i, j) {
                return k * k * k * j + i
            }, cubicOut: function (k, l, i, j) {
                return j * ((k -= 1) * k * k + 1) + i
            }
        }, queue: function (j, k) {
            var i = c.getData(j, "queue");
            if (c.isArray(i)) {
                i.push(k)
            } else {
                i = [k];
                c.setData(j, "queue", i)
            }
            if (i[0] !== "inprogress") {
                this.dequeue(j)
            }
            return i
        }, dequeue: function (l) {
            var j = this;
            var i = c.getData(l, "queue"), k = i && i.shift();
            if (k === "inprogress") {
                k = i.shift()
            }
            if (k) {
                i.unshift("inprogress");
                k.call(l, function () {
                    j.dequeue(l)
                })
            }
        }, pause: function (i) {
            var j = c.getData(i, "timers");
            if (c.isArray(j) && j[0]) {
                j[0].pause()
            }
        }, begin: function (i) {
            var j = c.getData(i, "timers");
            if (c.isArray(j) && j[0]) {
                j[0].start()
            }
        }, end: function (i) {
            c.setData(i, "queue", []);
            var j = c.getData(i, "timers");
            if (c.isArray(j) && j[0]) {
                j[0].stop()
            }
            c.removeData(i, "timers")
        }, fadeTo: function (j, i, k, l) {
            c.animate(j, {opacity: i}, k, "linear", l)
        }, show: function (i, j, k) {
            c.setStyle(i, "display", "block");
            if (!j || !c.isNumber(j)) {
                return
            }
            c.fadeTo(i, 1, j, k)
        }, hide: function (i, j, k) {
            if (!j || !c.isNumber(j)) {
                c.setStyle(i, "display", "none");
                return
            }
            c.fadeTo(i, 0, j, function () {
                c.setStyle(i, "display", "none");
                k && k.call(i)
            })
        }, slideUp: function (k, l, o, n) {
            var i;
            var j = a(l, o, n);
            l = j.duration;
            o = j.easing;
            n = j.callback;
            c.animate(k, {height: 0}, l, o, function () {
                c.setStyle(k, {display: "none", height: i});
                c.setStyle(k, "overflow", "visible");
                if (n && c.isFunction(n)) {
                    n.call(k)
                }
            }, m);
            function m() {
                if (c.getStyle(k, "display") == "none") {
                    return false
                }
                i = c.getStyle(k, "height");
                c.setStyle(k, "overflow", "hidden")
            }
        }, slideDown: function (i, j, l, n) {
            if (c.getStyle(i, "display") != "none") {
                return
            }
            var p = a(j, l, n);
            j = p.duration;
            l = p.easing;
            n = p.callback;
            var o, q = {height: 0, overflow: "hidden"}, k = {}, m = {overflow: c.getStyle(i, "overflow")};
            c.each(e, function (s, r) {
                k[r] = c.getStyle(i, r)
            });
            c.setStyle(i, e);
            o = c.getStyle(i, "height");
            c.setStyle(i, k);
            c.setStyle(i, q);
            c.setStyle(i, "display", "block");
            c.animate(i, {height: o}, j, l, function () {
                c.setStyle(i, m);
                if (n && c.isFunction(n)) {
                    n.call(i)
                }
            })
        }
    });
    d.prototype = {
        init: function () {
            var i = this;
            i.timer = c.addTimer(function (k) {
                var m = c.now() - this.startTime, l = m / i.duration;
                c.each(i.clips, function (o, n) {
                    var p = c.easing[i.easing](l, m, 0, 1);
                    o.pos = o.start + ((o.end - o.start) * p)
                });
                i.update()
            }, 13, i.duration);
            i.timer.oncomplete = function () {
                c.each(i.clips, function (k) {
                    k.pos = k.end
                });
                i.update();
                i.callback.call(i.elem)
            };
            var j = c.getData(i.elem, "timers");
            if (c.isArray(j)) {
                j.push(i.timer)
            } else {
                c.setData(i.elem, "timers", [i.timer])
            }
        }, update: function () {
            c.each(this.clips, function (i) {
                if (i.nonStyle) {
                    i.elem[i.name] = i.pos
                } else {
                    c.setStyle(i.elem, i.name, i.pos + i.unit)
                }
            })
        }
    };
    FMs.dom.extend(FMs, ["animate", "show", "hide", "slideUp", "slideDown", "fadeTo", "begin", "pause", "end"])
})(FMs);
fm.add("tab", function (b) {
    var a = function (c) {
        this.config = fm.extend(c, a.config, false);
        this.init()
    };
    a.config = {
        effect: "base",
        isIpad: typeof(window.ontouchstart) !== "undefined",
        direction: "x",
        autoPlay: false,
        playTo: 0,
        type: "mouseover",
        curClass: "current",
        link: false,
        stay: 2000,
        delay: 200,
        lazy: false,
        merge: false,
        animateTime: 300,
        easing: "swing",
        oninit: function () {
        },
        onchange: function () {
        }
    };
    a.prototype = {
        init: function () {
            var e = this, k = e.config;
            if (!k.target.length || k.target.length <= 1) {
                return
            }
            e.target = k.target;
            e.length = k.target.length;
            e.effect = a.effect[k.effect];
            e.wrap = k.target[0].parentNode;
            if (/(:?ul|ol|dl)/i.test(e.wrap.tagName)) {
                e.content = e.wrap;
                e.wrap = e.wrap.parentNode
            } else {
                var j = fm.create("div", {className: "tabContent"});
                fm.each(k.target, function (c) {
                    j.appendChild(c)
                });
                e.content = e.wrap.appendChild(j)
            }
            if (k.control !== false) {
                k.control = k.control || fm.getElems(".control", e.wrap);
                if (!k.control || k.control.length < 1) {
                    var g = fm.create("ul", {className: "control"}), h = "";
                    for (var f = 0; f < e.length; f++) {
                        h += '<li><a href="#">' + (f + 1) + "</a></li>"
                    }
                    g.innerHTML = h;
                    g = e.wrap.appendChild(g);
                    k.control = fm.childElems(g)
                }
                var d = [];
                fm.each(k.control, function (l, c) {
                    if (fm.hasClass(l, "next")) {
                        e.nextBtn = l
                    } else {
                        if (fm.hasClass(l, "prev")) {
                            e.prevBtn = l
                        } else {
                            d.push(l)
                        }
                    }
                });
                e.control = d
            }
            if (k.nextBtn) {
                e.nextBtn = k.nextBtn
            }
            if (k.prevBtn) {
                e.prevBtn = k.prevBtn
            }
            k.oninit.call(e);
            if (e.effect) {
                e.effect.oninit.call(e)
            }
            e.playTo(k.playTo);
            if (k.autoPlay) {
                e.play()
            }
            e.attach()
        }, attach: function () {
            var f = this, h = f.config;
            if (h.autoPlay) {
                var e = [f.wrap], d = f.control && f.control[0].parentNode;
                if (d) {
                    e.push(d)
                }
                fm.each(e, function (c) {
                    fm.addEvent(c, "mouseover", function (i) {
                        f.stop()
                    });
                    fm.addEvent(c, "mouseout", function (i) {
                        f.play()
                    })
                })
            }
            if (h.effect === "slide" && h.isIpad) {
                fm.each(f.target, function (c) {
                    c.addEventListener("touchstart", function (i) {
                        f.stop();
                        f.iPadDistance = (h.direction === "x" ? i.touches[0].pageX : i.touches[0].pageY);
                        f.srcScrollNum = f.contentWrap[f.prop]
                    }, false);
                    c.addEventListener("touchmove", function (j) {
                        f.iPadLastDistance = (h.direction === "x" ? j.touches[0].pageX : j.touches[0].pageY);
                        var i = f.iPadLastDistance - f.iPadDistance;
                        f.contentWrap[f.prop] = f.srcScrollNum - i;
                        j.preventDefault()
                    }, false);
                    c.addEventListener("touchend", function (k) {
                        if (f.iPadLastDistance === undefined) {
                            return
                        }
                        var l = f.iPadLastDistance - f.iPadDistance > 0 ? false : true;
                        var i = f.curPage === 0, j = f.curPage === f.length - 1;
                        if (!j && l) {
                            f.next()
                        } else {
                            if (!i && !l) {
                                f.prev()
                            }
                        }
                        f.play();
                        k.preventDefault();
                        f.iPadLastDistance = undefined
                    }, false)
                })
            }
            var g = h.type == "mouseover";
            if (h.control) {
                fm.each(f.control, function (j, c) {
                    fm.addEvent(j, h.type, function () {
                        var i = g ? h.delay : 0;
                        if (f.delayTimer) {
                            window.clearTimeout(f.delayTimer)
                        }
                        f.delayTimer = window.setTimeout(function () {
                            f.playTo(c)
                        }, i)
                    });
                    if (g) {
                        fm.addEvent(j, "mouseout", function () {
                            if (f.delayTimer) {
                                window.clearTimeout(f.delayTimer)
                            }
                        });
                        fm.addEvent(j, "click", function () {
                            f.playTo(c)
                        })
                    }
                    if (!f.config.link) {
                        fm.addEvent(j, "click", function (i) {
                            i.preventDefault()
                        })
                    }
                })
            }
            if (f.nextBtn) {
                fm.addEvent(f.nextBtn, "click", function (c) {
                    f.next();
                    c.preventDefault()
                })
            }
            if (f.prevBtn) {
                fm.addEvent(f.prevBtn, "click", function (c) {
                    f.prev();
                    c.preventDefault()
                })
            }
        }, playTo: function (i) {
            var l = this, j = l.config, g = l.curPage !== window.undefined, h;
            if (g && l.curPage === i) {
                return
            }
            l.prevPage = l.curPage;
            if (j.effect == "slide" && j.merge) {
                h = f(l.curPage);
                l.curPage = i;
                i = f(i)
            } else {
                h = l.curPage;
                i = l.curPage = f(i)
            }
            if (l.control && i !== h) {
                var d = l.control[i], k = l.control[h];
                if (d) {
                    fm.addClass(d, l.config.curClass)
                }
                if (k) {
                    fm.removeClass(k, l.config.curClass)
                }
            }
            if (j.lazy) {
                var e = l.target[l.curPage];
                if (e && !e.parsed) {
                    l._lazyload(e)
                }
            }
            l.config.onchange.call(l, i);
            if (l.effect) {
                l.effect.onchange.call(l)
            }
            function f(n) {
                if (n >= l.length) {
                    n %= l.length
                }
                if (n < 0) {
                    var c = n % l.length;
                    n = c === 0 ? 0 : (c + l.length)
                }
                return n
            }
        }, next: function () {
            this.playTo(this.curPage + 1)
        }, prev: function () {
            this.playTo(this.curPage - 1)
        }, play: function () {
            var d = this, e = d.config;
            if (d.timer) {
                d.stop()
            }
            d.timer = window.setInterval(function () {
                var c = d.curPage + 1;
                d.playTo(c)
            }, e.stay)
        }, stop: function () {
            window.clearInterval(this.timer)
        }, _lazyload: function (d) {
            var c = fm.getElem("textarea", d);
            if (c) {
                d.innerHTML = c.value;
                d.parsed = true
            }
        }
    };
    a.effect = {};
    return a
}(fm));
fm.extend(fm.tab.effect, {
    base: {
        oninit: function () {
            var a = this, b = a.config;
            fm.each(a.target, function (c) {
                if (a.target[b.playTo] != c) {
                    fm.setStyle(c, "display", "none")
                }
            })
        }, onchange: function () {
            var b = this, a = b.prevPage === window.undefined ? null : b.target[b.prevPage], c = b.target[b.curPage];
            if (a) {
                fm.setStyle(a, "display", "none")
            }
            fm.setStyle(c, "display", "block")
        }
    }, fade: {
        oninit: function () {
            var a = this, b = a.config;
            fm.setStyle(a.content, "position", "relative");
            fm.each(a.target, function (d, c) {
                fm.setData(d, "index", c);
                fm.setStyle(d, {opacity: 0, position: "absolute", zIndex: c})
            })
        }, onchange: function () {
            var b = this, a = b.prevPage === window.undefined ? null : b.target[b.prevPage], c = b.target[b.curPage];
            if (a) {
                fm.setStyle(a, "zIndex", fm.getData(c, "index"))
            }
            fm.setStyle(c, "zIndex", b.length);
            fm.setStyle(c, "opacity", 0);
            fm.show(c, b.config.animateTime, function () {
                fm.each(b.target, function (d) {
                    if (d != c) {
                        fm.setStyle(d, "opacity", 0)
                    }
                })
            });
            if (a) {
                fm.hide(a, b.config.animateTime)
            }
            fm.each(b.target, function (d) {
                if (d != c) {
                    fm.end(d)
                }
            })
        }
    }, slide: {
        oninit: function () {
            var a = this, g = a.config;
            var f = a.target[g.playTo];
            var e = fm.create("div", {className: "contentWrap"});
            fm.setStyle(e, {overflow: "hidden", position: "relative"});
            e.appendChild(a.content);
            a.contentWrap = a.wrap.appendChild(e);
            fm.setStyle(a.wrap, "overflow", "hidden");
            if (fm.browser.ie) {
                fm.setStyle(a.contentWrap, "zoom", "1")
            }
            var b = function (c) {
                return parseFloat(fm.getStyle(f, c)) || 0
            };
            if (g.direction == "x") {
                a.prop = "scrollLeft";
                a.boxProp = "width";
                a.step = g.width || f.offsetWidth + b("marginLeft") + b("marginRight")
            } else {
                a.prop = "scrollTop";
                a.boxProp = "height";
                a.step = g.height || f.offsetHeight + b("marginTop") + b("marginBottom")
            }
            fm.setStyle(a.contentWrap, a.boxProp, "100%");
            a.showNum = Math.ceil(parseFloat(fm.getStyle(a.wrap, a.boxProp)) / a.step);
            if (g.merge) {
                var d = [];
                fm.each(a.target, function (c) {
                    var h = c.cloneNode(true);
                    h = a.content.appendChild(h);
                    fm.cloneEvent(c, h);
                    d.push(h)
                });
                a.target = g.target.concat(d);
                a.plus = 0
            }
            if (g.direction == "x") {
                fm.setStyle(a.content, "width", (g.totalWidth || a.step * a.target.length) + "px");
                fm.each(a.target, function (c) {
                    fm.setStyle(c, "float", "left")
                })
            }
        }, onchange: function () {
            var l = this, g = l.config, j = l.prevPage === window.undefined ? 0 : l.prevPage, k = l.curPage, h;
            merge:if (g.merge) {
                var f = k - j, e = Math.abs(f);
                if (f === 0) {
                    break merge
                }
                if (f < 0) {
                    if (k >= l.plus) {
                        break merge
                    }
                    for (var d = 0; d < e; d++) {
                        var b = l.target.pop();
                        fm.prependChild(l.content, b);
                        l.target.unshift(b)
                    }
                } else {
                    if (f > 0) {
                        if (k <= l.target.length + l.plus - l.showNum) {
                            break merge
                        }
                        for (var d = 0; d < e; d++) {
                            var b = l.target.shift();
                            l.content.appendChild(b);
                            l.target.push(b)
                        }
                    }
                }
                l.plus += f;
                l.contentWrap[l.prop] -= f * l.step
            }
            if (g.merge) {
                h = (k - l.plus) * l.step
            } else {
                if (k + l.showNum > l.length) {
                    k = l.length - l.showNum
                }
                h = k * l.step
            }
            var a = {};
            a[l.prop] = h;
            fm.end(l.contentWrap);
            fm.animate(l.contentWrap, a, l.config.animateTime, l.config.easing)
        }
    }
});
var focus = fm.tab.focus = function (a) {
    return new fm.tab(fm.merge(focus.config, a))
};
focus.prototype = fm.tab.prototype;
focus.config = {autoPlay: true, effect: "fade"};
var marquee = fm.tab.marquee = function (a) {
    return new fm.tab(fm.merge(marquee.config, a))
};
marquee.prototype = fm.tab.prototype;
marquee.config = {effect: "slide", easing: "linear", merge: "true", control: false, direction: "y", autoPlay: true};
var scroll = fm.tab.scroll = function (a) {
    return new fm.tab(fm.merge(scroll.config, a))
};
scroll.prototype = fm.tab.prototype;
scroll.config = {effect: "slide", merge: "true", control: false};
fm.add("marquee", function () {
    var a = function (b) {
        this.config = fm.merge(a.config, b);
        this._init()
    };
    a.config = {step: 28, speed: 50, delay: 0};
    a.prototype = {
        _init: function (k, f, h, g) {
            var j = this.config, l, d = false, e = j.target;
            fm.setStyle(e, "overflow", "hidden");
            if (j.height) {
                fm.setStyle(e, "height", j.height + "px")
            }
            e.innerHTML += e.innerHTML;
            e.onmouseover = function () {
                d = true
            };
            e.onmouseout = function () {
                d = false
            };
            e.scrollTop = 0;
            function b() {
                l = setInterval(i, j.speed);
                if (!d) {
                    e.scrollTop += 1
                }
            }

            function i() {
                if (e.scrollTop % j.step != 0) {
                    e.scrollTop += 1;
                    if (e.scrollTop >= e.scrollHeight / 2) {
                        e.scrollTop = 0
                    }
                } else {
                    clearInterval(l);
                    setTimeout(b, j.delay)
                }
            }

            setTimeout(b, j.delay)
        }
    };
    return a
}());