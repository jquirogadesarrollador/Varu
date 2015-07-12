<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmGuia.aspx.cs" Inherits="AppPrototipoV2.WebForms.FrmGuia" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../BootStrapV3.3.4/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../BootStrapV3.3.4/js/bootstrap.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <div style="width: 50%; margin: 2% 2% 2% 2%; text-align: center; right: 90%">
        <ul class="nav nav-pills">
            <li role="presentation" class="active"><a href="#">Home</a></li>
            <li role="presentation"><a href="#">Profile</a></li>
            <li role="presentation"><a href="#">Messages</a></li>
        </ul>
        <form class="form-horizontal">
        <fieldset>
            <!-- Form Name -->
            <!-- Text input-->
            <div class="form-group">
                <label class="col-xs-6 control-label" for="textinput">
                    Ejemplo</label>
                <div class="col-xs-6">
                    <input id="textinput" name="textinput" type="text" placeholder="Ejemplo" class="form-control input-md">
                </div>
            </div>
            <!-- Multiple Radios (inline) -->
            <div class="form-group">
                <label class="col-xs-6 control-label" for="radios">
                    Ejemplo</label>
                <div class="col-xs-6">
                    <label class="radio-inline" for="radios-0">
                        <input type="radio" name="radios" id="radios-0" value="1" checked="checked">
                        1
                    </label>
                    <label class="radio-inline" for="radios-1">
                        <input type="radio" name="radios" id="radios-1" value="2">
                        2
                    </label>
                    <label class="radio-inline" for="radios-2">
                        <input type="radio" name="radios" id="radios-2" value="3">
                        3
                    </label>
                    <label class="radio-inline" for="radios-3">
                        <input type="radio" name="radios" id="radios-3" value="4">
                        4
                    </label>
                </div>
            </div>
            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-xs-6 control-label" for="selectbasic">
                    Ejemplo</label>
                <div class="col-xs-6">
                    <select id="selectbasic" name="selectbasic" class="form-control">
                        <option value="1">Option one</option>
                        <option value="2">Option two</option>
                    </select>
                </div>
            </div>
            <!-- Button -->
            <div class="form-group">
                <label class="col-xs-6 control-label" for="singlebutton">
                    Ejemplo</label>
                <div class="col-xs-6">
                    <button id="singlebutton" name="singlebutton" class="btn btn-primary">
                        Button</button>
                </div>
            </div>
            <!-- Single button -->
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    Action <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                </ul>
            </div>
            <div class="panel panel-default">
                <div class="panel-body">
                    Basic panel example
                </div>
            </div>
            <nav>
                <ul class="pagination">
                    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span> </a>
                    </li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span> </a></li>
                </ul>
            </nav>
        </fieldset>
        </form>
    </div>
</body>
</html>
