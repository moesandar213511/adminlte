<?php

namespace App\Repositories;

use App\Models\Thu;
use App\Repositories\BaseRepository;

/**
 * Class ThuRepository
 * @package App\Repositories
 * @version December 26, 2019, 2:40 pm UTC
*/

class ThuRepository extends BaseRepository
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
        return Thu::class;
    }
}
