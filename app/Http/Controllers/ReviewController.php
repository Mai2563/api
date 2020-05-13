<?php

namespace App\Http\Controllers;

use App\Model\Product;
use App\Model\Review;
use Illuminate\Http\Request;
use App\Http\Resources\ReviewResource;
use App\Http\Requests\ReviewRequest;
use Symfony\Component\HttpFoundation\Response;

/**
 * @group Reviews
 *
 * APIs for CRUD Reviews
 */
class ReviewController extends Controller
{
    /**
     * Show Review 
     * 
     * @return \Illuminate\Http\Response
     */
    public function index(Product $product)
    {
        return ReviewResource::collection($product->reviews);
    }

    // /**
    //  * 
    //  *
    //  * @return \Illuminate\Http\Response
    //  */
    // public function create()
    // {
    //     //
    // }

    /**
     * Create Review 
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ReviewRequest $request, Product $product)
    {
        $review = new Review($request->all());
        $product->reviews()->save($review);          
        return response([
            'data' => new ReviewResource($review)
        ],Response::HTTP_CREATED);
    }

    // /**
    //  * 
    //  *
    //  * @param  \App\Model\Review  $review
    //  * @return \Illuminate\Http\Response
    //  */
    // public function show(Review $review)
    // {
    //     //
    // }

    // /**
    //  * 
    //  *
    //  * @param  \App\Model\Review  $review
    //  * @return \Illuminate\Http\Response
    //  */
    // public function edit(Review $review)
    // {
    //     //
    // }

    /**
     * Update Review 
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product, Review $review)
    {
        $review->update($request->all());
        return response([
            'data' => new ReviewResource($review)
        ],Response::HTTP_CREATED);
    }

    /**
     * Delete Review 
     *
     * @param  \App\Model\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product, Review $review)
    {
        $review->delete();
        return response(null,Response::HTTP_NO_CONTENT);
    }
}
