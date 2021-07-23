<?php

namespace App\Repositories;

use App\Models\Process;
use App\Repositories\BaseRepository;

/**
 * Class ProcessRepository
 * @package App\Repositories
 * @version December 26, 2019, 2:19 pm UTC
*/

class ProcessRepository extends BaseRepository
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
        return Process::class;
    }
}
