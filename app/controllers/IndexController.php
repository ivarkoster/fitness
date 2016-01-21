<?php

use Phalcon\Mvc\Model\Criteria;

class IndexController extends ControllerBase
{

    public function indexAction()
    {
		$query = Measurement::find("measurement_type = 2 order by date");

		var_dump($query);exit;
    }

}

