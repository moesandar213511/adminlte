<?php

namespace App\Http\Controllers;

use App\DataTables\MoeDataTable;
use App\Http\Requests;
use App\Http\Requests\CreateMoeRequest;
use App\Http\Requests\UpdateMoeRequest;
use App\Repositories\MoeRepository;
use Flash;
use App\Http\Controllers\AppBaseController;
use Response;

class MoeController extends AppBaseController
{
    /** @var  MoeRepository */
    private $moeRepository;

    public function __construct(MoeRepository $moeRepo)
    {
        $this->moeRepository = $moeRepo;
    }

    /**
     * Display a listing of the Moe.
     *
     * @param MoeDataTable $moeDataTable
     * @return Response
     */
    public function index(MoeDataTable $moeDataTable)
    {
        return $moeDataTable->render('moes.index');
    }

    /**
     * Show the form for creating a new Moe.
     *
     * @return Response
     */
    public function create()
    {
        return view('moes.create');
    }

    /**
     * Store a newly created Moe in storage.
     *
     * @param CreateMoeRequest $request
     *
     * @return Response
     */
    public function store(CreateMoeRequest $request)
    {
        $input = $request->all();

        $moe = $this->moeRepository->create($input);

        Flash::success('Moe saved successfully.');

        return redirect(route('moes.index'));
    }

    /**
     * Display the specified Moe.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $moe = $this->moeRepository->find($id);

        if (empty($moe)) {
            Flash::error('Moe not found');

            return redirect(route('moes.index'));
        }

        return view('moes.show')->with('moe', $moe);
    }

    /**
     * Show the form for editing the specified Moe.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $moe = $this->moeRepository->find($id);

        if (empty($moe)) {
            Flash::error('Moe not found');

            return redirect(route('moes.index'));
        }

        return view('moes.edit')->with('moe', $moe);
    }

    /**
     * Update the specified Moe in storage.
     *
     * @param  int              $id
     * @param UpdateMoeRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateMoeRequest $request)
    {
        $moe = $this->moeRepository->find($id);

        if (empty($moe)) {
            Flash::error('Moe not found');

            return redirect(route('moes.index'));
        }

        $moe = $this->moeRepository->update($request->all(), $id);

        Flash::success('Moe updated successfully.');

        return redirect(route('moes.index'));
    }

    /**
     * Remove the specified Moe from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $moe = $this->moeRepository->find($id);

        if (empty($moe)) {
            Flash::error('Moe not found');

            return redirect(route('moes.index'));
        }

        $this->moeRepository->delete($id);

        Flash::success('Moe deleted successfully.');

        return redirect(route('moes.index'));
    }
}
