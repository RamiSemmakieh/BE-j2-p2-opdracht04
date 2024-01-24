<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wijzigeing van instructeurVoertuig</title>
</head>
<body>

    <h1>Wijzigen voertuiggegevens</h1>

    <form action="wijzigenoverzichtvoertuigen.php" method="POST">
        <fieldset>
            <label for="instructeur">
                Instructeur: 
            </label>
            <select name="instructeur" id="instructeur">
                <option value=""></option>
                <option value=""></option>
                <option value=""></option>
                <option value=""></option>
                <option value=""></option>
            </select>
            
            <label for="typevoertuig">
                Typevoertuig: 
            </label>
            <select name="typevoertuig" id="typevoertuig">
                <option value=""></option>
                <option value=""></option>
                <option value=""></option>
                <option value=""></option>
            </select>
            
            <label for="type">
                Type: 
            </label>
            <input type="tekst" name="type" id="type" value="">

            <label for="bouwjaar">
                bouwjaar
            </label>
            <input type="date" name="bouwjaar" id="bouwjaar" value="">

            <p>Brandstof: </p>
            <label for="brandstof">
                Diesel
            </label>
            <input type="radio" name="brandstof" id="brandstof" value="">

            <label for="brandstof">
                Benzine
            </label>
            <input type="radio" name="brandstof" id="brandstof" value="">

            <label for="brandstof">
                Eleftrisch
            </label>
            <input type="radio" name="brandstof" id="brandstof" value="">

            <label for="kenteken">
                kenteken:
            </label>
            <input type="tekst" name="kenteken" id="kenteken" value="">

            <input type="hidden" name="Id" value="">
            
            <input type="submit" value="verstuur">
        </fieldset>
    </form>
    
</body>
</html>