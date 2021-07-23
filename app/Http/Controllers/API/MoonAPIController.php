<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateMoonAPIRequest;
use App\Http\Requests\API\UpdateMoonAPIRequest;
use App\Models\Moon;
use App\Repositories\MoonRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use Response;

/**
 * Class MoonController
 * @package App\Http\Controllers\API
 */

class MoonAPIController extends AppBaseController
{
    /** @var  MoonRepository */
    private $moonRepository;

    public function __construct(MoonRepository $moonRepo)
    {
        $this->moonRepository = $moonRepo;
    }

    /**
     * Display a listing of the Moon.
     * GET|HEAD /moons
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $moons = $this->moonRepository->all(
            $request->except(['skip', 'limit']),
            $request->get('skip'),
            $request->get('limit')
        );

        return $this->sendResponse($moons->toArray(), 'Moons retrieved successfully');
    }

    /**
     * Store a newly created Moon in storage.
     * POST /moons
     *
     * @param CreateMoonAPIRequest $request
     *
     * @return Response
     */
    public function store(CreateMoonAPIRequest $request)
    {
        $input = $request->all();

        $moon = $this->moonRepository->create($input);

        return $this->sendResponse($moon->toArray(), 'Moon saved successfully');
    }

    /**
     * Display the specified Moon.
     * GET|HEAD /moons/{id}
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        /** @var Moon $moon */
        $moon = $this->moonRepository->find($id);

        if (empty($moon)) {
            return $this->sendError('Moon not found');
        }

        return $this->sendResponse($moon->toArray(), 'Moon retrieved successfully');
    }

    /**
     * Update the specified Moon in storage.
     * PUT/PATCH /moons/{id}
     *
     * @param int $id
     * @param UpdateMoonAPIRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateMoonAPIRequest $request)
    {
        $input = $request->all();

        /** @var Moon $moon */
        $moon = $this->moonRepository->find($id);

        if (empty($moon)) {
            return $this->sendError('Moon not found');
        }

        $moon = $this->moonRepository->update($input, $id);

        return $this->sendResponse($moon->toArray(), 'Moon updated successfully');
    }

    /**
     * Remove the specified Moon from storage.
     * DELETE /moons/{id}
     *
     * @param int $id
     *
     * @throws \Exception
     *
     * @return Response
     */
    public function destroy($id)
    {
        /** @var Moon $moon */
        $moon = $this->moonRepository->find($id);

        if (empty($moon)) {
            return $this->sendError('Moon not found');
        }

        $moon->delete();

        return $this->sendSuccess('Moon deleted successfully');
    }
}
