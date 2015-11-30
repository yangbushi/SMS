$(document).ready(function(){
	$(".leftsidebar div.fold > a").click(function(){
		$(this).toggleClass("active").next().toggle();
	});

	$(".table tbody tr:odd td").css("backgroundColor","#fafafa");

	$(".state div").hover(function(){
		$(this).find(".stateBox").toggle();
	});
});