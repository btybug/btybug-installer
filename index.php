

<!DOCTYPE html>
<!--[if IE 8]>
<html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title>Avatar Installer</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="avatar cms installer" name="description"/>
    <meta content="Sahak" name="author"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://npmcdn.com/tether@1.2.4/dist/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="styles.css">

</head>
<div class="col-md-12 text-center"><legend><h2>AVATAR CMS</h2></legend></div>
<div class="col-md-12 row">
    <div class="col-md-3  field">
        <div class="col-md-12 text-center"><legend>Required Extensions</legend></div>
        <div class="col-md-12">
            <ul class="list-extensi">
            </ul>
        </div>


    </div>
    <div class="col-md-3 field">
        <div class="col-md-12 text-center download_cms"><legend>Download and Configure files</legend></div>
    </div>
    <div class="col-md-3 field database">
        <div class="col-md-12 text-center"><legend>Database</legend></div>
        <div class="col-md-12  text-center " id="db_connection">
            <form class="form-horizontal hide" id="db_form" method="POST" action="">
                <fieldset>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="hostName">Host</label>
                        <div class="col-md-8">
                            <input id="hostName" name="hostName" type="text" placeholder="localhost" class="form-control input-md" required="">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Username</label>
                        <div class="col-md-8">
                            <input id="textinput" name="userName" type="text" placeholder="root" class="form-control input-md" required="">

                        </div>
                    </div>

                    <!-- Password input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="passwordinput">Password</label>
                        <div class="col-md-8">
                            <input id="passwordinput" name="passCode" type="password" placeholder="" class="form-control input-md">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Name</label>
                        <div class="col-md-8">
                            <input id="textinput" name="dbName" type="text" placeholder="forge" class="form-control input-md" required="">
                        </div>
                    </div>

                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="singlebutton"></label>
                        <div class="col-md-8">
                            <input type="hidden" name="function" value="database" >
                            <input type="button" id="singlebutton" value="Save"  class="btn btn-success">
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>
    </div>
</div>
<div class="progress_bar_content"></div>
<div class="container ">
    <div id="progress-bar">
        <progress class="progress progress-striped progress-success" value="1" max="100">
            <div class="progress">
                <span class="progress-bar" style="width: 1%;">1%</span>
            </div>
        </progress>
        <div class="progress-info">init</div>
    </div>
</div>
<script type="application/javascript" src="progress_bar.js"></script>
<script type="application/javascript" src="functions.js">

</script>
</body>


</html>

