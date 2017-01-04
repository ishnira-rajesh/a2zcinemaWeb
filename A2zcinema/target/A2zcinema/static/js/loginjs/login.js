	$(document).on("click","#lnkButtonForgotPassword",function(){
		$("#ForgotPasswordModal").modal("show");
	});
	
	$(document).on("click",".popupForgotPasswordClose",function(){
		$("#txtForgotPasswordEmail").val("");
		$("#ForgotPasswordModal").modal("hide");
	});
	/*=================New code =============*/
	$(document).on("click","#loginPop",function(){
		$("#LoginModal").modal("show");
		$("#registerSocialModal").modal("hide");
	});
	
	$(document).on("click","#registerSocial",function(){
		$("#LoginModal").modal("hide");
		$("#registerSocialModal").modal("show");
	
	});
	
	$(document).on("click","#registrewithEmail",function(){
		$("#LoginModal").modal("hide");
		$("#registerSocialModal").modal("show");
	});
	
	$(document).on("click","#backtoLogin",function(){
		$("#registreModal").modal("hide");
		$("#LoginModal").modal("show");
	});
	
	$(function(){
		 $("#proForm").submit(function(){
			 $("#registerSocialModal").modal("hide");
				register_complete();
				$("#registreModal").modal("show");
		 });
	});
	
	  $(document).ready(function(){
	    $("select").change(function(){
	        $(this).find("option:selected").each(function(){
	            if($(this).attr("value")=="actors"){
	                $(".box").not(".backSupport").hide();
	 				$(".box").not(".agency").hide();
	 				$(".actor").show();
	            }
	            else if($(this).attr("value")=="backSupports"){
	            	$(".box").not(".actor").hide();
					$(".box").not(".agency").hide();
					$(".backSupport").show();
	                
	            }
	            else if($(this).attr("value")=="regAgencys"){
	            	$(".box").not(".backSupport").hide();
	                $(".box").not(".actor").hide();
					 $(".agency").show();
	            }
	            else if($(this).attr("value")==""){
				    $(".box").not(".backSupport").hide();
	                 $(".box").not(".actor").hide();
	                 $(".box").not(".agency").hide();
	            }
	        });
	    }).change();
	});
	  
  function register_complete() {
//	  	var signupId = 3;
//	  	$("input[name='signupId']").val(signupId);
	  	
		$("input[name='actorType']").val();
		$("input[name='backSupportTeam']").val();
		$("input[name='regAgency']").val();
	
		var proffession = $("#profession").val();
		//alert("proffession:"+proffession);
		$("input[name='profession']").val(
		$("select[name='profession']").val());
	
		if (proffession == 'actors') {
			$("input[name='actorType']").val(
			$("select[name='actorType']").val());
			$("input[name='backSupportTeam']").hide();
			$("input[name='regAgency']").hide();
		} else if (proffession == 'backSupports') { 
			$("input[name='backSupportTeam']").val(
			$("select[name='backSupportTeam']").val());
			$("input[name='actorType']").hide();
			$("input[name='regAgency']").hide();
		} else if (proffession == 'regAgencys') {
			$("input[name='regAgency']").val(
			$("select[name='regAgency']").val());
			$("input[name='actorType']").hide();
			$("input[name='backSupportTeam']").hide();
		}
	  }



