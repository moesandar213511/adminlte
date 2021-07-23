<?php

namespace App\Repositories;

use App\Models\ads_webpage;
use App\Repositories\BaseRepository;

/**
 * Class ads_webpageRepository
 * @package App\Repositories
 * @version December 23, 2019, 8:30 am UTC
*/

class ads_webpageRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'ads_id',
        'webpage_id'
    ];

    /**
     * Return searchable fields
     *
     * @return array
     */
    public function getFieldsSearchable()
    {
        return $this->fieldSearchable;
    }

    /**
     * Configure the Model
     **/
    public function model()
    {
        return ads_webpage::class;
    }
}
