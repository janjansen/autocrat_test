<?php
/**
 * Created by PhpStorm.
 * User: rosomkin
 * Date: 17.02.18
 * Time: 18:21
 */

/**
 * @var $report TopAuthorsReport
 */

$this->pageTitle=Yii::app()->name . ' - ТОП10';
$this->breadcrumbs=['ТОП10',];
?>

<form method="post" action="<?=$this->createUrl('site/report')?>">
    Год: <select name="year">
<?php foreach ($report->getAllPrintedAtDates() as $year) : ?>
    <option
        value="<?=$year?>"
        <?=($report->getYear() == $year ? 'selected="selected"' : '')?>
    ><?=$year?></option>
<?php endforeach; ?>
    </select>
    <input type="submit">
</form>

<div class="items">
    <?php foreach ($report->getAuthors() as $author) : ?>
        <div class="view">
            <b><?=($author->l_name . ' ' . $author->f_name . ' ' . $author->patronymic)?></b><br>
            <p>Кол-во книг: <?=$author->book_cnt?></p>
        </div>
    <?php endforeach; ?>
</div>