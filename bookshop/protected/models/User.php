<?php
/**
 * Модель User
 *
 * @property integer $id
 * @property string $login
 * @property string $password
 * @property string $role
 */
class User extends CActiveRecord
{
    const ROLE_USER = 'user';
    const ROLE_MANAGER = 'manager';

    public static function model($className=__CLASS__)
    {
        return parent::model($className);
    }

    public function tableName()
    {
        return 'tbl_user';
    }

    protected function beforeSave(){
        $this->password = md5($this->password);
        return parent::beforeSave();
    }
}