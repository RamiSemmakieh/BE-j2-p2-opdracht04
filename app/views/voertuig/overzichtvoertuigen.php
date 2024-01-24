<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?= URLROOT; ?>/css/style.css">
    <title>Overzicht alle voertuigen</title>
</head>
<body>
    <h3><?= $data['title']; ?></h3>

    <p>Aantal: <?= $data['count']; ?></p>

    <table>
        <thead>
            <th>TypeVoertuig</th>
            <th>Type</th>
            <th>Kenteken </th>
            <th>Bouwjaar</th>
            <th>Brandstof</th>
            <th>Rijbewijscategorie</th>
            <th>Instructeur naam</th>
        </thead>
        <tbody>
        
        <?= $data['rows']; ?>
        
        </tbody>
    </table>
    
</body>
</html>