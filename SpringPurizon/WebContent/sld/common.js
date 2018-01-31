
var water1,water2,water3,water4,water5,water6,water7,water8,water9,water10,water11,water12,water13,water14;
function setupwater(){
	water1=$(".water_group1 img");
	water2=$(".water_group2 img");
	water3=$(".water_group3 img");
	water4=$(".water_group4 img");
	water5=$(".water_group5 img");
	water6=$(".water_group6 img");
	water7=$(".water_group7 img");
	water8=$(".water_group8 img");
	water9=$(".water_group9 img");
	water10=$(".water_group10 img");
	water11=$(".water_group11 img");
	water12=$(".water_group12 img");
	water13=$(".water_group13 img");
	water14=$(".water_group14 img");
}


function runwater1(){
	water1.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:705,top:568}).show().animate({top:471},{queue :false,duration :800,easing :"linear",complete:function(){
				 $(this).animate({left:434},{queue :false,duration :800,easing :"linear",complete:function(){
					 $(this).animate({top:441},{queue :false,duration :800,easing :"linear",complete:function(){
						 $(this).animate({left:705},{queue :false,duration :800,easing :"linear",complete:function(){
							 $(this).animate({top:293},{queue :false,duration :800,easing :"linear",complete:function(){
								 $(this).animate({left:433},{queue :false,duration :800,easing :"linear",complete:function(){
									 $(this).animate({top:266},{queue :false,duration :800,easing :"linear",complete:function(){
										 $(this).animate({left:705},{queue :false,duration :800,easing :"linear",complete:function(){
											 $(this).animate({top:116},{queue :false,duration :800,easing :"linear",complete:function(){
												 $(this).animate({left:433},{queue :false,duration :800,easing :"linear",complete:function(){
													 $(this).animate({top:88},{queue :false,duration :800,easing :"linear",complete:function(){
														 $(this).animate({left:705},{queue :false,duration :800,easing :"linear",complete:function(){
															 $(this).animate({top:18},{queue :false,duration :800,easing :"linear",complete:function(){
																 $(this).animate({left:54},{queue :false,duration :800,easing :"linear",complete:function(){
																	 $(this).animate({top:90},{queue :false,duration :800,easing :"linear",complete:function(){
																		 $(this).animate({left:326},{queue :false,duration :800,easing :"linear",complete:function(){
																			 $(this).animate({top:116},{queue :false,duration :800,easing :"linear",complete:function(){
																				 $(this).animate({left:55},{queue :false,duration :800,easing :"linear",complete:function(){
																					 $(this).animate({top:265},{queue :false,duration :800,easing :"linear",complete:function(){
																						 $(this).animate({left:326},{queue :false,duration :800,easing :"linear",complete:function(){
																							 $(this).animate({top:292},{queue :false,duration :800,easing :"linear",complete:function(){
																								 $(this).animate({left:52},{queue :false,duration :800,easing :"linear",complete:function(){ 
																									 $(this).animate({top:443},{queue :false,duration :800,easing :"linear",complete:function(){
																										 $(this).animate({left:326},{queue :false,duration :800,easing :"linear",complete:function(){
																											 $(this).animate({top:471},{queue :false,duration :800,easing :"linear",complete:function(){
																												 $(this).animate({left:09},{queue :false,duration :800,easing :"linear",complete:function(){
																												 $(this).hide();
																												 }});
																											 }});
																										 }});
																									 }});
																								 }});
																							 }});
																						 }});
																					 }});
																				 }});
																			 }});
																		 }});
																	 }});
																 }});
															 }});
														 }});
													 }});
												 }});
											 }});
										 }});
									 }});
								 }});
							 }});
						 }});
					 }});
				 }});
			}});
		},100+index*150)
       
    });	
	t1=setTimeout(function(){
		runwater1()
	},100+water1.length*3200+4500)
}
function runwater2(){
	water2.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:175,top:78}).show().animate({left:196},{queue :false,duration :300,easing :"linear",complete:function(){
				 $(this).animate({top:6},{queue :false,duration :800,easing :"linear",complete:function(){
					 $(this).animate({left:275},{queue :false,duration :500,easing :"linear",complete:function(){ 
						$(this).hide();	
					  }}); 	
				
				}})	 
			}});
		},100+index*200)
       
    });	
	t1=setTimeout(function(){
		runwater2()
	},100+water2.length*200+1000)
}
function runwater3(){
	water3.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:272,top:35}).show().animate({left:215},{queue :false,duration :800,easing :"linear",complete:function(){
				$(this).animate({top:80},{queue :false,duration :500,easing :"linear",complete:function(){
					 $(this).animate({left:239},{queue :false,duration :500,easing :"linear",complete:function(){ 
						$(this).hide();	
					}});	
				 }})	 
			}});
		},100+index*200)
       
    });	
	t3=setTimeout(function(){
		runwater3()
	},100+water3.length*300+1000)
}
function runwater4(){
	water4.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:300,top:80}).show().animate({left:347},{queue :false,duration :500,easing :"linear",complete:function(){
				  $(this).hide();	 
			}});
		},100+index*200)
       
    });
	t4=setTimeout(function(){
		runwater4()
	},100+water4.length*200+1500)	
}
function runwater5(){
	water5.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:420,top:80}).show().animate({left:437},{queue :false,duration :500,easing :"linear",complete:function(){
				$(this).animate({top:36},{queue :false,duration :500,easing :"linear",complete:function(){
					 $(this).animate({left:376},{queue :false,duration :500,easing :"linear",complete:function(){  
							$(this).hide();	 
					 }});	 
				}})	
			}});
		},100+index*200)
       
    });	
	t5=setTimeout(function(){
		runwater5()
	},100+water5.length*200+2000)
}
function runwater6(){
	water6.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:381,top:5}).show().animate({left:459},{queue :false,duration :500,easing :"linear",complete:function(){
				$(this).animate({top:259},{queue :false,duration :800,easing :"linear",complete:function(){
					 $(this).animate({left:555},{queue :false,duration :300,easing :"linear",complete:function(){ 
						$(this).hide();	
					 }}); 	
				}})	
			}});
		},100+index*200)
       
    });	
	t6=setTimeout(function(){
		runwater6()
	},100+water6.length*200+1500)
}
function runwater7(){
	water7.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:462,top:80}).show().animate({left:480},{queue :false,duration :500,easing :"linear",complete:function(){
				$(this).hide();	
				
			}});
		},100+index*200)
       
    });	
	t7=setTimeout(function(){
		runwater7()
	},100+water7.length*200+800)
}
function runwater11(){
	water11.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:543,top:80}).show().animate({left:688},{queue :false,duration :800,easing :"linear",complete:function(){
				$(this).hide();	
				
			}});
		},100+index*200)
       
    });
	t8=setTimeout(function(){
		runwater11()
	},100+water11.length*200+800)	
}
function runwater9(){
	water9.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:386,top:237}).show().animate({top:261},{queue :false,duration :500,easing :"linear",complete:function(){
				$(this).hide();	
				
			}});
		},100+index*200)
       
    });	
	t9=setTimeout(function(){
		runwater9()
	},100+water9.length*200+800)
}
function runwater10(){
	water10.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:386,top:312}).show().animate({top:345},{queue :false,duration :300,easing :"linear",complete:function(){
				  $(this).hide();	
							 
			}});
		},100+index*200)
       
    });	
	t10=setTimeout(function(){
		runwater10()
	},200+water10.length*200+2200)
}
/*function runwater1(){
water1.each(function(index, element) {
	setTimeout(function(){
		 $(element).stop().css({left:38,top:87}).show().animate({top:123},{queue :false,duration :500,easing :"linear",complete:function(){
			$(this).animate({left:166},{queue :false,duration :800,easing :"linear",complete:function(){
				$(this).animate({top:84},{queue :false,duration :300,easing :"linear",complete:function(){
					$(this).hide();	
				}});	
			
			}})	
		}});
	},100+index*150)
   
});	
t1=setTimeout(function(){
	runwater1()
},100+water1.length*200+1500)
} 
 function runwater2(){
	water2.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:224,top:61}).show().animate({left:252},{queue :false,duration :300,easing :"linear",complete:function(){
				$(this).hide();	
				
			}});
		},100+index*200)
       
    });	
	t2=setTimeout(function(){
		runwater2()
	},100+water2.length*200+800)
} 

 function runwater3(){
	water3.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:286,top:90}).show().animate({top:123},{queue :false,duration :300,easing :"linear",complete:function(){
				$(this).animate({left:357},{queue :false,duration :300,easing :"linear",complete:function(){
					$(this).animate({top:89},{queue :false,duration :500,easing :"linear",complete:function(){
						$(this).hide();	
					}});	
				}})	
			}});
		},100+index*200)
       
    });	
	t3=setTimeout(function(){
		runwater3()
	},100+water3.length*300+1000)
} 
 function runwater4(){
	water4.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:420,top:90}).show().animate({top:123},{queue :false,duration :500,easing :"linear",complete:function(){
				$(this).animate({left:504},{queue :false,duration :500,easing :"linear",complete:function(){
					$(this).animate({top:102},{queue :false,duration :300,easing :"linear",complete:function(){
						$(this).hide();	
					}});	
				}})	
			}});
		},100+index*200)
       
    });
	t4=setTimeout(function(){
		runwater4()
	},100+water4.length*200+1500)	
} 
 function runwater5(){
	water5.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:629,top:103}).show().animate({top:123},{queue :false,duration :100,easing :"linear",complete:function(){
				$(this).animate({left:737},{queue :false,duration :500,easing :"linear",complete:function(){
					$(this).animate({top:236},{queue :false,duration :500,easing :"linear",complete:function(){
						$(this).animate({left:677},{queue :false,duration :300,easing :"linear",complete:function(){
							$(this).hide();	
						}});	
					}});	
				}})	
			}});
		},100+index*200)
       
    });	
	t5=setTimeout(function(){
		runwater5()
	},100+water5.length*200+2000)
} 

 function runwater6(){
	water6.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:644,top:273}).show().animate({top:299},{queue :false,duration :100,easing :"linear",complete:function(){
				$(this).animate({left:406},{queue :false,duration :500,easing :"linear",complete:function(){
					$(this).animate({top:265},{queue :false,duration :300,easing :"linear",complete:function(){
						$(this).hide();	
					}});	
				}})	
			}});
		},100+index*200)
       
    });	
	t6=setTimeout(function(){
		runwater6()
	},100+water6.length*200+1500)
} 
 function runwater7(){
	water7.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:390,top:273}).show().animate({top:420},{queue :false,duration :500,easing :"linear",complete:function(){
				$(this).hide();	
				
			}});
		},100+index*200)
       
    });	
	t7=setTimeout(function(){
		runwater7()
	},100+water7.length*200+800)
} 
 function runwater8(){
	water8.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:433,top:243}).show().animate({left:568},{queue :false,duration :500,easing :"linear",complete:function(){
				$(this).hide();	
				
			}});
		},100+index*200)
       
    });
	t8=setTimeout(function(){
		runwater8()
	},100+water8.length*200+800)	
} 
 function runwater9(){
	water9.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:536,top:237}).show().animate({top:101},{queue :false,duration :500,easing :"linear",complete:function(){
				$(this).hide();	
				
			}});
		},100+index*200)
       
    });	
	t9=setTimeout(function(){
		runwater9()
	},100+water9.length*200+800)
} 

 function runwater10(){
	water10.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:389,top:112}).show().animate({top:185},{queue :false,duration :300,easing :"linear",complete:function(){
				$(this).animate({left:307},{queue :false,duration :300,easing :"linear",complete:function(){
					$(this).animate({top:338},{queue :false,duration :500,easing :"linear",complete:function(){
						$(this).animate({left:357},{queue :false,duration :300,easing :"linear",complete:function(){
							$(this).animate({top:417},{queue :false,duration :500,easing :"linear",complete:function(){
								$(this).hide();	
							}})
						}})
					}})
				}})
			}});
		},100+index*200)
       
    });	
	t10=setTimeout(function(){
		runwater10()
	},200+water10.length*200+2200)
}

function runwater11(){
	water11.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:373,top:266}).show().animate({top:300},{queue :false,duration :300,easing :"linear",complete:function(){
				$(this).animate({left:194},{queue :false,duration :500,easing :"linear",complete:function(){
					$(this).animate({top:278},{queue :false,duration :300,easing :"linear",complete:function(){
						$(this).hide();	
					}});	
				}})	
			 }});
		},100+index*200)
       
    });
	t11=setTimeout(function(){
		runwater11()
	},100+water11.length*200+1500)	
}
function runwater12(){
	water12.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:144,top:279}).show().animate({top:300},{queue :false,duration :200,easing :"linear",complete:function(){
				$(this).animate({left:1},{queue :false,duration :500,easing :"linear",complete:function(){
					
					$(this).hide();	
					
				}})	
			}});
		},100+index*200)
       
    });	
	t12=setTimeout(function(){
		runwater12()
	},100+water12.length*200+1100)
}

function runwater13(){
	water13.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:328,top:439}).show().animate({left:224},{queue :false,duration :500,easing :"linear",complete:function(){
				$(this).hide();	
				
			}});
		},100+index*200)
       
    });	
	t13=setTimeout(function(){
		runwater13()
	},100+water13.length*200+800)
}
function runwater14(){
	water14.each(function(index, element) {
		setTimeout(function(){
			 $(element).stop().css({left:94,top:439}).show().animate({left:1},{queue :false,duration :500,easing :"linear",complete:function(){
				$(this).hide();	
				
			}});
		},100+index*200)
       
    });	
	t14=setTimeout(function(){
		runwater14()
	},100+water14.length*200+800)
}*/

var t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14;
$(function(){
	setupwater();
	run_water();
	/*$(window).bind('focus', function() {
		 clearTimeout(t10);
		  t10=setTimeout(function(){
			runwater10()
		},200+water10.length*300+3200)
		});
		
		$(window).bind('blur', function() {
		  clearTimeout(t10);
		});*/
	$(".hoverpro1").hover(function(){
		$(".over_product9").show();	
	},function(){
		$(".over_product9").hide();	
	})
	$(".hoverpro2").hover(function(){
		$(".over_product8").show();	
	},function(){
		$(".over_product8").hide();	
	})
	$(".hoverpro3").hover(function(){
		$(".over_product7").show();	
	},function(){
		$(".over_product7").hide();	
	})
	$(".hoverpro4").hover(function(){
		$(".over_product6").show();	
	},function(){
		$(".over_product6").hide();	
	})
	$(".hoverpro5").hover(function(){
		$(".over_product5").show();	
	},function(){
		$(".over_product5").hide();	
	})
	$(".hoverpro6").hover(function(){
		$(".over_product10").show();	
	},function(){
		$(".over_product10").hide();	
	})
	$(".hoverpro7").hover(function(){
		$(".over_product4").show();	
	},function(){
		$(".over_product4").hide();	
	})
	$(".hoverpro8").hover(function(){
		$(".over_product3").show();	
	},function(){
		$(".over_product3").hide();	
	})
	$(".hoverpro9").hover(function(){
		$(".over_product2").show();	
	},function(){
		$(".over_product2").hide();	
	})
	$(".hoverpro10").hover(function(){
		$(".over_product1").show();	
	},function(){
		$(".over_product1").hide();	
	})
	
})

function run_water(){
	runwater1();
	setTimeout(function(){
		runwater2();
		setTimeout(function(){
			runwater3();
			setTimeout(function(){
				runwater10();	
			},100+water3.length*300+1000)
		},100+water2.length*300+400);
	},100+water1.length*300+1000);
	
	runwater4();
				
				setTimeout(function(){
					runwater5();
					
					setTimeout(function(){
						
					},100+water13.length*300+400)
					setTimeout(function(){
						runwater6();
						setTimeout(function(){
							runwater7();
							runwater9();
							runwater11();
							runwater8();
							setTimeout(function(){

								runwater12();
								runwater13();
								runwater14();
							},100+water7.length*300+400)
						},100+water6.length*300+1000)
					},100+water5.length*300+1000)
				},100+water4.length*300+1000)
} 