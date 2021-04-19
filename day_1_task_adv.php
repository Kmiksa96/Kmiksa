<!DOCTYPE html>
<html lang= "en">
   <head>
        <meta charset="UTF-8">
       <meta name="viewport"  content="width=device-width, initial-scale=1.0">
       <title>Hello World</title>
   </head >
   <body>
        <?php 
        $shows = array(
                 array("Cartoon","Aladdin",135),
                 array("Cartoon","Mickey_Mouse",25),
                 array("Cartoon","101_dogs",120),
                 array("Anime","Naruto",24),
                 array("Anime","One_piece",25)
        );
        echo "The {$shows[0][0]} {$shows[0][1]} is {$shows[0][2]} minutes long <hr>";
        echo "The {$shows[1][0]} {$shows[1][1]} is {$shows[1][2]} minutes long <hr>";
        echo "The {$shows[2][0]} {$shows[2][1]} is {$shows[2][2]} minutes long <hr>";
        echo "The {$shows[3][0]} {$shows[4][1]} is {$shows[3][2]} minutes long <hr>";
        echo "The {$shows[4][0]} {$shows[4][1]} is {$shows[4][2]} minutes long <hr>";
        ?>
   </body>
</html>