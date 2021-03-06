<?php

namespace App\Http\Controllers;

use App\Model\Product;
use Illuminate\Http\Request;
use App\Http\Resources\Product\ProductResource;
use App\Http\Resources\Product\ProductCollection;
use App\Http\Requests\ProductRequest;
use Symfony\Component\HttpFoundation\Response;
use Auth;
use App\Exceptions\ProductNotBelongsToUser;

/**
 * @group Products
 *
 * APIs CRUD Products
 */
class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api')->except('index','show');
    }
    /**
     * Show all products  
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return ProductCollection::Collection(Product::paginate(5));
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
     * Create Product 
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        $product = new Product;
        $product->name = $request->name;
        $product->detail = $request->description;
        $product->stock = $request->stock;
        $product->price = $request->price;
        $product->discount = $request->discount;
        $product->save();
        return response([
            'data' => new ProductResource($product)
        ],Response::HTTP_CREATED);      
        
    }

    /**
     * Show the product details
     *
     * @param  \App\Model\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {  // $this->ProductUserCheck($product);
        return new ProductResource($product);
    }

    // /**
    //  * 
    //  *
    //  * @param  \App\Model\Product  $product
    //  * @return \Illuminate\Http\Response
    //  */
    // public function edit(Product $product)
    // {
    //     //
    // }

    /**
     * Update Product 
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {   
        $this->ProductUserCheck($product);
        $request['detail'] = $request->description;
        unset($request['description']);
        $product->update($request->all());
        return response([
            'data' => new ProductResource($product)
        ],Response::HTTP_CREATED); 
    }

    /**
     * Delete Product 
     *
     * @param  \App\Model\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $this->ProductUserCheck($product);
        $product->delete();
        return response(null,Response::HTTP_NO_CONTENT); 
    }

    public function ProductUserCheck($product)
    {
        if(Auth::id() !== $product->user_id) {          
            throw new ProductNotBelongsToUser;
        }
    }
}
