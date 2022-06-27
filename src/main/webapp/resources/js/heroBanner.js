/**
 * 
 */
 function Slider(target, type) {
	  //상태
	  var index = 1;
	  var isMoved = true;
	  var speed = 3000; // ms
	  
	  //방향
	  var transform = "transform " + speed / 3000 + "s";
	  var translate = (i) => "translateX(-" + 100 * i + "%)";
	  if (type === "V") {
	    translate = (i) => "translateY(-" + 100 * i + "%)";
	  }

	  //슬라이더
	  var slider = document.querySelector(target);
	  var sliderRects = slider.getClientRects()[0];
	  slider.style["overflow"] = "hidden";

	  //슬라이더 화면 컨테이너
	  var container = document.createElement("div");
	  container.style["display"] = "flex";
	  container.style["flex-direction"] = type === "V" ? "column" : "row";
	  container.style["width"] = sliderRects.width + "px";
	  container.style["height"] = sliderRects.height + "px";
	  container.style["transform"] = translate(index);

	  //슬라이더 화면 목록
	  var boxes = [].slice.call(slider.children);
	  boxes = [].concat(boxes[boxes.length - 1], boxes, boxes[0]);

	  //슬라이더 화면 스타일
	  var size = boxes.length;
	  for (var i = 0; i < size; i++) {
	    var box = boxes[i];
	    box.style["flex"] = "none";
	    box.style["flex-wrap"] = "wrap";
	    box.style["height"] = "100%";
	    box.style["width"] = "100%";
	    container.appendChild(box.cloneNode(true));
	  }

	  //처음/마지막 화면 눈속임 이벤트
	  container.addEventListener("transitionstart", function () {
	    isMoved = false;
	    setTimeout(() => {
	      isMoved = true;
	    }, speed);
	  });
	  container.addEventListener("transitionend", function () {
	    //처음으로 순간이동
	    if (index === size - 1) {
	      index = 1;
	      container.style["transition"] = "none";
	      container.style["transform"] = translate(index);
	    }
	    //끝으로 순간이동
	    if (index === 0) {
	      index = size - 2;
	      container.style["transition"] = "none";
	      container.style["transform"] = translate(index);
	    }
	  });

	  //슬라이더 붙이기
	  slider.innerHTML = "";
	  slider.appendChild(container);

	  return {
	    move: function (i) {
	      if (isMoved === true) {
	        index = i;
	        container.style["transition"] = transform;
	        container.style["transform"] = translate(index);
	      }
	    },
	    next: function () {
	      if (isMoved === true) {
	        index = (index + 1) % size;
	        container.style["transition"] = transform;
	        container.style["transform"] = translate(index);
	      }
	    },
	    prev: function () {
	      if (isMoved === true) {
	        index = index === 0 ? index + size : index;
	        index = (index - 1) % size;
	        container.style["transition"] = transform;
	        container.style["transform"] = translate(index);
	      }
	    }
	  };
	}

	var s1 = new Slider("#slider1", "H");
	
	setInterval(() => {
	  s1.next();
	  //s2.next();
	}, 3000)