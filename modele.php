<?php

class BaseDeDonnee{
    private function getBdd($servname,$dbname,$user,$pass) {
        $dbco = new PDO("mysql:host=$servname;dbname=$dbname", $user, $pass);
        $dbco->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $dbco;
    }
    
    public function getRecettes () {
        $servname = 'localhost';
        $dbname = 'blog_culinaire';
        $user = 'root';
        $pass = '';

        $dbco = getBdd($servname,$dbname,$user,$pass);
        $sth = $dbco->prepare("
            SELECT rec_id, rec_nom, rec_resume, COUNT(com_id) 
            FROM t_recette LEFT JOIN t_commentaire ON id_rec = rec_id 
            GROUP BY rec_id ORDER BY rec_id DESC LIMIT 5
        ");
        $dbco = NULL;
        $sth->execute();
        return $sth->fetchALL(PDO::FETCH_ASSOC);
    }

    public function getSingleRecette($id) {
        $servname = 'localhost';
        $dbname = 'blog_culinaire';
        $user = 'root';
        $pass = '';

        $dbco = getBdd($servname,$dbname,$user,$pass);

        $sth = $dbco->prepare('
            SELECT * FROM t_recette LEFT JOIN t_commentaire ON  id_rec=rec_id WHERE rec_id = :id
        ');
        $sth->bindValue(':id',$id, PDO::PARAM_STR);
        $sth->execute();
        
        if($sth->rowCount() == 0){
            throw new Exception(" Aucune données dans la base!");  
        } else {
            $dbco = NULL; 
            return $sth->fetchALL(PDO::FETCH_ASSOC);
        }  
        
        $dbco = NULL;      
    }

    public function getRecetteByCategory ($category) {
        $servname = 'localhost';
        $dbname = 'blog_culinaire';
        $user = 'root';
        $pass = '';

        $dbco = getBdd($servname,$dbname,$user,$pass);
        $sth = $dbco->prepare("
        SELECT rec_id, rec_nom, rec_resume, rec_categorie, COUNT(com_id) FROM t_recette LEFT JOIN t_commentaire ON id_rec = rec_id GROUP BY rec_id HAVING rec_categorie = :category ORDER BY rec_id DESC LIMIT 5
        ");
        $sth->bindValue(':category',$category, PDO::PARAM_STR);
        $sth->execute();
        $dbco = NULL;
        if($sth->rowCount() == 0){
            throw new Exception(" Aucune données dans la base!");  
        } else {
            $dbco = NULL; 
            return $sth->fetchALL(PDO::FETCH_ASSOC);
        }
    }
}