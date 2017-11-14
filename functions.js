$(function () {
    var li = $('<li/>', {
        style: "display: none;"
    }).append($('<span/>')).hide();
    var ok = $('<i/>', {
        class: 'glyphicon glyphicon-ok-sign ok'
    });
    var no = $('<i/>', {
        class: 'glyphicon glyphicon-remove-sign no'
    });

    function dd() {
        $.each(attributes, function (k, v) {
            console.log(v);
        });
    }
    function step(data) {
        if (Object.keys(data).length) {
            $.each(data, function (k, v) {
                switch (k) {
                    case 'requirements':
                        requirements(v);
                        break;
                    case 'download':
                        download(v, true);
                        break;
                    case 'unzip':
                        unzip(v);
                        break;
                    case 'database':
                        database(v);
                        break;
                }
            });
        } else {
            sendajaxvar("functions.php", {'function': 'requirements'}, requirements);
        }

    }
    function sendajaxvar(url, data, success) {
        $.ajax({
            type: "POST",
            datatype: "json",
            url: url,
            data: data,
            success: function (data) {
                if (success) {
                    return success(data);
                }
            }
        });
    }
    function requirements(data) {
        if (data.success) {
            $.each(data.data, function (k, v) {
                var row = li.clone();
                row.find('span').text(k);
                if (v) {
                    row.append(ok.clone());
                } else {
                    row.append(no.clone());
                }
                row.appendTo('ul.list-extensi').show('slow');
            });

            if (data.continue) {
                $('<input/>', {
                    type: "button",
                    value: "Click to Start Downloading",
                    class: "btn btn-success downloading"
                }).hide().appendTo('.download_cms').show('slow');
            }
            progressBar.set(10, 'Requirements init stuff');
            return true;
        }
    }
    function download(data, test) {
        if (data.success) {
            $('body').find('.downloading').attr('disabled', 'disabled');
            progressBar.set(40, 'CMS Frame is successfully downloaded');
        }
        if (!test) {
            sendajaxvar("functions.php", {'function': 'unzip'}, unzip);
        }
        return true;
    }
    function unzip(data) {

        if (data.success) {
            progressBar.set(60, 'Extracted Files');
            $('#db_form').removeClass('hide');
        }
        return true;
    }
    function database(data) {

        if (data.success) {
            $('#db_form').hide();
            $('<div/>', {
                class: 'environments_buttons'
            }).append($('<button/>', {
                class: "btn btn-info environments",
                text: "Edit Environments",
                type: "button"
            })).append(
                $('<button/>', {
                    class: "btn btn-success run-cms",
                    text: "Run Cms",
                    type: "button"
                })
            ).hide().appendTo('#db_connection').show('slow');
            progressBar.set(80, '.env configured');
        }
    }
    function run_cms(data) {
       if(data.success){
           location.reload();
       }

    }
    sendajaxvar("functions.php", {'function': 'step'}, step);
    $('body').on('click', '.downloading', function () {
        $(this).attr('disabled', 'disabled');
        sendajaxvar("functions.php", {'function': 'download'}, download);
    });
    $('body').on('click', '#singlebutton', function () {
        var data = $('#db_form').serialize();
        sendajaxvar("functions.php", data, database);
    });
    $('body').on('click', '.environments', function () {
        $(this).parent().slideToggle();
        $('#db_form').show('slow');
        progressBar.set(80, 'Edit Environments');

    });
    $('body').on('click', '.run-cms', function () {
        sendajaxvar("functions.php",{"function":"run"}, run_cms);

    });

});