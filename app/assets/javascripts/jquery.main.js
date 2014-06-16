var ready = function() {
    //original field values
    var field_values = {
            //id        :  value
            'usuario'  : 'usuario',
            'pass'  : 'pass',
            'cpassword' : 'password',
            
    };


    //inputfocus
    $('input#usuario').inputfocus({ value: field_values['usuario'] });
    $('input#pass').inputfocus({ value: field_values['pass'] });
    $('input#cpassword').inputfocus({ value: field_values['cpassword'] });     

    //reset progress bar
    $('#progress').css('width','0');
    $('#progress_text').html('0% Complete');

    
    $('#submit_first').click(function(){
        //remove classes
        $('#first_step input').removeClass('error').removeClass('valid');

        //ckeck if inputs aren't empty
        var fields = $('#first_step input[type=text], #first_step input[type=password]');
        var error = 0;
        fields.each(function(){
            var value = $(this).val();
            if( value.length<4 || value==field_values[$(this).attr('id')] ) {
                $(this).addClass('error');
                $(this).effect("shake", { times:3 }, 50);
                
                error++;
            } else {
                $(this).addClass('valid');
            }
        });        
        
        if(!error) {
            if( $('#pass').val() != $('#cpassword').val() ) {
                    $('#first_step input[type=password]').each(function(){
                        $(this).removeClass('valid').addClass('error');
                        $(this).effect("shake", { times:3 }, 50);
                    });
                    
                    return false;
            } else {   
                //update progress bar
                $('#progress_text').html('10% Complete');
                $('#progress').css('width','37px');

                //slide steps
                $('#first_step').slideUp();
                $('#second_step').slideDown();     
            }               
        } else return false;
    });


    $('#submit_second').click(function(){
                
                //update progress bar
                $('#progress_text').html('20% Complete');
                $('#progress').css('width','80px');

                //slide steps
                $('#second_step').slideUp();
                $('#third_step').slideDown();     
        

    });


    $('#submit_third').click(function(){
                        
        //update progress bar
        $('#progress_text').html('30% Complete');
        $('#progress').css('width','111px');

        //slide steps
        $('#third_step').slideUp();
        $('#fourth_step').slideDown();            
    });


    $('#submit_fourth').click(function(){
        //update progress bar
        $('#progress_text').html('50% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#fourth_step').slideUp();
                $('#fifth_step').slideDown();     
        

    });

    $('#submit_fifth').click(function(){
                //update progress bar
        $('#progress_text').html('60% Complete');
        $('#progress').css('width','185px');         
                //slide steps
                $('#fifth_step').slideUp();
                $('#sixth_step').slideDown();     
        

    });

    $('#submit_sixth').click(function(){
                //update progress bar
        $('#progress_text').html('70% Complete');
        $('#progress').css('width','222px');
                //slide steps
                $('#sixth_step').slideUp();
                $('#seventh_step').slideDown();     
        

    });

    $('#submit_seventh').click(function(){
                //update progress bar
        $('#progress_text').html('80% Complete');
        $('#progress').css('width','259px');
                //slide steps
                $('#seventh_step').slideUp();
                $('#eighth_step').slideDown();     
        

    });

    $('#submit_eighth').click(function(){
        //update progress bar
        $('#progress_text').html('90% Complete');
        $('#progress').css('width','269px');
                //slide steps
                $('#eighth_step').slideUp();
                $('#ninth_step').slideDown();     
        

    });

    $('#submit_ninth').click(function(){
                //update progress bar
        $('#progress_text').html('100% Complete');
        $('#progress').css('width','339px');
                //slide steps
                $('#ninth_step').slideUp();
                $('#tenth_step').slideDown();     
        

    });


      

};


$(document).ready(ready);
$(document).on('page:load', ready);