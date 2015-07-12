    $(document).ready(function () {
        // Generate a simple captcha
        function randomNumber(min, max) {
            return Math.floor(Math.random() * (max - min + 1) + min);
        };
    $('#Form1').bootstrapValidator({
        //        live: 'disabled',
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            ctl00$ContentPlaceHolder1$nombre: {
                validators: {
                    notEmpty: {
                        message: 'El nombre o nombres es/son requerido(s), no puede estar vacio'
                    },
                     regexp: {
                        regexp: /^[a-zA-Z\s]*$/,
                        message: 'El nombre o nombres solo puede contener letras'
                    }
                }
            },
            ctl00$ContentPlaceHolder1$apellidos: {
                
                validators: {
                    notEmpty: {
                        message: 'El apellido o apellidos es/son requerido(s), no puede estar vacio'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z\s]*$/,
                        message: 'El apellido o apellidos solo puede contener letras'
                    }
                }
            },
            numDocumento: {

                validators: {
                    notEmpty: {
                        message: 'El número de documento es requerido, no puede estar vacio'
                    },
                    regexp: {
                        regexp: /^\d*$/,
                        message: 'El número de documento solo puede contener números'
                    }
                }
            },
            fechanacimiento: {
                validators: {
                    notEmpty: {
                        message: 'La fecha de nacimiento es requerida, no puede estar vacia'
                    }
                }
            },
            genero: {
                validators: {
                    notEmpty: {
                        message: 'El género es requerido, no puede estar vacio'
                    }
                }
            },
            tipDoc: {
                validators: {
                    notEmpty: {
                        message: 'El tipo de documento es requerido, no puede estar vacio'
                    }
                }
            },
            departamento: {
                validators: {
                    notEmpty: {
                        message: 'El departamento es requerido, no puede estar vacio'
                    }
                }
            },
            ciudad: {
                validators: {
                    notEmpty: {
                        message: 'La ciudad es requerida, no puede estar vacio'
                    }
                }
            },
            paisNaci: {
                validators: {
                    notEmpty: {
                        message: 'El país de nacimiento es requerido, no puede estar vacio'
                    }
                }
            },
            rh: {
                validators: {
                    notEmpty: {
                        message: 'El RH es requerido, no puede estar vacio'
                    }
                }
            },
            libretamilitar: {
                validators: {
                    notEmpty: {
                        message: 'La libreta militar es requerida, no puede estar vacio'
                    },
                    regexp: {
                        regexp: /^\d*$/,
                        message: 'La libreta militar solo puede contener números'
                    }
                }
            },
            catConduccion: {
                validators: {
                    notEmpty: {
                        message: 'La categoría de conducción es requerida, no puede estar vacia'
                    }
                }
            },
        }
    });
});