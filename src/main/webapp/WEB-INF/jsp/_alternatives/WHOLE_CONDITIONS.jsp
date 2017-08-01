<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="sidebar-nav nav-pills nav-stacked" id="menu">

	<!-- LV1A QI -->
	<li class="sidebar-brand"> <a href="#">LV1A 품질지표</a> </li>
	<!-- 1. Visible SNR -->
	<!-- 1. Visible SNR -->
	<li class=""><!--doejeon active blue --> 
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span> Visible SNR</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A-QI_01"> <!-- CB_QI0_VR_01 -->
					<div class="checkbox"><!-- QI0_VR01_0 -->
						<label> <input type="checkbox" name="L1A-QI01_0">Detector&nbsp;0
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI01_1">Detector&nbsp;1
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI01_2">Detector&nbsp;2
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI01_3">Detector&nbsp;3
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI01_4">Detector&nbsp;4
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI01_5"  >Detector&nbsp;5
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI01_6">Detector&nbsp;6
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI01_7">Detector&nbsp;7
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>


	<!-- 2. Visible Radiance -->
	<!-- 2. Visible Radiance -->
	<li><a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span> Visible Radiance</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A-QI_02">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI02_0"     >Detector&nbsp;0
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI02_1">Detector&nbsp;1
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI02_2">Detector&nbsp;2
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI02_3">Detector&nbsp;3
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI02_4">Detector&nbsp;4
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI02_5">Detector&nbsp;5
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI02_6">Detector&nbsp;6
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI02_7">Detector&nbsp;7
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<!-- 3. Visible PRNU -->
	<!-- 3. Visible PRNU -->
	<li><a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>Visible PRNU</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A-QI_03">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI03_0"  >Detector&nbsp;0
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI03_1" >Detector&nbsp;1
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI03_2">Detector&nbsp;2
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI03_3">Detector&nbsp;3
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI03_4">Detector&nbsp;4
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI03_5">Detector&nbsp;5
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI03_6">Detector&nbsp;6
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI03_7">Detector&nbsp;7
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<!-- 4.IR Radiance (Statistics)-->
	<!-- 4.IR Radiance (Statistics)-->
	<li><a href="#"> <span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>IR Radiance</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A-QI_04">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI04_0">Detector&nbsp;0
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI04_1"   >Detector&nbsp;1
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<!-- 5. IR NEDT -->	
	<!-- 5. IR NEDT -->	
	<li><a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>IR NEDT</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A-QI_05">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI05_0">Detector&nbsp;0
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI05_1"   >Detector&nbsp;1
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<!-- 6. IR PRNU -->	
	<!-- 6. IR PRNU -->	
	<li>
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>IR PRNU</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A-QI_06">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI06_0">Detector&nbsp;0
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-QI06_1"  >Detector&nbsp;1
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<!-- LV1A EI -->
	<li class="sidebar-brand"> <a href="#" >LV1A 환경정보</a> </li>
	<!-- 1. telescope primary temp -->
	<!-- 1. telescope primary temp -->
	<li class=""><!--doejeon active blue --> 
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>Telescope Primary Temperature</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A.EV_01">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-EV01_25" >Temperature
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 2.  louver radiator temperature-->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>Louver Radiator Temperature</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A.EV_02">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-EV02_26" >Temperature
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 3.  Telescope Secondary Temperature-->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>Telescope Secondary Temperature</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A.EV_03">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-EV03_34" >Temperature 1</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-EV03_73">Temperature 2</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-EV03_72">Temperature 3</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 4.  Scan Mirror Temperature-->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>Scan Mirror Temperature</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A.EV_04">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-EV04_36" >Temperature
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 5.  Primary Baffle Temperature-->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>Primary Baffle Temperature</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A.EV_05">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-EV05_74" >Temperature 1</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-EV05_75" >Temperature 2</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

		<!-- 6.  E-W Servo current -->
	<li class="">
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>E-W Servo current</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A.EV_06">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-EV06_6">Current
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

		<!-- 7.  N-S Servo current -->
	<li class="">
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>N-S Servo current</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1A.EV_07">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1A-EV07_20">Current
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	
	<!-- LV1B QI -->
	<li class="sidebar-brand"> <a href="#">LV1B 품질지표</a> </li>
	<li class=""><!--doejeon active blue --> 
		<!-- 1. n-s residual -->
		<!-- 1. Visible Radiance -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>N-S Residual</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1B.QI_01">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1B-QI01_0" disabled="disabled">Condition&nbsp;0
						</label>
					</div>
					
				</div>
			</li>
		</ul>
	</li>

	
	<li class="">
		<!-- 2.  Number of Valid Landmarks -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Number of Valid Landmarks
		</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1B.QI_02">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1B-QI02_0"   >No. Landmarks
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 3.  Residual Average(EW/NS) -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Residual Average (EW/NS)</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1B.QI_03">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1B-QI03_0"   >AVG.
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 4.  Residual Standard Deviation(EW/NS) -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Residual Standard Deviation (EW/NS)
		</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1B.QI_04">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1B-QI04_0"  >E-W
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="L1B-QI04_1">N-S
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<li class="">
		<!-- 5.  Residual Quadratic Deviation(EW/NS) -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Residual Quadratic Distance
		</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;" >
			<li>
				<div class="checkboxes" id="CB_L1B.QI_05">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1B-QI05_0" >Quadratic Distance
					</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<li class="">
		<!-- 6.  Residual Statistics per ROI -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Residual Statistics per ROI
		</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1B.QI_06">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1B-QI06_0" disabled="disabled">Condition&nbsp;0
							</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	<li class="">
		<!-- 7.  IMC Data -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		IMC Data
		</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1B.QI_07">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1B-QI07_0" disabled="disabled">Condition&nbsp;0
							</label>
					</div>
				</div>
			</li>
		</ul>
	</li>
	
	
	<!-- LV1B EI -->
	<li class="sidebar-brand"> <a href="#" >LV1B 환경정보</a> </li>
	<li class=""><!--doejeon active blue --> 
		<!-- 1. Spacecraft Position( at Image Center)  -->
		<!-- 1. Spacecraft Position( at Image Center)  -->
		<a href="#">
			<span class="fa-stack fa-lg pull-left">
				<i class="fa fa-angle-double-right fa-stack-1x "></i>
			</span>Spacecraft Position
			<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;( at Image Center )
		</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1B.EV_01">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1B-EV01_0">Center X
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 2.  Spacecraft Attitude ( AOCS Local Orbital Frame) -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Spacecraft Attitude
		<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;( AOCS Local Orbital Frame )
		</a>
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_L1B.EV_02">
					<div class="checkbox">
						<label> <input type="checkbox" name="L1B-EV02_0">Attitude(deg)
						</label>
					</div>
				</div>
			</li>
		</ul>
	</li>

	<li class="">
		<!-- 3.  Pixel UTC(Last) -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Pixel UTC (Last)</a>
		<!-- 
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_EI3_VR_03">
					<div class="checkbox">
						<label> <input type="checkbox" name="EI3_VR03_0">Temperature
						</label>
					</div>
				</div>
			</li>
		</ul>
		 -->
	</li>

	<li class="">
		<!-- 4.  Spacecraft Velocity(at Image First) -->
		<a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-angle-double-right fa-stack-1x "></i></span>
		Spacecraft Velocity
		<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;( at Image First ) </a>
		<!-- 
		<ul class="nav-pills nav-stacked" style="list-style-type: none;">
			<li>
				<div class="checkboxes" id="CB_EI3_VR_04">
					<div class="checkbox">
						<label> <input type="checkbox" name="EI3_VR04_0">Temperature
						</label>
					</div>
				</div>
			</li>
		</ul>
		 -->
	</li>
	
	<!--  -->
	
</ul>