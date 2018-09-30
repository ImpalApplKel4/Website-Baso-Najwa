<?php 
 
class KaryawanModel extends CI_Model{ 

    function getDataKaryawan(){   
        $query = $this->db->get('karyawan');
        // Jika data lebih dari 0, return array
        if( $query->num_rows() > 0 ) {
            $result = $query->result();
        } else {    
            $result = FALSE;
        }

        return $result;
    }

   

    function getDetailKaryawan($id){   
        $query = $this->db->get_where('karyawan', array('NIK' => $id))->result();

        foreach ($query as $data) {
            $data1 = array(
                'NIK' => $data->NIK,
                'namaKar' => $data->namKar,
                'divisi'=> $data->divisi,
                'gaji' => $data->gaji,
                'noHP' => $data->noHP,
                'username' => $data->username,

            );
        }
        
        return $data1;
    }

    function insertKaryawan($data){
        $param = array(
            "NIK"=>$data['NIK'],
            "namaKar"=>$data['namaKar'],
            "divisi"=>$data['divisi'],
            "gaji"=>$data['gaji'],
            "noHP"=>$data['noHP'],
            "username"=>$data['username']
        );
        $insert = $this->db->insert('karyawan', $param);
        if ($insert){
            return TRUE;
        }else{
            return FALSE;
        }
    }
    function updateBerita($data){
        $table = 'karyawan';
        $param = array(
            "NIK"=>$data['NIK'],
            "namaKar"=>$data['namaKar'],
            "divisi"=>$data['divisi'],
            "gaji"=>$data['gaji'],
            "noHP"=>$data['noHP'],
            "username"=>$data['username']
        );
        $this->db->where('NIK', $data['NIK']);
        $update = $this->db->update($table,$param);
        if ($update){
            return TRUE;
        }else{
            return FALSE;
        }
    }
    function deleteBerita($id){
        $table = 'karyawan';
        $this->db->where('NIK', $id);
        $delete = $this->db->delete($table);

        if ($delete){
            return TRUE;
        }else{
            return FALSE;
        }
    }

}