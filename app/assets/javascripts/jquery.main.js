var ready = function() {
    //original field values
    var field_values = {
            //id        :  value
            'username'  : 'username',
            'password'  : 'password',
            'cpassword' : 'password',
            
    };


    //inputfocus
    $('input#username').inputfocus({ value: field_values['username'] });
    $('input#password').inputfocus({ value: field_values['password'] });
    $('input#cpassword').inputfocus({ value: field_values['cpassword'] }); 
     

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
            if( $('#password').val() != $('#cpassword').val() ) {
                    $('#first_step input[type=password]').each(function(){
                        $(this).removeClass('valid').addClass('error');
                        $(this).effect("shake", { times:3 }, 50);
                    });
                    
                    return false;
            } else {   
                
                //slide steps
                $('#first_step').slideUp();
                $('#second_step').slideDown();     
            }               
        } else return false;
    });


    $('#submit_second').click(function(){
         
                //slide steps
                $('#second_step').slideUp();
                $('#third_step').slideDown();     
        

    });


    $('#submit_third').click(function(){
                        
        //slide steps
        $('#third_step').slideUp();
        $('#fourth_step').slideDown();            
    });


    $('#submit_fourth').click(function(){
     
                //slide steps
                $('#fourth_step').slideUp();
                $('#fifth_step').slideDown();     
        

    });

    $('#submit_fifth').click(function(){
                            
                //slide steps
                $('#fifth_step').slideUp();
                $('#sixth_step').slideDown();     
        

    });

    $('#submit_sixth').click(function(){
                           
                //slide steps
                $('#sixth_step').slideUp();
                $('#siete_step').slideDown();     
        

    });

    $('#submit_siete').click(function(){
                           
                //slide steps
                $('#siete_step').slideUp();
                $('#ocho_step').slideDown();     
        

    });

    $('#submit_ocho').click(function(){
                            
                //slide steps
                $('#ocho_step').slideUp();
                $('#nueve_step').slideDown();     
        

    });

      

};


$(document).ready(ready);
$(document).on('page:load', ready);