var titleCheckFlag = false;
const limit = 3000; // 3500자 제한

var n = 2;
var delFList = [];

$(function() {

	$('#button-add-file').click(addFileForm);
	$(document).on('click', '.button-delete-file', function(event) {
		if($("input[name=viewCheck]").val() == "m") {
			var delFileNo = $(this).next().val();
			delFList.push(delFileNo);
		}
		$(this).parent().remove();
	});

	// Quill
	var toolbarOptions = {
		container : [
		  ['bold', 'italic', 'underline', 'strike'],        // toggled buttons
		  ['blockquote'],
	
		  [{ 'list': 'ordered'}, { 'list': 'bullet' }],
		  [{ 'script': 'sub'}, { 'script': 'super' }],      // superscript/subscript
		  [{ 'indent': '-1'}, { 'indent': '+1' }],          // outdent/indent
		  [{ 'direction': 'rtl' }],                         // text direction
		  [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
			
		  ['link', 'image', 'video', 'formula', 'code-block'],
		  
		  [{ 'color': [] }, { 'background': [] }],          // dropdown with defaults from theme
		  [{ 'align': [] }],
	
		  ['emoji'],
		]
	};
	
	var picArr = new Array();
	var quill = new Quill('#editor', {
		modules: {
			imageResize: {},
			//videoResize: {},
			imageUpload: {
				url: '/file/upload/board-image',
				method: 'POST',
				name: 'uploadImage',
				withCredentials: false,
				headers: {},
				
				// 업로드 성공시
				callbackOK: (serverResponse, next) => {
					next(serverResponse);
					picArr.push(serverResponse.substring(25));
				},
				
				// 업로드 실패시
				callbackKO: serverError => {
					alert(serverError);
				}
			},
          "toolbar": toolbarOptions,
          "emoji-toolbar": true,
		},
		placeholder: '내용을 입력하세요.',
		theme: 'snow'
	});
	
		// 글자수 제한
	quill.on('text-change', function (delta, old, source) {
	  if (quill.getLength() > limit) {
	    quill.deleteText(limit, quill.getLength());
	  }
	});
	
	// 유효성 검사
	var title = $("input[name=boTitle]");
	var titleMsg = $("#title-msg");
	
	title.on("keyup", function(){
		if(title.val() == "") {
			$(this).removeClass("is-valid");
			$(this).addClass("is-invalid");
			titleMsg.css("display", "block");
			titleCheckFlag = false;
		} else {
			$(this).removeClass("is-invalid");
			$(this).addClass("is-valid");
			titleMsg.css("display", "none");
			titleCheckFlag = true;
		}
	});
	
	// 등록버튼 클릭시
	$("#submit-btn").on("click", function() {
	
		// 수정파일인지 여부 체크
		if($("input[name=viewCheck]").val() == "m") {
			titleCheckFlag = true;
			$("#delFiles").val(delFList);
		}
	
		if(titleCheckFlag && title.val() != "") {
			// 내용 보내기
			var html = quill.root.innerHTML;
			$("input[name=boContents]").val(html);
			$("input[name=picList]").val(picArr);
			
			$("#postForm").submit();
		} else {
			title.removeClass("is-valid");
			title.addClass("is-invalid");
			titleMsg.css("display", "block");
		}
	});
	
	// 등록 취소버튼 클릭시
	$("#reset-btn").on("click", function() {
		var category = $("#category").val();
		var detailNo = $("input[name=boNo]").val();

		// 업로드된 파일들 삭제
		if(picArr.length != 0) {
			$.ajax({
				url : "/file/reset/image",
				type : "get",
				data : {"picList": picArr, "folder" : "\\buploadImages"},
				traditional : true,
				success : function() {
					console.log("전송 성공");
				},
				error : function() {
					alert("전송 실패!" + picArr);
				}
			});
		}
		
		// 이전 페이지로 이동 (해당 리스트 페이지) 
		if($("input[name=viewCheck]").val() != "m") {
			// 등록 파일인 경우
			location.href="/study/board?boCategory=" + category;
		} else if($("input[name=viewCheck]").val() == "m") {
			// 수정 파일인 경우
			location.href="/study/board/detail?boNo=" + detailNo;
		}
	});
});

// 파일
var count = 0;
function addFileForm() {
	var html = "<div id='item_"+ count +"'>";
	html += "<input id='input" + count + "' type='file' name='fList'>";
	html += "<a class='button-delete-file btn'><i class='fas fa-minus text-primary' style='cursor:pointer'></i></a></div>";
	count++;
	$("#my-form").append(html);
}