<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateMoonRequest;
use App\Http\Requests\UpdateMoonRequest;
use App\Repositories\MoonRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Response;

class MoonController extends AppBaseController
{
    /** @var  MoonRepository */
    private $moonRepository;

    public function __construct(MoonRepository $moonRepo)
    {
        $this->moonRepository = $moonRepo;
    }

    /**
     * Display a listing of the Moon.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function index(Request $request)
    {
        $moons = $this->moonRepository->all();

        return view('moons.index')
            ->with('moons', $moons);
    }

    /**
     * Show the form for creating a new Moon.
     *
     * @return Response
     */
    public function create()
    {
        return view('moons.create');
    }

    /**
     * Store a newly created Moon in storage.
     *
     * @param CreateMoonRequest $request
     *
     * @return Response
     */
    public function store(CreateMoonRequest $request)
    {
        $input = $request->all();

        $moon = $this->moonRepository->create($input);

        Flash::success('Moon saved successfully.');

        return redirect(route('moons.index'));
    }

    /**
     * Display the specified Moon.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $moon = $this->moonRepository->find($id);

        if (empty($moon)) {
            Flash::error('Moon not found');

            return redirect(route('moons.index'));
        }

        return view('moons.show')->with('moon', $moon);
    }

    /**
     * Show the form for editing the specified Moon.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $moon = $this->moonRepository->find($id);

        if (empty($moon)) {
            Flash::error('Moon not found');

            return redirect(route('moons.index'));
        }

        return view('moons.edit')->with('moon', $moon);
    }

    /**
     * Update the specified Moon in storage.
     *
     * @param int $id
     * @param UpdateMoonRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateMoonRequest $request)
    {
        $moon = $this->moonRepository->find($id);

        if (empty($moon)) {
            Flash::error('Moon not found');

            return redirect(route('moons.index'));
        }

        $moon = $this->moonRepository->update($request->all(), $id);

        Flash::success('Moon updated successfully.');

        return redirect(route('moons.index'));
    }

    /**
     * Remove the specified Moon from storage.
     *
     * @param int $id
     *
     * @throws \Exception
     *
     * @return Response
     */
    public function destroy($id)
    {
        $moon = $this->moonRepository->find($id);

        if (empty($moon)) {
            Flash::error('Moon not found');

            return redirect(route('moons.index'));
        }

        $this->moonRepository->delete($id);

        Flash::success('Moon deleted successfully.');

        return redirect(route('moons.index'));
    }
}
