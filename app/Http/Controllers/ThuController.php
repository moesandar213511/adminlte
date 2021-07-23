<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateThuRequest;
use App\Http\Requests\UpdateThuRequest;
use App\Repositories\ThuRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Response;

class ThuController extends AppBaseController
{
    /** @var  ThuRepository */
    private $thuRepository;

    public function __construct(ThuRepository $thuRepo)
    {
        $this->thuRepository = $thuRepo;
    }

    /**
     * Display a listing of the Thu.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function index(Request $request)
    {
        $thus = $this->thuRepository->all();

        return view('thus.index')
            ->with('thus', $thus);
    }

    /**
     * Show the form for creating a new Thu.
     *
     * @return Response
     */
    public function create()
    {
        return view('thus.create');
    }

    /**
     * Store a newly created Thu in storage.
     *
     * @param CreateThuRequest $request
     *
     * @return Response
     */
    public function store(CreateThuRequest $request)
    {
        $input = $request->all();

        $thu = $this->thuRepository->create($input);

        Flash::success('Thu saved successfully.');

        return redirect(route('thus.index'));
    }

    /**
     * Display the specified Thu.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $thu = $this->thuRepository->find($id);

        if (empty($thu)) {
            Flash::error('Thu not found');

            return redirect(route('thus.index'));
        }

        return view('thus.show')->with('thu', $thu);
    }

    /**
     * Show the form for editing the specified Thu.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $thu = $this->thuRepository->find($id);

        if (empty($thu)) {
            Flash::error('Thu not found');

            return redirect(route('thus.index'));
        }

        return view('thus.edit')->with('thu', $thu);
    }

    /**
     * Update the specified Thu in storage.
     *
     * @param int $id
     * @param UpdateThuRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateThuRequest $request)
    {
        $thu = $this->thuRepository->find($id);

        if (empty($thu)) {
            Flash::error('Thu not found');

            return redirect(route('thus.index'));
        }

        $thu = $this->thuRepository->update($request->all(), $id);

        Flash::success('Thu updated successfully.');

        return redirect(route('thus.index'));
    }

    /**
     * Remove the specified Thu from storage.
     *
     * @param int $id
     *
     * @throws \Exception
     *
     * @return Response
     */
    public function destroy($id)
    {
        $thu = $this->thuRepository->find($id);

        if (empty($thu)) {
            Flash::error('Thu not found');

            return redirect(route('thus.index'));
        }

        $this->thuRepository->delete($id);

        Flash::success('Thu deleted successfully.');

        return redirect(route('thus.index'));
    }
}
