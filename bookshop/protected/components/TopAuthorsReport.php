<?php
/**
 * Created by PhpStorm.
 * User: rosomkin
 * Date: 18.02.18
 * Time: 15:34
 */

class TopAuthorsReport
{
    protected $year;

    public function __construct($year)
    {
        $this->year = $year;
    }

    /**
     * @return mixed
     */
    public static function getAllPrintedAtDates()
    {
        return Yii::app()->db->createCommand()
            ->selectDistinct('printed_at')
            ->from('book')
            ->order('printed_at')
            ->queryColumn();
    }

    /**
     * @return Author[]
     */
    public function getAuthors()
    {
        $q = <<<RAW_SQL
            SELECT a.*, count(ba.book_id) as book_cnt
            FROM book_author ba
            JOIN author a ON ba.author_id == a.id
            JOIN book b ON b.id = ba.book_id
            WHERE b.printed_at = :year
            GROUP BY ba.author_id
            ORDER BY count(ba.book_id) DESC
            LIMIT 10
RAW_SQL;
        $cmd = Yii::app()->db->createCommand($q);
        $cmd->bindParam(":year",$this->year,PDO::PARAM_INT);
        $data = $cmd->queryAll();
        return Author::model()->populateRecords($data);
    }

    /**
     * @return mixed
     */
    public function getYear()
    {
        return $this->year;
    }
}