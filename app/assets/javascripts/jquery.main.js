var ready = function() {
    //original field values
    var field_values = {
            //id        :  value
            'usuario'  : 'usuario',
            'pass'  : 'pass',
            'cpassword' : 'password',
            'idioma' : 'idioma',
            'curso' : 'curso',
            'nivel' : 'nivel',
            'name' : 'name',
            'paternal_lastname' : 'paternal_lastname',
            'maternal_lastname' : 'maternal_lastname',
            'dni' : 'dni',
            'unica' : 'unica',
            'escuela': 'escuela',
            'postgrado': 'postgrado'
            
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
                
        $('#second_step input').removeClass('error').removeClass('valid');

        var error = 0;

        jQuery("input[type='radio'][name='language']").each(function(index, button){

        if ( jQuery( 'input[name=language]:checked' ).val() == null ) {
                $(this).addClass('error');
                $(this).effect("shake", { times:3 }, 50);
                
                error++;
            } else {
                $(this).addClass('valid');
            }

        });        
        
        if(!error) {
                //update progress bar
                $('#progress_text').html('20% Complete');
                $('#progress').css('width','80px');

                //slide steps
                $('#second_step').slideUp();
                $('#third_step').slideDown();         
                       
        }   
        

    });

    jQuery("input[type='radio'][name='language']").each(function(index, button){
        
        
            if ( jQuery( 'input[name=language]:checked' ).val() == '1' )
            {
                idioma = 'Inglés'
            }

            if ( jQuery( 'input[name=language]:checked' ).val() == '2' )
            {
                idioma = 'Francés'
            }

            if ( jQuery( 'input[name=language]:checked' ).val() == '3' )
            {
                idioma = 'Portugués'
            }

            if ( jQuery( 'input[name=language]:checked' ).val() == '4' )
            {
                idioma = 'Italiano'
            }
        
    });



    $('#submit_third_yes').click(function(){
                
                //update progress bar
                $('#progress_text').html('30% Complete');
                $('#progress').css('width','80px');

                //slide steps
                $('#third_step').slideUp();
                $('#fourth_step_yes').slideDown();     
        

    });

    $('#submit_date1').click(function(){
                
                //update progress bar
                $('#progress_text').html('30% Complete');
                $('#progress').css('width','80px');

                //slide steps
                $('#date1_step').slideUp();
                $('#sixth_step').slideDown();     
        

    });

    $('#submit_date2').click(function(){
                
                //update progress bar
                $('#progress_text').html('30% Complete');
                $('#progress').css('width','80px');

                //slide steps
                $('#date2_step').slideUp();
                $('#horario1_step').slideDown();     
        

    });

    $('#submit_date3').click(function(){
                
                //update progress bar
                $('#progress_text').html('30% Complete');
                $('#progress').css('width','80px');

                //slide steps
                $('#date3_step').slideUp();
                $('#sixth_step').slideDown();     
        

    });

    $('#submit_horario1').click(function(){
                
                //update progress bar
                $('#progress_text').html('30% Complete');
                $('#progress').css('width','80px');

                //slide steps
                $('#horario1_step').slideUp();
                $('#sixth_step').slideDown();     
        

    });

    $('#submit_horario2').click(function(){
                
                //update progress bar
                $('#progress_text').html('30% Complete');
                $('#progress').css('width','80px');

                //slide steps
                $('#horario2_step').slideUp();
                $('#sixth_step').slideDown();     
        

    });


    $('#submit_third_no').click(function(){
                
                //update progress bar
                $('#progress_text').html('30% Complete');
                $('#progress').css('width','80px');

                //slide steps
                $('#third_step').slideUp();
                $('#fourth_step_no').slideDown();     
        

    });


    


    $('#submit_fourth_no').click(function(){
        //update progress bar
        $('#progress_text').html('40% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#fourth_step_no').slideUp();
                $('#fifth_step').slideDown();     
        

    });



    $('#submit_fifth').click(function(){
                //update progress bar
        $('#progress_text').html('50% Complete');
        $('#progress').css('width','185px');         
                //slide steps
                $('#fifth_step').slideUp();
                $('#sixth_step').slideDown();     
        

    });

    $('#submit_sixth').click(function(){

        $('#sixth_step input').removeClass('error').removeClass('valid');

        //ckeck if inputs aren't empty
        var fields = $('#sixth_step input[type=text]');
        var error = 0;

        fields.each(function(){
            var value = $(this).val();
            if( value.length<1 || value==field_values[$(this).attr('id')] ) {
                $(this).addClass('error');
                $(this).effect("shake", { times:3 }, 50);
                
                error++;
            } else {
                $(this).addClass('valid');
            }

        });        
        
        if(!error) {
                $('#progress_text').html('70% Complete');
                $('#progress').css('width','222px');
                //slide steps
                $('#sixth_step').slideUp();
                $('#seventh_step').slideDown();       
                       
        } else return false;   
        

    });

    $('#submit_seventh').click(function(){

        $('#seventh_step input').removeClass('error').removeClass('valid');

        //ckeck if inputs aren't empty
        var fields = $('#seventh_step input[type=text]');
        var error = 0;

        fields.each(function(){
            var value = $(this).val();
            if( value.length<1 || value==field_values[$(this).attr('id')] ) {
                $(this).addClass('error');
                $(this).effect("shake", { times:3 }, 50);
                
                error++;
            } else {
                $(this).addClass('valid');
            }

        });        
        
        if(!error) {
                
                //update progress bar
        $('#progress_text').html('80% Complete');
        $('#progress').css('width','259px');
                //slide steps
                $('#seventh_step').slideUp();
                $('#eighth_step').slideDown();         
                       
        } else return false;  
        

    });

    $('#submit_eighth').click(function(){
<<<<<<< HEAD

        $('#eighth_step input').removeClass('error').removeClass('valid');
        var fields = $('#eighth_step input[type=text]');
        var error = 0;

        fields.each(function(){
            var value = $(this).val();
            if( value.length<1 || value==field_values[$(this).attr('id')] ) {
                $(this).addClass('error');
                $(this).effect("shake", { times:3 }, 50);
                
                error++;
            } else {
                $(this).addClass('valid');
            }

        }); 

        jQuery("input[type='radio'][name='sex']").each(function(index, button){

        if ( jQuery( 'input[name=sex]:checked' ).val() == null ) {
                $(this).addClass('error');
                $(this).effect("shake", { times:3 }, 50);
                
                error++;
            } else {
                $(this).addClass('valid');
            }

        });        
        
        if(!error) {
                //update progress bar
        $('#progress_text').html('90% Complete');
=======
        //update progress bar
        $('#progress_text').html('87% Complete');
>>>>>>> f647a07d5ad0775c117abf31589aa14aefe0192b
        $('#progress').css('width','269px');
                //slide steps
                $('#eighth_step').slideUp();
                $('#ninth_step').slideDown();         
                       
        } 


            
        

    });

    $('#submit_ninth').click(function(){

        //$('#ninth_step input').removeClass('error').removeClass('valid');

        //ckeck if inputs aren't empty
        //var fields = $('#ninth_step input[type=text],  #ninth_step input[type=date]');
        //var error = 0;

        //fields.each(function(){
    //        var value = $(this).val();
    //        if( value.length<1 || value==field_values[$(this).attr('id')] ) {
    //            $(this).addClass('error');
    //            $(this).effect("shake", { times:3 }, 50);
                
    //            error++;
    //        } else {
    //            $(this).addClass('valid');
    //        }

    //    });        
        
    //    if(!error) {
                
                //update progress bar
        $('#progress_text').html('93% Complete');
        $('#progress').css('width','339px');
                //slide steps
                $('#ninth_step').slideUp();
                $('#tenth_step').slideDown();         
                       
    //    } else return false;     
        

    });

    $('#submit_tenth').click(function(){
<<<<<<< HEAD

        $('#tenth_step input').removeClass('error').removeClass('valid');

        var error = 0;

        jQuery("input[type='radio'][name='marital_status']").each(function(index, button){

        if ( jQuery( 'input[name=marital_status]:checked' ).val() == null ) {
                $(this).addClass('error');
                $(this).effect("shake", { times:3 }, 50);
                
                error++;
            } else {
                $(this).addClass('valid');
            }

        });        
        
        if(!error) {
                //update progress bar
        $('#progress_text').html('100% Complete');
        $('#progress').css('width','339px');

        //slide steps
                $('#tenth_step').slideUp();
                $('#eleventh_step').slideDown();         
                       
        } 

    });

    $('#submit_escuela').click(function(){
                //update progress bar
        $('#progress_text').html('100% Complete');
        $('#progress').css('width','339px');
                //slide steps
                $('#escuela_step').slideUp();
                $('#postgrado_step1').slideDown();     
        

    });

    $('#submit_postgrado1').click(function(){
                //update progress bar
        $('#progress_text').html('100% Complete');
        $('#progress').css('width','339px');
                //slide steps
                $('#postgrado_step1').slideUp();
                
                $('#twelfth_step').slideDown();     
        

    });

    $('#submit_postgrado2').click(function(){
=======
>>>>>>> f647a07d5ad0775c117abf31589aa14aefe0192b
                //update progress bar
        $('#progress_text').html('100% Complete');
        $('#progress').css('width','339px');
                //slide steps
<<<<<<< HEAD
                $('#postgrado_step2').slideUp();
               
                $('#twelfth_step').slideDown();     
        

    });

    $('#submit_twelfth').click(function(){
                //update progress bar
        $('#progress_text').html('100% Complete');
        $('#progress').css('width','339px');

        var fields = new Array(
            $('#usuario').val(),
            $('#pass').val(),
            idioma,
            curso,
            //nivel
            null,
            $('#name').val(),
            $('#paternal_lastname').val() + ' ' + $('#maternal_lastname').val(),
            $('#dni').val(),
            unica
        );
        var tr = $('#thirteenth_step tr');
        tr.each(function(){
            //alert( fields[$(this).index()] );
            $(this).children('td:nth-child(2)').html(fields[$(this).index()]);
        });
        
        //slide steps
        $('#twelfth_step').slideUp();
        $('#thirteenth_step').slideDown();     
        

    });

    $('#back2one').click(function(){
        //update progress bar
        $('#progress_text').html('10% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#second_step').slideUp();
                $('#first_step').slideDown();     
        

    });

    $('#back2second').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#third_step').slideUp();
                $('#second_step').slideDown();     
        

    });

    $('#back2third_yes').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#fourth_step_yes').slideUp();
                $('#third_step').slideDown();     
        

    });

    $('#back2third_no').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#fourth_step_no').slideUp();
                $('#third_step').slideDown();     
        

    });


    $('#back2fourth_yes_v').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#v_exam_pago_step1').slideUp();
                $('#fourth_step_yes').slideDown();     
        

    });

    $('#back2fourth_yes_l').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#level_step').slideUp();
                $('#fourth_step_yes').slideDown();     
        

    });

    $('#back2vea').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#date1_step').slideUp();
                $('#v_exam_pago_step1').slideDown();     
        

    });

    $('#back2vea2').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#date2_step').slideUp();
                $('#horario2_step').slideUp();
                $('#v_exam_pago_step2').slideDown();     
        

    });

    $('#back2date2').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#horario1_step').slideUp();
                $('#date2_step').slideDown();     
        

    });

    $('#back2vea3').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#date3_step').slideUp();
                $('#v_exam_pago_step3').slideDown();     
        

    });

    $('#back2level').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#v_exam_pago_step2').slideUp();
                $('#level_step').slideDown();     
        

    });

    $('#back2level1').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#v_exam_pago_step2').slideUp();
                $('#level_step').slideDown();     
        

    });

    $('#back2level2').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#v_exam_pago_step3').slideUp();
                $('#level_step').slideDown();     
        

    });


$('#back2fourth').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#fifth_step').slideUp();
                $('#fourth_step_no').slideDown();     
        

    });

$('#back2fifth').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#sixth_step').slideUp();
                $('#fifth_step').slideDown();     
        

    });

$('#back2sixth').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#seventh_step').slideUp();
                $('#sixth_step').slideDown();     
        

    });

$('#back2seventh').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#eighth_step').slideUp();
                $('#seventh_step').slideDown();     
        

    });

$('#back2eighth').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#ninth_step').slideUp();
                $('#eighth_step').slideDown();     
        

    });

$('#back2ninth').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#tenth_step').slideUp();
                $('#ninth_step').slideDown();     
        

    });

$('#back2tenth').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#eleventh_step').slideUp();
                $('#tenth_step').slideDown();     
        

    });

$('#back2eleventh').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#escuela_step').slideUp();
                $('#eleventh_step').slideDown();     
        

    });

$('#back2escuela').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#postgrado_step1').slideUp();
                $('#escuela_step').slideDown();     
        

    });

$('#back2unica').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#postgrado_step2').slideUp();
                $('#eleventh_step').slideDown();     
        

    });

$('#back2postgrado').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
                //slide steps
                $('#twelfth_step').slideUp();
                $('#postgrado_step2').slideDown();     
        

    });

$('#back2twelfth').click(function(){
        //update progress bar
        $('#progress_text').html('20% Complete');
        $('#progress').css('width','148px');
     
        //slide steps
        $('#thirteenth_step').slideUp();
        $('#twelfth_step').slideDown();     
        

    });


    
    jQuery("input[type='radio'][name='course_type']").each(function(index, button){

        if ( jQuery( 'input[name=course_type]:checked' ).val() == '1' )
            {
                curso = 'Técnico'
            }
        if ( jQuery( 'input[name=course_type]:checked' ).val() == '2' )
            {
                curso = 'Comunicativo'
            }

        // Give the button a certain click behaviour:
        jQuery(button).click(function(){
            
            if ( jQuery( 'input[name=course_type]:checked' ).val() == '1' )
            {

                $('#submit_fourth_yes').click(function(){
                //update progress bar
                $('#progress_text').html('40% Complete');
                $('#progress').css('width','148px');
     
                //slide steps
                
                $('#fourth_step_yes').slideUp();
                $('#level_step').slideUp();
                $('#v_exam_pago_step1').slideDown();     
        

                });
            }

            if ( jQuery( 'input[name=course_type]:checked' ).val() == '2' )
            {

                $('#submit_fourth_yes').click(function(){
                //update progress bar
                $('#progress_text').html('40% Complete');
                $('#progress').css('width','148px');
     
                //slide steps
                
                $('#fourth_step_yes').slideUp();
                $('#v_exam_pago_step1').slideUp();
                $('#level_step').slideDown();     
        

                }); 
            }

        });
    });

jQuery("input[type='radio'][name='validation_type']").each(function(index, button){
        // Give the button a certain click behaviour:
        jQuery(button).click(function(){
            
            if ( jQuery( 'input[name=validation_type]:checked' ).val() == '1' )
            {

                $('#submit_vea').click(function(){
                //update progress bar
                $('#progress_text').html('40% Complete');
                $('#progress').css('width','148px');
     
                //slide steps
                
                $('#v_exam_pago_step1').slideUp();
                $('#sixth_step').slideUp();
                $('#date1_step').slideDown();     
        

                });

                $('#submit_vea1').click(function(){
                //update progress bar
                $('#progress_text').html('40% Complete');
                $('#progress').css('width','148px');
     
                //slide steps
                
                $('#v_exam_pago_step2').slideUp();
                
                $('#date2_step').slideDown();     
        

                });

                $('#submit_vea2').click(function(){
                //update progress bar
                $('#progress_text').html('40% Complete');
                $('#progress').css('width','148px');
     
                //slide steps
                
                $('#v_exam_pago_step3').slideUp();
                
                $('#date3_step').slideDown();     
        

                });

            }

            if ( jQuery( 'input[name=validation_type]:checked' ).val() == '0' )
            {

                $('#submit_vea').click(function(){
                //update progress bar
                $('#progress_text').html('40% Complete');
                $('#progress').css('width','148px');
     
                //slide steps
                
                $('#v_exam_pago_step1').slideUp();
                $('#date1_step').slideUp();  
                $('#sixth_step').slideDown();     
        

                }); 

                $('#submit_vea2').click(function(){
                //update progress bar
                $('#progress_text').html('40% Complete');
                $('#progress').css('width','148px');
     
                //slide steps
                
                $('#v_exam_pago_step3').slideUp();
                $('#date3_step').slideUp();
                $('#sixth_step').slideDown();     
        

                });
            }

        });
    });
      
    jQuery("input[type='radio'][name='level']").each(function(index, button){

        if ( jQuery( 'input[name=level]:checked' ).val() == '1' )
            {
                nivel = 'Básico'
            }
        if ( jQuery( 'input[name=level]:checked' ).val() == '2' )
            {
                nivel = 'Intermedio'
            }
        if ( jQuery( 'input[name=level]:checked' ).val() == '3' )
            {
                nivel = 'Avanzado'
            }

        // Give the button a certain click behaviour:
        jQuery(button).click(function(){

            if ( jQuery( 'input[name=level]:checked' ).val() == '1' )
            {

                $('#submit_level').click(function(){
                //update progress bar
                $('#progress_text').html('40% Complete');
                $('#progress').css('width','148px');
     
                //slide steps
                
                $('#level_step').slideUp();
                $('#v_exam_pago_step3').slideDown();     
        

                });
            }

            if ( jQuery( 'input[name=level]:checked' ).val() == '2' )
            {

                $('#submit_level').click(function(){
                //update progress bar
                $('#progress_text').html('40% Complete');
                $('#progress').css('width','148px');
     
                //slide steps
                
                $('#level_step').slideUp();
                $('#v_exam_pago_step3').slideUp();
                $('#v_exam_pago_step2').slideDown();     
        

                });
            }

            if ( jQuery( 'input[name=level]:checked' ).val() == '3' )
            {

                $('#submit_level').click(function(){
                //update progress bar
                $('#progress_text').html('40% Complete');
                $('#progress').css('width','148px');
     
                //slide steps
                
                $('#level_step').slideUp();
                $('#v_exam_pago_step3').slideUp();
                $('#v_exam_pago_step2').slideDown();     
        

                });
            }
        

        });
    });



jQuery("input[type='radio'][name='unica_person']").each(function(index, button){

        
        if ( jQuery( 'input[name=unica_person]:checked' ).val() == '1' )
            {
                unica = 'Sí'
            }
        if ( jQuery( 'input[name=unica_person]:checked' ).val() == '2' )
            {
                unica = 'No'
            }

        // Give the button a certain click behaviour:
        jQuery(button).click(function(){

            if ( jQuery( 'input[name=unica_person]:checked' ).val() == '1' )
            {

                $('#submit_eleventh').click(function(){
                //update progress bar
                $('#progress_text').html('90% Complete');
                $('#progress').css('width','148px');
     
                //slide steps
                $('#eleventh_step').slideUp();
                
                $('#escuela_step').slideDown();     
        

                });
            }
            if ( jQuery( 'input[name=unica_person]:checked' ).val() == '2' )
            {

                $('#submit_eleventh').click(function(){
                //update progress bar
                $('#progress_text').html('90% Complete');
                $('#progress').css('width','148px');
     
                //slide steps
                
                $('#eleventh_step').slideUp();
                $('#escuela_step').slideUp();
                $('#postgrado_step2').slideDown();     
        

                });
            }
        });
    });

jQuery("input[type='radio'][name='postgrade_person']").each(function(index, button){

        
        if ( jQuery( 'input[name=postgrade_person]:checked' ).val() == '1' )
            {
                postgrado = 'No'
            }
        if ( jQuery( 'input[name=postgrade_person]:checked' ).val() == '2' )
            {
                postgrado = 'Magister'
            }
        if ( jQuery( 'input[name=postgrade_person]:checked' ).val() == '3' )
            {
                postgrado = 'Doctor'
            }
                
        });





=======
                $('#tenth_step').slideUp();
                $('#eleventh_step').slideDown();     
        

    });
     
>>>>>>> f647a07d5ad0775c117abf31589aa14aefe0192b

};


$(document).ready(ready);
$(document).on('page:load', ready);