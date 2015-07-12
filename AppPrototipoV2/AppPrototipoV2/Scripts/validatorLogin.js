    $(document).ready(function () {
        // Generate a simple captcha
        function randomNumber(min, max) {
            return Math.floor(Math.random() * (max - min + 1) + min);
        };

        $('#loginForm').bootstrapValidator({
            //        live: 'disabled',
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                ctl00$TextBox_NombreUsuario: {
                    message: 'El usuario no es valido',
                    validators: {
                        notEmpty: {
                            message: 'El usuario es requerido, no puede estar vacio'
                        },
                        stringLength: {
                            min: 5,
                            max: 30,
                            message: 'El usuario debe tener mas de 6 caracteres y menos de 30'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: 'El usuario solo puede contener letras, números, puntos y underscore'
                        },
                        different: {
                            field: 'password,confirmPassword',
                            message: 'El usuario y contraseña no pueden ser similares'
                        }
                    }
                },
                ctl00$TextBox_Pasword: {
                    validators: {
                        notEmpty: {
                            message: 'La contraseña es requerida, no puede estar vacia'
                        },
                        identical: {
                            field: 'confirmPassword',
                            message: 'El usuario y la confirmación no son iguales'
                        },
                        different: {
                            field: 'username',
                            message: 'La contraseña no puede ser igual al usuario'
                        }
                    }
                }
            }
        });
    });
