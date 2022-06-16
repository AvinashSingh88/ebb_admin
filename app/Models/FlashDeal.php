<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App;

class FlashDeal extends Model
{
    protected $with = ['flash_deal_translations'];

    public function getTranslation($field = '', $lang = false){
        $lang = $lang == false ? App::getLocale() : $lang;
        $flash_deal_translation = $this->flash_deal_translations->where('lang', $lang)->first();
        return $flash_deal_translation != null ? $flash_deal_translation->$field : $this->$field;
    }

    public function flash_deal_translations(){
      return $this->hasMany(FlashDealTranslation::class);
    }

    public function flash_deal_products()
    {
        return $this->hasMany(FlashDealProduct::class);
    }

    public function flash_deal_get_products($offer_id, $limit)
    {
   
        $deals_product_list = FlashDealProduct::where('flash_deal_id' , $offer_id)
            ->take($limit)->get();
        return $deals_product_list;
        // return $this->FlashDealProduct::limit(2)->get();
    }
}
