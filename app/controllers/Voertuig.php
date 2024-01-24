<?php

    class Voertuig extends BaseController
    {
        private $voertuigModel;

        public function __construct()
        {
            $this->voertuigModel = $this->model('VoertuigModel');
        }

        public function overzichtvoertuigen() 
        {
            $result = $this->voertuigModel->getVoertuig();
            // var_dump($result);

            // var_dump($rows);

            if (empty($result)) {
                $rows = "<tr>
                                    <td colspan='6'>
                                        Er zijn op dit moment nog geenvoertuigen toegewezen aan deze instructeur
                                    </td>
                                </tr>";
            } else {

                $rows = "";
                foreach ($result as $voertuig) {
                    $rows .= "<tr>
                                <td>$voertuig->TypeVoertuig</td>
                                <td>$voertuig->Type</td>
                                <td>$voertuig->Kenteken </td>
                                <td>$voertuig->Bouwjaar</td>
                                <td>$voertuig->Brandstof</td>
                                <td>$voertuig->Rijbewijscategorie</td>
                                <td>$voertuig->Voornaam $voertuig->Tussenvoegsel $voertuig->Achternaam</td>
                                <td>
                                    <a href='" . URLROOT . "/voertuig/overzichtvoertuigen/'><img src='" . URLROOT . "img/delete.png'></a>
                                </td>
                              </tr>";                    
                }
            }

            $resultCount = $this->voertuigModel->countVoertuig();

            $count = "";
            foreach ($resultCount as $voertuig) {
                $count .= "$voertuig";
            }
            // var_dump($count);

            $data = [
                'title' => 'Alle voertuigen',
                'rows' => $rows,
                'count' => $count
                
            ];

            $this->view('voertuig/overzichtvoertuigen', $data);

            // var_dump($result);
        }

    public function delete($id)
    {
        $delete = $this->voertuigModel->delete($id);

        if ($delete) {
            echo "Het record is verwijderd";
            header('Refresh:2.5; url=http://be-j2-p2-op4.org//voertuig/overzichtvoertuigen');
        } else {
            echo "Het record is niet verwijderd";
        }
    }
    }