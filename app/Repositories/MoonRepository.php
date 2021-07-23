<?php

namespace App\Repositories;

use App\Models\Moon;
use App\Repositories\BaseRepository;

/**
 * Class MoonRepository
 * @package App\Repositories
 * @version December 26, 2019, 5:36 am UTC
*/

class MoonRepository extends BaseRepository
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
        return Moon::class;
    }
}
