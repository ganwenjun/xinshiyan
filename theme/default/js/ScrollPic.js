var sina = {
	$: function(a) {
		if (document.getElementById) {
			return eval('document.getElementById("' + a + '")')
		} else {
			return eval('document.all.' + a)
		}
	},
	isIE: navigator.appVersion.indexOf("MSIE") != -1 ? true: false,
	addEvent: function(a, b, c) {
		if (a.attachEvent) {
			a.attachEvent("on" + b, c)
		} else {
			a.addEventListener(b, c, false)
		}
	},
	delEvent: function(a, b, c) {
		if (a.detachEvent) {
			a.detachEvent("on" + b, c)
		} else {
			a.removeEventListener(b, c, false)
		}
	},
	readCookie: function(l) {
		var i = "",
		I = l + "=";
		if (document.cookie.length > 0) {
			var a = document.cookie.indexOf(I);
			if (a != -1) {
				a += I.length;
				var b = document.cookie.indexOf(";", a);
				if (b == -1) b = document.cookie.length;
				i = unescape(document.cookie.substring(a, b))
			}
		};
		return i
	},
	writeCookie: function(O, o, l, I) {
		var i = "",
		c = "";
		if (l != null) {
			i = new Date((new Date).getTime() + l * 3600000);
			i = "; expires=" + i.toGMTString()
		};
		if (I != null) {
			c = ";domain=" + I
		};
		document.cookie = O + "=" + escape(o) + i + c
	},
	readStyle: function(i, I) {
		if (i.style[I]) {
			return i.style[I]
		} else if (i.currentStyle) {
			return i.currentStyle[I]
		} else if (document.defaultView && document.defaultView.getComputedStyle) {
			var l = document.defaultView.getComputedStyle(i, null);
			return l.getPropertyValue(I)
		} else {
			return null
		}
	}
};
function ScrollPic(a, b, c, d, e) {
	this.scrollContId = a;
	this.arrLeftId = b;
	this.arrRightId = c;
	this.dotListId = d;
	this.listType = e;
	this.dotClassName = "dotItem";
	this.dotOnClassName = "dotItemOn";
	this.dotObjArr = [];
	this.listEvent = "onclick";
	this.circularly = true;
	this.pageWidth = 0;
	this.frameWidth = 0;
	this.speed = 10;
	this.space = 10;
	this.upright = false;
	this.pageIndex = 0;
	this.autoPlay = true;
	this.autoPlayTime = 5;
	this._autoTimeObj;
	this._scrollTimeObj;
	this._state = "ready";
	this.stripDiv = document.createElement("DIV");
	this.listDiv01 = document.createElement("DIV");
	this.listDiv02 = document.createElement("DIV")
};
ScrollPic.prototype.version = "1.20";
ScrollPic.prototype.author = "mengjia";
ScrollPic.prototype.initialize = function() {
	var a = this;
	if (!this.scrollContId) {
		throw new Error("必须指定scrollContId.");
		return
	};
	this.scrollContDiv = sina.$(this.scrollContId);
	if (!this.scrollContDiv) {
		throw new Error("scrollContId不是正确的对象.(scrollContId = \"" + this.scrollContId + "\")");
		return
	};
	this.scrollContDiv.style[this.upright ? 'height': 'width'] = this.frameWidth + "px";
	this.scrollContDiv.style.overflow = "hidden";
	this.listDiv01.innerHTML = this.scrollContDiv.innerHTML;
	this.scrollContDiv.innerHTML = "";
	this.scrollContDiv.appendChild(this.stripDiv);
	this.stripDiv.appendChild(this.listDiv01);
	if (this.circularly) {
		this.stripDiv.appendChild(this.listDiv02);
		this.listDiv02.innerHTML = this.listDiv01.innerHTML
	};
	this.stripDiv.style.overflow = "hidden";
	this.stripDiv.style.zoom = "1";
	this.stripDiv.style[this.upright ? 'height': 'width'] = "32766px";
	if (!this.upright) {
		this.listDiv01.style.cssFloat = "left";
		this.listDiv01.style.styleFloat = "left";
		this.listDiv01.style.overflow = "hidden"
	};
	this.listDiv01.style.zoom = "1";
	if (this.circularly && !this.upright) {
		this.listDiv02.style.cssFloat = "left";
		this.listDiv02.style.styleFloat = "left";
		this.listDiv02.style.overflow = "hidden"
	};
	this.listDiv02.style.zoom = "1";
	sina.addEvent(this.scrollContDiv, "mouseover",
	function() {
		a.stop()
	});
	sina.addEvent(this.scrollContDiv, "mouseout",
	function() {
		a.play()
	});
	if (this.arrLeftId) {
		this.arrLeftObj = sina.$(this.arrLeftId);
		if (this.arrLeftObj) {
			sina.addEvent(this.arrLeftObj, "mousedown",
			function() {
				a.rightMouseDown()
			});
			sina.addEvent(this.arrLeftObj, "mouseup",
			function() {
				a.rightEnd()
			});
			sina.addEvent(this.arrLeftObj, "mouseout",
			function() {
				a.rightEnd()
			})
		}
	};
	if (this.arrRightId) {
		this.arrRightObj = sina.$(this.arrRightId);
		if (this.arrRightObj) {
			sina.addEvent(this.arrRightObj, "mousedown",
			function() {
				a.leftMouseDown()
			});
			sina.addEvent(this.arrRightObj, "mouseup",
			function() {
				a.leftEnd()
			});
			sina.addEvent(this.arrRightObj, "mouseout",
			function() {
				a.leftEnd()
			})
		}
	};
	if (this.dotListId) {
		this.dotListObj = sina.$(this.dotListId);
		this.dotListObj.innerHTML = "";
		if (this.dotListObj) {
			var b = Math.round(this.listDiv01[this.upright ? 'offsetHeight': 'offsetWidth'] / this.frameWidth + 0.4),
			i,
			tempObj;
			for (i = 0; i < b; i++) {
				tempObj = document.createElement("span");
				this.dotListObj.appendChild(tempObj);
				this.dotObjArr.push(tempObj);
				if (i == this.pageIndex) {
					tempObj.className = this.dotOnClassName
				} else {
					tempObj.className = this.dotClassName
				};
				if (this.listType == 'number') {
					tempObj.innerHTML = i + 1
				};
				tempObj.title = "第" + (i + 1) + "页";
				tempObj.num = i;
				tempObj[this.listEvent] = function() {
					a.pageTo(this.num)
				}
			}
		}
	};
	this.scrollContDiv[this.upright ? 'scrollTop': 'scrollLeft'] = 0;
	if (this.autoPlay) {
		this.play()
	}
};
ScrollPic.prototype.leftMouseDown = function() {
	if (this._state != "ready") {
		return
	};
	var a = this;
	this._state = "floating";
	this._scrollTimeObj = setInterval(function() {
		a.moveLeft()
	},
	this.speed)
};
ScrollPic.prototype.rightMouseDown = function() {
	if (this._state != "ready") {
		return
	};
	var a = this;
	this._state = "floating";
	this._scrollTimeObj = setInterval(function() {
		a.moveRight()
	},
	this.speed)
};
ScrollPic.prototype.moveLeft = function() {
	if (this.circularly) {
		if (this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] + this.space >= this.listDiv01[(this.upright ? 'scrollHeight': 'scrollWidth')]) {
			this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] = this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] + this.space - this.listDiv01[(this.upright ? 'scrollHeight': 'scrollWidth')]
		} else {
			this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] += this.space
		}
	} else {
		if (this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] + this.space >= this.listDiv01[(this.upright ? 'scrollHeight': 'scrollWidth')] - this.frameWidth) {
			this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] = this.listDiv01[(this.upright ? 'scrollHeight': 'scrollWidth')] - this.frameWidth;
			this.leftEnd()
		} else {
			this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] += this.space
		}
	};
	this.accountPageIndex()
};
ScrollPic.prototype.moveRight = function() {
	if (this.circularly) {
		if (this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] - this.space <= 0) {
			this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] = this.listDiv01[(this.upright ? 'scrollHeight': 'scrollWidth')] + this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] - this.space
		} else {
			this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] -= this.space
		}
	} else {
		if (this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] - this.space <= 0) {
			this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] = 0;
			this.rightEnd()
		} else {
			this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] -= this.space
		}
	};
	this.accountPageIndex()
};
ScrollPic.prototype.leftEnd = function() {
	if (this._state != "floating") {
		return
	};
	this._state = "stoping";
	clearInterval(this._scrollTimeObj);
	var a = this.pageWidth - this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] % this.pageWidth;
	this.move(a)
};
ScrollPic.prototype.rightEnd = function() {
	if (this._state != "floating") {
		return
	};
	this._state = "stoping";
	clearInterval(this._scrollTimeObj);
	var a = -this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] % this.pageWidth;
	this.move(a)
};
ScrollPic.prototype.move = function(a, b) {
	var c = this;
	var d = a / 5;
	if (!b) {
		if (d > this.space) {
			d = this.space
		};
		if (d < -this.space) {
			d = -this.space
		}
	};
	if (Math.abs(d) < 1 && d != 0) {
		d = d >= 0 ? 1 : -1
	} else {
		d = Math.round(d)
	};
	var e = this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] + d;
	if (d > 0) {
		if (this.circularly) {
			if (this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] + d >= this.listDiv01[(this.upright ? 'scrollHeight': 'scrollWidth')]) {
				this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] = this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] + d - this.listDiv01[(this.upright ? 'scrollHeight': 'scrollWidth')]
			} else {
				this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] += d
			}
		} else {
			if (this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] + d >= this.listDiv01[(this.upright ? 'scrollHeight': 'scrollWidth')] - this.frameWidth) {
				this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] = this.listDiv01[(this.upright ? 'scrollHeight': 'scrollWidth')] - this.frameWidth;
				this._state = "ready";
				return
			} else {
				this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] += d
			}
		}
	} else {
		if (this.circularly) {
			if (this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] + d < 0) {
				this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] = this.listDiv01[(this.upright ? 'scrollHeight': 'scrollWidth')] + this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] + d
			} else {
				this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] += d
			}
		} else {
			if (this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] - d < 0) {
				this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] = 0;
				this._state = "ready";
				return
			} else {
				this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] += d
			}
		}
	};
	a -= d;
	if (Math.abs(a) == 0) {
		this._state = "ready";
		if (this.autoPlay) {
			this.play()
		};
		this.accountPageIndex();
		return
	} else {
		this.accountPageIndex();
		this._scrollTimeObj = setTimeout(function() {
			c.move(a, b)
		},
		this.speed)
	}
};
ScrollPic.prototype.pre = function() {
	if (this._state != "ready") {
		return
	};
	this._state = "stoping";
	this.move( - this.pageWidth, true)
};
ScrollPic.prototype.next = function(a) {
	if (this._state != "ready") {
		return
	};
	this._state = "stoping";
	if (this.circularly) {
		this.move(this.pageWidth, true)
	} else {
		if (this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] >= this.listDiv01[(this.upright ? 'scrollHeight': 'scrollWidth')] - this.frameWidth) {
			this._state = "ready";
			if (a) {
				this.pageTo(0)
			}
		} else {
			this.move(this.pageWidth, true)
		}
	}
};
ScrollPic.prototype.play = function() {
	var a = this;
	if (!this.autoPlay) {
		return
	};
	clearInterval(this._autoTimeObj);
	this._autoTimeObj = setInterval(function() {
		a.next(true)
	},
	this.autoPlayTime * 1000)
};
ScrollPic.prototype.stop = function() {
	clearInterval(this._autoTimeObj)
};
ScrollPic.prototype.pageTo = function(a) {
	if (this.pageIndex == a) {
		return
	};
	clearTimeout(this._scrollTimeObj);
	this._state = "stoping";
	var b = a * this.frameWidth - this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')];
	this.move(b, true)
};
ScrollPic.prototype.accountPageIndex = function() {
	var a = Math.round(this.scrollContDiv[(this.upright ? 'scrollTop': 'scrollLeft')] / this.frameWidth);
	if (a == this.pageIndex) {
		return
	};
	this.pageIndex = a;
	if (this.pageIndex > Math.round(this.listDiv01[this.upright ? 'offsetHeight': 'offsetWidth'] / this.frameWidth + 0.4) - 1) {
		this.pageIndex = 0
	};
	var i;
	for (i = 0; i < this.dotObjArr.length; i++) {
		if (i == this.pageIndex) {
			this.dotObjArr[i].className = this.dotOnClassName
		} else {
			this.dotObjArr[i].className = this.dotClassName
		}
	}
};






(function(a){a.fn.slide=function(b){return a.fn.slide.defaults={type:"slide",effect:"fade",autoPlay:!1,delayTime:500,interTime:2500,triggerTime:150,defaultIndex:0,titCell:".hd li",mainCell:".bd",targetCell:null,trigger:"mouseover",scroll:1,vis:1,titOnClassName:"on",autoPage:!1,prevCell:".prev",nextCell:".next",pageStateCell:".pageState",opp:!1,pnLoop:!0,easing:"swing",startFun:null,endFun:null,switchLoad:null,playStateCell:".playState",mouseOverStop:!0,defaultPlay:!0,returnDefault:!1},this.each(function(){var c=a.extend({},a.fn.slide.defaults,b),d=a(this),e=c.effect,f=a(c.prevCell,d),g=a(c.nextCell,d),h=a(c.pageStateCell,d),i=a(c.playStateCell,d),j=a(c.titCell,d),k=j.size(),l=a(c.mainCell,d),m=l.children().size(),n=c.switchLoad,o=a(c.targetCell,d),p=parseInt(c.defaultIndex),q=parseInt(c.delayTime),r=parseInt(c.interTime);parseInt(c.triggerTime);var P,t=parseInt(c.scroll),u=parseInt(c.vis),v="false"==c.autoPlay||0==c.autoPlay?!1:!0,w="false"==c.opp||0==c.opp?!1:!0,x="false"==c.autoPage||0==c.autoPage?!1:!0,y="false"==c.pnLoop||0==c.pnLoop?!1:!0,z="false"==c.mouseOverStop||0==c.mouseOverStop?!1:!0,A="false"==c.defaultPlay||0==c.defaultPlay?!1:!0,B="false"==c.returnDefault||0==c.returnDefault?!1:!0,C=0,D=0,E=0,F=0,G=c.easing,H=null,I=null,J=null,K=c.titOnClassName,L=j.index(d.find("."+K)),M=p=defaultIndex=-1==L?p:L,N=p,O=m>=u?0!=m%t?m%t:t:0,Q="leftMarquee"==e||"topMarquee"==e?!0:!1,R=function(){a.isFunction(c.startFun)&&c.startFun(p,k,d,a(c.titCell,d),l,o,f,g)},S=function(){a.isFunction(c.endFun)&&c.endFun(p,k,d,a(c.titCell,d),l,o,f,g)},T=function(){j.removeClass(K),A&&j.eq(defaultIndex).addClass(K)};if("menu"==c.type)return A&&j.removeClass(K).eq(p).addClass(K),j.hover(function(){P=a(this).find(c.targetCell);var b=j.index(a(this));I=setTimeout(function(){switch(p=b,j.removeClass(K).eq(p).addClass(K),R(),e){case"fade":P.stop(!0,!0).animate({opacity:"show"},q,G,S);break;case"slideDown":P.stop(!0,!0).animate({height:"show"},q,G,S)}},c.triggerTime)},function(){switch(clearTimeout(I),e){case"fade":P.animate({opacity:"hide"},q,G);break;case"slideDown":P.animate({height:"hide"},q,G)}}),B&&d.hover(function(){clearTimeout(J)},function(){J=setTimeout(T,q)}),void 0;if(0==k&&(k=m),Q&&(k=2),x){if(m>=u)if("leftLoop"==e||"topLoop"==e)k=0!=m%t?(0^m/t)+1:m/t;else{var U=m-u;k=1+parseInt(0!=U%t?U/t+1:U/t),0>=k&&(k=1)}else k=1;j.html("");var V="";if(1==c.autoPage||"true"==c.autoPage)for(var W=0;k>W;W++)V+="<li>"+(W+1)+"</li>";else for(var W=0;k>W;W++)V+=c.autoPage.replace("$",W+1);j.html(V);var j=j.children()}if(m>=u){l.children().each(function(){a(this).width()>E&&(E=a(this).width(),D=a(this).outerWidth(!0)),a(this).height()>F&&(F=a(this).height(),C=a(this).outerHeight(!0))});var X=l.children(),Y=function(){for(var a=0;u>a;a++)X.eq(a).clone().addClass("clone").appendTo(l);for(var a=0;O>a;a++)X.eq(m-a-1).clone().addClass("clone").prependTo(l)};switch(e){case"fold":l.css({position:"relative",width:D,height:C}).children().css({position:"absolute",width:E,left:0,top:0,display:"none"});break;case"top":l.wrap('<div class="tempWrap" style="overflow:hidden; position:relative; height:'+u*C+'px"></div>').css({top:-(p*t)*C,position:"relative",padding:"0",margin:"0"}).children().css({height:F});break;case"left":l.wrap('<div class="tempWrap" style="overflow:hidden; position:relative; width:'+u*D+'px"></div>').css({width:m*D,left:-(p*t)*D,position:"relative",overflow:"hidden",padding:"0",margin:"0"}).children().css({"float":"left",width:E});break;case"leftLoop":case"leftMarquee":Y(),l.wrap('<div class="tempWrap" style="overflow:hidden; position:relative; width:'+u*D+'px"></div>').css({width:(m+u+O)*D,position:"relative",overflow:"hidden",padding:"0",margin:"0",left:-(O+p*t)*D}).children().css({"float":"left",width:E});break;case"topLoop":case"topMarquee":Y(),l.wrap('<div class="tempWrap" style="overflow:hidden; position:relative; height:'+u*C+'px"></div>').css({height:(m+u+O)*C,position:"relative",padding:"0",margin:"0",top:-(O+p*t)*C}).children().css({height:F})}}var Z=function(a){var b=a*t;return a==k?b=m:-1==a&&0!=m%t&&(b=-m%t),b},$=function(b){var c=function(c){for(var d=c;u+c>d;d++)b.eq(d).find("img["+n+"]").each(function(){var b=a(this);if(b.attr("src",b.attr(n)).removeAttr(n),l.find(".clone")[0])for(var c=l.children(),d=0;c.size()>d;d++)c.eq(d).find("img["+n+"]").each(function(){a(this).attr(n)==b.attr("src")&&a(this).attr("src",a(this).attr(n)).removeAttr(n)})})};switch(e){case"fade":case"fold":case"top":case"left":case"slideDown":c(p*t);break;case"leftLoop":case"topLoop":c(O+Z(N));break;case"leftMarquee":case"topMarquee":var d="leftMarquee"==e?l.css("left").replace("px",""):l.css("top").replace("px",""),f="leftMarquee"==e?D:C,g=O;if(0!=d%f){var h=Math.abs(0^d/f);g=1==p?O+h:O+h-1}c(g)}},_=function(a){if(!A||M!=p||a||Q){if(Q?p>=1?p=1:0>=p&&(p=0):(N=p,p>=k?p=0:0>p&&(p=k-1)),R(),null!=n&&$(l.children()),o[0]&&(P=o.eq(p),null!=n&&$(o),"slideDown"==e?(o.not(P).stop(!0,!0).slideUp(q),P.slideDown(q,G,function(){l[0]||S()})):(o.not(P).stop(!0,!0).hide(),P.animate({opacity:"show"},q,function(){l[0]||S()}))),m>=u)switch(e){case"fade":l.children().stop(!0,!0).eq(p).animate({opacity:"show"},q,G,function(){S()}).siblings().hide();break;case"fold":l.children().stop(!0,!0).eq(p).animate({opacity:"show"},q,G,function(){S()}).siblings().animate({opacity:"hide"},q,G);break;case"top":l.stop(!0,!1).animate({top:-p*t*C},q,G,function(){S()});break;case"left":l.stop(!0,!1).animate({left:-p*t*D},q,G,function(){S()});break;case"leftLoop":var b=N;l.stop(!0,!0).animate({left:-(Z(N)+O)*D},q,G,function(){-1>=b?l.css("left",-(O+(k-1)*t)*D):b>=k&&l.css("left",-O*D),S()});break;case"topLoop":var b=N;l.stop(!0,!0).animate({top:-(Z(N)+O)*C},q,G,function(){-1>=b?l.css("top",-(O+(k-1)*t)*C):b>=k&&l.css("top",-O*C),S()});break;case"leftMarquee":var c=l.css("left").replace("px","");0==p?l.animate({left:++c},0,function(){l.css("left").replace("px","")>=0&&l.css("left",-m*D)}):l.animate({left:--c},0,function(){-(m+O)*D>=l.css("left").replace("px","")&&l.css("left",-O*D)});break;case"topMarquee":var d=l.css("top").replace("px","");0==p?l.animate({top:++d},0,function(){l.css("top").replace("px","")>=0&&l.css("top",-m*C)}):l.animate({top:--d},0,function(){-(m+O)*C>=l.css("top").replace("px","")&&l.css("top",-O*C)})}j.removeClass(K).eq(p).addClass(K),M=p,y||(g.removeClass("nextStop"),f.removeClass("prevStop"),0==p&&f.addClass("prevStop"),p==k-1&&g.addClass("nextStop")),h.html("<span>"+(p+1)+"</span>/"+k)}};A&&_(!0),B&&d.hover(function(){clearTimeout(J)},function(){J=setTimeout(function(){p=defaultIndex,A?_():"slideDown"==e?P.slideUp(q,T):P.animate({opacity:"hide"},q,T),M=p},300)});var ab=function(a){H=setInterval(function(){w?p--:p++,_()},a?a:r)},bb=function(a){H=setInterval(_,a?a:r)},cb=function(){z||(clearInterval(H),ab())},db=function(){(y||p!=k-1)&&(p++,_(),Q||cb())},eb=function(){(y||0!=p)&&(p--,_(),Q||cb())},fb=function(){clearInterval(H),Q?bb():ab(),i.removeClass("pauseState")},gb=function(){clearInterval(H),i.addClass("pauseState")};if(v?Q?(w?p--:p++,bb(),z&&l.hover(gb,fb)):(ab(),z&&d.hover(gb,fb)):(Q&&(w?p--:p++),i.addClass("pauseState")),i.click(function(){i.hasClass("pauseState")?fb():gb()}),"mouseover"==c.trigger?j.hover(function(){var a=j.index(this);I=setTimeout(function(){p=a,_(),cb()},c.triggerTime)},function(){clearTimeout(I)}):j.click(function(){p=j.index(this),_(),cb()}),Q){if(g.mousedown(db),f.mousedown(eb),y){var hb,ib=function(){hb=setTimeout(function(){clearInterval(H),bb(0^r/10)},150)},jb=function(){clearTimeout(hb),clearInterval(H),bb()};g.mousedown(ib),g.mouseup(jb),f.mousedown(ib),f.mouseup(jb)}"mouseover"==c.trigger&&(g.hover(db,function(){}),f.hover(eb,function(){}))}else g.click(db),f.click(eb)})}})(jQuery),jQuery.easing.jswing=jQuery.easing.swing,jQuery.extend(jQuery.easing,{def:"easeOutQuad",swing:function(a,b,c,d,e){return jQuery.easing[jQuery.easing.def](a,b,c,d,e)},easeInQuad:function(a,b,c,d,e){return d*(b/=e)*b+c},easeOutQuad:function(a,b,c,d,e){return-d*(b/=e)*(b-2)+c},easeInOutQuad:function(a,b,c,d,e){return 1>(b/=e/2)?d/2*b*b+c:-d/2*(--b*(b-2)-1)+c},easeInCubic:function(a,b,c,d,e){return d*(b/=e)*b*b+c},easeOutCubic:function(a,b,c,d,e){return d*((b=b/e-1)*b*b+1)+c},easeInOutCubic:function(a,b,c,d,e){return 1>(b/=e/2)?d/2*b*b*b+c:d/2*((b-=2)*b*b+2)+c},easeInQuart:function(a,b,c,d,e){return d*(b/=e)*b*b*b+c},easeOutQuart:function(a,b,c,d,e){return-d*((b=b/e-1)*b*b*b-1)+c},easeInOutQuart:function(a,b,c,d,e){return 1>(b/=e/2)?d/2*b*b*b*b+c:-d/2*((b-=2)*b*b*b-2)+c},easeInQuint:function(a,b,c,d,e){return d*(b/=e)*b*b*b*b+c},easeOutQuint:function(a,b,c,d,e){return d*((b=b/e-1)*b*b*b*b+1)+c},easeInOutQuint:function(a,b,c,d,e){return 1>(b/=e/2)?d/2*b*b*b*b*b+c:d/2*((b-=2)*b*b*b*b+2)+c},easeInSine:function(a,b,c,d,e){return-d*Math.cos(b/e*(Math.PI/2))+d+c},easeOutSine:function(a,b,c,d,e){return d*Math.sin(b/e*(Math.PI/2))+c},easeInOutSine:function(a,b,c,d,e){return-d/2*(Math.cos(Math.PI*b/e)-1)+c},easeInExpo:function(a,b,c,d,e){return 0==b?c:d*Math.pow(2,10*(b/e-1))+c},easeOutExpo:function(a,b,c,d,e){return b==e?c+d:d*(-Math.pow(2,-10*b/e)+1)+c},easeInOutExpo:function(a,b,c,d,e){return 0==b?c:b==e?c+d:1>(b/=e/2)?d/2*Math.pow(2,10*(b-1))+c:d/2*(-Math.pow(2,-10*--b)+2)+c},easeInCirc:function(a,b,c,d,e){return-d*(Math.sqrt(1-(b/=e)*b)-1)+c},easeOutCirc:function(a,b,c,d,e){return d*Math.sqrt(1-(b=b/e-1)*b)+c},easeInOutCirc:function(a,b,c,d,e){return 1>(b/=e/2)?-d/2*(Math.sqrt(1-b*b)-1)+c:d/2*(Math.sqrt(1-(b-=2)*b)+1)+c},easeInElastic:function(a,b,c,d,e){var f=1.70158,g=0,h=d;if(0==b)return c;if(1==(b/=e))return c+d;if(g||(g=.3*e),Math.abs(d)>h){h=d;var f=g/4}else var f=g/(2*Math.PI)*Math.asin(d/h);return-(h*Math.pow(2,10*(b-=1))*Math.sin((b*e-f)*2*Math.PI/g))+c},easeOutElastic:function(a,b,c,d,e){var f=1.70158,g=0,h=d;if(0==b)return c;if(1==(b/=e))return c+d;if(g||(g=.3*e),Math.abs(d)>h){h=d;var f=g/4}else var f=g/(2*Math.PI)*Math.asin(d/h);return h*Math.pow(2,-10*b)*Math.sin((b*e-f)*2*Math.PI/g)+d+c},easeInOutElastic:function(a,b,c,d,e){var f=1.70158,g=0,h=d;if(0==b)return c;if(2==(b/=e/2))return c+d;if(g||(g=e*.3*1.5),Math.abs(d)>h){h=d;var f=g/4}else var f=g/(2*Math.PI)*Math.asin(d/h);return 1>b?-.5*h*Math.pow(2,10*(b-=1))*Math.sin((b*e-f)*2*Math.PI/g)+c:.5*h*Math.pow(2,-10*(b-=1))*Math.sin((b*e-f)*2*Math.PI/g)+d+c},easeInBack:function(a,b,c,d,e,f){return void 0==f&&(f=1.70158),d*(b/=e)*b*((f+1)*b-f)+c},easeOutBack:function(a,b,c,d,e,f){return void 0==f&&(f=1.70158),d*((b=b/e-1)*b*((f+1)*b+f)+1)+c},easeInOutBack:function(a,b,c,d,e,f){return void 0==f&&(f=1.70158),1>(b/=e/2)?d/2*b*b*(((f*=1.525)+1)*b-f)+c:d/2*((b-=2)*b*(((f*=1.525)+1)*b+f)+2)+c},easeInBounce:function(a,b,c,d,e){return d-jQuery.easing.easeOutBounce(a,e-b,0,d,e)+c},easeOutBounce:function(a,b,c,d,e){return 1/2.75>(b/=e)?d*7.5625*b*b+c:2/2.75>b?d*(7.5625*(b-=1.5/2.75)*b+.75)+c:2.5/2.75>b?d*(7.5625*(b-=2.25/2.75)*b+.9375)+c:d*(7.5625*(b-=2.625/2.75)*b+.984375)+c},easeInOutBounce:function(a,b,c,d,e){return e/2>b?.5*jQuery.easing.easeInBounce(a,2*b,0,d,e)+c:.5*jQuery.easing.easeOutBounce(a,2*b-e,0,d,e)+.5*d+c}});







