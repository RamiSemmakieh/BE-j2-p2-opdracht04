<?php

    class VoertuigModel 
    {
        private $db;

        public function __construct()
        {
            $this->db = new Database();
        }

        public function getVoertuig()
        {
            // $sql ="SELECT  voer.*, tyvo.* 
            // FROM voertuig as voer
            // INNER JOIN voertuiginstructeur vtin ON vtin.VoertuigId = voer.id
            // INNER JOIN TypeVoertuig tyvo ON voer.TypeVoertuigId = tyvo.id
            // -- INNER JOIN instructeur inst ON vtin.InstructeurId = inst.id";

            $sql ="SELECT  voer.*, tyvo.*, VOIN.*, INST.*
            FROM voertuig as voer
            INNER JOIN TypeVoertuig as tyvo ON voer.TypeVoertuigId = tyvo.Id
            LEFT JOIN VoertuigInstructeur as VOIN ON VOIN.VoertuigId = VOER.Id
            LEFT JOIN Instructeur as INST ON VOIN.InstructeurId = INST.Id";

            $this->db->query($sql);

            $test = $this->db->resultSet();   
            // var_dump($test);
            return $test;     
        }

        public function countVoertuig()
        {
            $sql = 'SELECT count(id)
                    FROM voertuig';

            $this->db->query($sql);

            return $this->db->single();
        }

        public function delete($voertuigId)
        {
            $sql ="DELETE FROM voertuiginstructeur
                        WHERE VoertuigId = $voertuigId ";
            // echo $sql;exit();
            $this->db->query($sql);
            // $this->db->bind(':id', $id, PDO::PARAM_INT);
    
            return $this->db->execute();
        }
    }