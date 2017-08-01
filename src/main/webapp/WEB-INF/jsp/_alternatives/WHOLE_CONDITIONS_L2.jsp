<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="sidebar-nav nav-pills nav-stacked" id="menu">

	
	<!-- LV1A EI -->
	<li class="sidebar-brand"> <a href="#" >Level 2 Daily Validation</a> </li>
	<!-- 1. telescope primary temp -->
	<!-- 1. telescope primary temp -->
	<li class=""><!--doejeon active blue --> 
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>CLA</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A-QI_02">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI02_0" >CLA
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 2.  louver radiator temperature-->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>CLD</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A.EV_02">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI03_0" >CLD
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 3.  Telescope Secondary Temperature-->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>FOG</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A.EV_03">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI04_0" >FOG</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 4.  Scan Mirror Temperature-->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>AI</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A.EV_04">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI05_0" >AI
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	
</ul>