String.prototype.splice = function( i, l, str ) {
  return this.slice(0,i) + str + this.slice(i+l);
}

FixForPiHeight= 30/2 - 14.03/2 
//middle of #gmara and .pi font-sizes


function parsePirushes(){
  $('#gmara p').each(function(n, gmara_p){
    $pirushes= $('.pi').filter('[data-paragraph='+n+']')
  
  
    indexes= $.unique( $.map( $pirushes, function(t){
      return $(t).data('index');
    }) );
  
    heights= {}
    $.each(indexes, function(i,index){
      $(gmara_p).html(
        $(gmara_p).html().splice(index,0, '<span id="tmp" />')
      );
      heights[index]= $('#tmp').offset().top + FixForPiHeight;
      $('#tmp').remove();
    });
  
    $pirushes.each(function(){
      index= $(this).data('index')
      prevBottom=  
        $(this).prev().offset().top + $(this).prev().outerHeight(true);
      
      $(this).offset({ 
        top: Math.max( heights[index], prevBottom )
      });   
    });
    
    
  });
  $('.pi:last-child').each(function(){
    $(this).parent().height(
      $(this).offset().top + $(this).outerHeight(true) -
      $(this).parent().offset().top
    );
  });
}