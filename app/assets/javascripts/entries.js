// You can use CoffeeScript in this file: http://coffeescript.org/
Show = (function(){

	var $btnNewEntry;
	var $btnSaveClose;
	var $btnSaveNew;
	var $account_id;
	var $amount;
	var $modalEntry;
  var $transaction_number;
  var $url = "/api/v1/accounting_transactions/new_entry";
	var fetchElements = function(){
		$btnNewEntry = $("#btn_new_entry");
		$btnSaveClose = $("#btnSaveClose");
		$btnSaveNew = $("#btnSaveNew");
		$account = $("#account");
		$amount = $("#amount");
    $transaction_date = $("#transaction_date") 
    $entry_accounting_transaction_id = $("#entry_accounting_transaction_id")
		$modalEntry =  $("#modal-entry");
		$transaction_number = $("#transaction_number");
	};

	var disableControls = function(){
		$btnSaveClose.prop("disabled",true);
		$btnSaveNew.prop("disabled",true);
		$account.prop("disabled",true);
		$amount.prop("disabled",true);
    $description.prop("disable",true);
    $entry_type.prop("disable",true)
    
	}
	var enableControls = function(){
		$btnSaveClose.prop("disabled",false);
		$btnSaveNew.prop("disabled",false);
		$account.prop("disabled",false);
		$amount.prop("disabled",false);


	}

	var initializeEvents = function(){
		$btnNewEntry.on("click",function(){
			$modalEntry.modal("show");
      }
  
    )

			$btnSaveNew.on("click",function(){
		//get values from controls
				var amount = $amount.val();
				var account = $account_id.val();

        var transaction_number = $transaction_number.val(); 
				console.log("Transaction #:" + transaction_number + ",  Amount :" + _amount );
				console.log("Transaction #:" + transaction_number + ",  Account :" + account );

				disableControls();
      // $.ajax({
      //   url: url,method: 'post', datatype: 'json',data:{amount: amount,entry_type:entry_type,accounting_transaction_id:accounting_transaction_id},success:function(response){
      //
      //     window.location.href="accounting_transactions/" + accounting_transaction_id;        },error : function(response{
      //     $notification.html(JSON.parse(response.response.Text).errors.join()}
      //     })
      
      // );

				enableControls();

			})

			};

	var init = function(){
		fetchElements();
		$entry_accounting_transaction_id.prop("disabled",true);
    $transaction_date.prop("disabled",true);
		initializeEvents();
	};
	return {
		init: init
	};
})();

