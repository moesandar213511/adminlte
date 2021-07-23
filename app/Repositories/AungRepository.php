<?php

namespace App\Repositories;

use App\Models\Aung;
use App\Repositories\BaseRepository;

/**
 * Class AungRepository
 * @package App\Repositories
 * @version December 26, 2019, 2:40 pm UTC
*/

class AungRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name'
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
        return Aung::class;
    }
}
