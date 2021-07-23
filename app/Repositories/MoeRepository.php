<?php

namespace App\Repositories;

use App\Models\Moe;
use App\Repositories\BaseRepository;

/**
 * Class MoeRepository
 * @package App\Repositories
 * @version December 26, 2019, 5:49 am UTC
*/

class MoeRepository extends BaseRepository
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
        return Moe::class;
    }
}
