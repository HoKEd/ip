<?php

/**
 * This is the model class for table "users".
 *
 * The followings are the available columns in table 'users':
 * @property integer $id
 * @property string $username
 * @property string $password
 * @property string $email
 * @property integer $id_city
 * @property integer $id_country
 * @property string $roles
 * @property string $date_reg
 * @property string $avatar
 * @property string $puntos
 *
 * The followings are the available model relations:
 * @property Desafios[] $desafioses
 * @property Desafios[] $desafioses1
 * @property Globales[] $globales
 * @property Retos[] $retoses
 * @property Cities $idCity
 * @property Countries $idCountry
 */

class Users extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'users';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('username, password, email, id_city, id_country, roles, date_reg, avatar, puntos', 'required'),
			array('id_city, id_country', 'numerical', 'integerOnly'=>true),
			array('username', 'length', 'max'=>50),
			array('password, avatar', 'length', 'max'=>150),
			array('email', 'length', 'max'=>100),
			array('roles', 'length', 'max'=>25),
			array('puntos', 'length', 'max'=>10),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, username, password, email, id_city, id_country, roles, date_reg, avatar, puntos', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'desafioses' => array(self::HAS_MANY, 'Desafios', 'id_retado'),
			'desafioses1' => array(self::HAS_MANY, 'Desafios', 'id_user'),
			'globales' => array(self::HAS_MANY, 'Globales', 'id_user'),
			'retoses' => array(self::HAS_MANY, 'Retos', 'id_user'),
			'idCity' => array(self::BELONGS_TO, 'Cities', 'id_city'),
			'idCountry' => array(self::BELONGS_TO, 'Countries', 'id_country'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'username' => 'Username',
			'password' => 'Password',
			'email' => 'Email',
			'id_city' => 'Id City',
			'id_country' => 'Id Country',
			'roles' => 'Roles',
			'date_reg' => 'Date Reg',
			'avatar' => 'Avatar',
			'puntos' => 'Puntos',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('username',$this->username,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('id_city',$this->id_city);
		$criteria->compare('id_country',$this->id_country);
		$criteria->compare('roles',$this->roles,true);
		$criteria->compare('date_reg',$this->date_reg,true);
		$criteria->compare('avatar',$this->avatar,true);
		$criteria->compare('puntos',$this->puntos,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Users the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
