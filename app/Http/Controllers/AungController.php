<?php

namespace App\Http\Controllers;

use App\DataTables\AungDataTable;
use App\Http\Requests;
use App\Http\Requests\CreateAungRequest;
use App\Http\Requests\UpdateAungRequest;
use App\Repositories\AungRepository;
use Flash;
use App\Http\Controllers\AppBaseController;
use Response;

class AungController extends AppBaseController
{
    /** @var  AungRepository */
    private $aungRepository;

    public function __construct(AungRepository $aungRepo)
    {
        $this->aungRepository = $aungRepo;
    }

    /**
     * Display a listing of the Aung.
     *
     * @param AungDataTable $aungDataTable
     * @return Response
     */
    public function index(AungDataTable $aungDataTable)
    {
        return $aungDataTable->render('aungs.index');
    }

    /**
     * Show the form for creating a new Aung.
     *
     * @return Response
     */
    public function create()
    {
        return view('aungs.create');
    }

    /**
     * Store a newly created Aung in storage.
     *
     * @param CreateAungRequest $request
     *
     * @return Response
     */
    public function store(CreateAungRequest $request)
    {
        $input = $request->all();

        $aung = $this->aungRepository->create($input);

        Flash::success('Aung saved successfully.');

        return redirect(route('aungs.index'));
    }

    /**
     * Display the specified Aung.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $aung = $this->aungRepository->find($id);

        if (empty($aung)) {
            Flash::error('Aung not found');

            return redirect(route('aungs.index'));
        }

        return view('aungs.show')->with('aung', $aung);
    }

    /**
     * Show the form for editing the specified Aung.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $aung = $this->aungRepository->find($id);

        if (empty($aung)) {
            Flash::error('Aung not found');

            return redirect(route('aungs.index'));
        }

        return view('aungs.edit')->with('aung', $aung);
    }

    /**
     * Update the specified Aung in storage.
     *
     * @param  int              $id
     * @param UpdateAungRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateAungRequest $request)
    {
        $aung = $this->aungRepository->find($id);

        if (empty($aung)) {
            Flash::error('Aung not found');

            return redirect(route('aungs.index'));
        }

        $aung = $this->aungRepository->update($request->all(), $id);

        Flash::success('Aung updated successfully.');

        return redirect(route('aungs.index'));
    }

    /**
     * Remove the specified Aung from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $aung = $this->aungRepository->find($id);

        if (empty($aung)) {
            Flash::error('Aung not found');

            return redirect(route('aungs.index'));
        }

        $this->aungRepository->delete($id);

        Flash::success('Aung deleted successfully.');

        return redirect(route('aungs.index'));
    }
}
