<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<title>Insert title here</title>
<style type="text/css">
body {
  overflow: hidden;
  background: linear-gradient(to right, #fc354c, #0abfbc);
}

.menu-toggler {
  position: absolute;
  display: block;
  top: 0;
  bottom: 0;
  right: 0;
  left: 0;
  margin: auto;
  width: 40px;
  height: 40px;
  z-index: 2;
  opacity: 0;
  cursor: pointer;
}
.menu-toggler:hover + label, .menu-toggler:hover + label:before, .menu-toggler:hover + label:after {
  background: white;
}

.menu-toggler:checked + label {
  background: transparent;
}
.menu-toggler:checked + label:before, .menu-toggler:checked + label:after {
  top: 0;
  width: 40px;
  -webkit-transform-origin: 50% 50%;
          transform-origin: 50% 50%;
}
.menu-toggler:checked + label:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.menu-toggler:checked + label:after {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}

.menu-toggler:checked ~ ul .menu-item {
  opacity: 1;
}
.menu-toggler:checked ~ ul .menu-item:nth-child(1) {
  -webkit-transform: rotate(0deg) translateX(-110px);
          transform: rotate(0deg) translateX(-110px);
}
.menu-toggler:checked ~ ul .menu-item:nth-child(2) {
  -webkit-transform: rotate(60deg) translateX(-110px);
          transform: rotate(60deg) translateX(-110px);
}
.menu-toggler:checked ~ ul .menu-item:nth-child(3) {
  -webkit-transform: rotate(120deg) translateX(-110px);
          transform: rotate(120deg) translateX(-110px);
}
.menu-toggler:checked ~ ul .menu-item:nth-child(4) {
  -webkit-transform: rotate(180deg) translateX(-110px);
          transform: rotate(180deg) translateX(-110px);
}
.menu-toggler:checked ~ ul .menu-item:nth-child(5) {
  -webkit-transform: rotate(240deg) translateX(-110px);
          transform: rotate(240deg) translateX(-110px);
}
.menu-toggler:checked ~ ul .menu-item:nth-child(6) {
  -webkit-transform: rotate(300deg) translateX(-110px);
          transform: rotate(300deg) translateX(-110px);
}
.menu-toggler:checked ~ ul .menu-item a {
  pointer-events: auto;
}

.menu-toggler + label {
  width: 40px;
  height: 5px;
  display: block;
  z-index: 1;
  border-radius: 2.5px;
  background: rgba(255, 255, 255, 0.7);
  transition: top 0.5s, -webkit-transform 0.5s;
  transition: transform 0.5s, top 0.5s;
  transition: transform 0.5s, top 0.5s, -webkit-transform 0.5s;
  position: absolute;
  display: block;
  top: 0;
  bottom: 0;
  right: 0;
  left: 0;
  margin: auto;
}
.menu-toggler + label:before, .menu-toggler + label:after {
  width: 40px;
  height: 5px;
  display: block;
  z-index: 1;
  border-radius: 2.5px;
  background: rgba(255, 255, 255, 0.7);
  transition: top 0.5s, -webkit-transform 0.5s;
  transition: transform 0.5s, top 0.5s;
  transition: transform 0.5s, top 0.5s, -webkit-transform 0.5s;
  content: "";
  position: absolute;
  left: 0;
}
.menu-toggler + label:before {
  top: 10px;
}
.menu-toggler + label:after {
  top: -10px;
}

.menu-item:nth-child(1) a {
  -webkit-transform: rotate(0deg);
          transform: rotate(0deg);
}

.menu-item:nth-child(2) a {
  -webkit-transform: rotate(-60deg);
          transform: rotate(-60deg);
}

.menu-item:nth-child(3) a {
  -webkit-transform: rotate(-120deg);
          transform: rotate(-120deg);
}

.menu-item:nth-child(4) a {
  -webkit-transform: rotate(-180deg);
          transform: rotate(-180deg);
}

.menu-item:nth-child(5) a {
  -webkit-transform: rotate(-240deg);
          transform: rotate(-240deg);
}

.menu-item:nth-child(6) a {
  -webkit-transform: rotate(-300deg);
          transform: rotate(-300deg);
}

.menu-item {
  position: absolute;
  display: block;
  top: 0;
  bottom: 0;
  right: 0;
  left: 0;
  margin: auto;
  width: 80px;
  height: 80px;
  display: block;
  opacity: 0;
  transition: 0.5s;
}

.menu-item a {
  display: block;
  width: inherit;
  height: inherit;
  line-height: 80px;
  border-radius: 50%;
  text-align: center;
  text-decoration: none;
  font-size: 40px;
  pointer-events: none;
  transition: .2s;
}
.menu-item a:hover {
  box-shadow: 0 0 0 2px rgba(255, 255, 255, 0.3);
  color: white;
  background: rgba(255, 255, 255, 0.3);
  font-size: 44.4444444444px;
}
img{
margin-top:14%;
width:70%;
height:70%;
}
</style>
</head>
<body>

 <nav class='menu'>
  <input checked='checked' class='menu-toggler' id='menu-toggler' type='checkbox'>
  <label for='menu-toggler'></label>
  <ul>
    <li class='menu-item'>
      <a class='fa fa-facebook' href='https://www.facebook.com/' target='_blank'><img src="https://ja.facebookbrand.com/wp-content/uploads/2016/05/flogo_rgb_hex-brc-site-250.png"></a>
    </li>
    <li class='menu-item'>
      <a class='fa fa-google' href='https://www.google.com/' target='_blank'><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1024px-Google_%22G%22_Logo.svg.png"></a>
    </li>
    <li class='menu-item'>
      <a class='fa fa-dribbble' href='https://www.instagram.com/' target='_blank'><img src="http://www.mark-sign.net/download02/data0171/instagram.png"/></a>
    </li>
    <li class='menu-item'>
      <a class='fa fa-codepen' href='https://www.twitter.com/' target='_blank'><img src="http://www.mark-sign.net/download01/data02/twitter.png"/></a>
    </li>
    <li class='menu-item'>
      <a class='fa fa-linkedin' href='https://www.yahoo.com/' target='_blank'><img src="http://www.mark-sign.net/download01/data31/yahoo.png"/></a>
    </li>
    <li class='menu-item'>
      <a class='fa fa-github' href='https://line.me/' target='_blank'><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/LINE_logo.svg/1024px-LINE_logo.svg.png"/></a>
    </li>
  </ul>
</nav>


</body>
</html>