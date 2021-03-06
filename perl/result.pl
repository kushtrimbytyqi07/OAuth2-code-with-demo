print '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>oAuth2 demo results</title>

    <link href="https://oauth-demo.sequencing.com/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://oauth-demo.sequencing.com/style.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn\'t work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <div class="row"><div class="col-xs-12"><a href="/"><img src="https://oauth-demo.sequencing.com/images/logo.png" alt="Sequencing.com" /></a></div></div>
    <div class="row"><div class="col-xs-12"><h1 class="page-title">Thank you for using Sequencing.com\'s oAuth2 demo.</h1></div></div>
    <div class="row"><div class="col-xs-12">
        <p>If you see a list of file names below then the oAuth2 demo has completed successfully.</p>
        <ul>
            <li>The list contains genetic data files that can be accessed from your Sequencing.com account.</li>
            <li>This includes fun sample files accessible by all apps that use Real-Time Personalization (RTP).</li>
            <li>Sample files allow app users to experience RTP even if they don\'t yet have their own genetic data.</li>
        </ul>
        <p>Please visit the <a href="https://sequencing.com/developer-center/">Developer Center</a> to access developer resources and information.</p>
    </div></div>
    <div class="row"><div class="col-xs-12">
        <div class="table-responsive"><table class="table table-striped table-hover sample-files">
            <thead><tr>
                <th>File name</th>
            </tr></thead>
            <tbody>';
            
            foreach my $f (@response_json){
                print '<tr><td>'
                . decode_entities($f->{'Name'})
                . ': '
                . decode_entities($f->{'FriendlyDesc1'})
                . ', '
                . decode_entities($f->{'FriendlyDesc2'})
                . '</td></tr>';
            }    
          
print  '</tbody>
        </table></div>
    </div></div>
</div>

<!-- jQuery (necessary for Bootstrap\'s JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://oauth-demo.sequencing.com/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>';
