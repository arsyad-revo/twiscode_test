import 'package:flutter/material.dart';

class Product {
  String? id;
  String? catId;
  String? subCatId;
  String? itemTypeId;
  String? itemPriceTypeId;
  String? itemCurrencyId;
  String? itemLocationId;
  String? conditionOfItemId;
  String? dealOptionRemark;
  String? description;
  String? highlightInfo;
  String? price;
  String? dealOptionId;
  String? brand;
  String? businessMode;
  String? isSoldOut;
  String? title;
  String? address;
  String? lat;
  String? lng;
  String? status;
  String? addedDate;
  String? addedUserId;
  String? addedUserName;
  String? updatedDate;
  String? updatedUserId;
  String? updatedFlag;
  String? touchCount;
  String? favouriteCount;
  String? isPaid;
  String? isAvailable;
  String? isPreOrder;
  String? poStart;
  String? poEnd;
  String? poSlot;
  String? poDelivery;
  String? isHalal;
  String? weight;
  String? locationId;
  String? locationName;
  String? locationType;
  String? isFree;
  String? pickupTime;
  String? appearDuration;
  String? stock;
  String? isFood;
  String? addedDateStr;
  String? paidStatus;
  String? photoCount;
  DefaultPhoto? defaultPhoto;
  Category? category;
  SubCategory? subCategory;
  ItemType? itemType;
  ItemPriceType? itemPriceType;
  ItemCurrency? itemCurrency;
  ItemLocation? itemLocation;
  ItemType? conditionOfItem;
  ItemType? dealOption;
  User? user;
  String? isFavourited;
  String? isOwner;
  GetAddress? getAddress;
  List<GetDelivery>? getDelivery;
  ValueNotifier<int>? cartQuantity;

  Product(
      {this.id,
      this.catId,
      this.subCatId,
      this.itemTypeId,
      this.itemPriceTypeId,
      this.itemCurrencyId,
      this.itemLocationId,
      this.conditionOfItemId,
      this.dealOptionRemark,
      this.description,
      this.highlightInfo,
      this.price,
      this.dealOptionId,
      this.brand,
      this.businessMode,
      this.isSoldOut,
      this.title,
      this.address,
      this.lat,
      this.lng,
      this.status,
      this.addedDate,
      this.addedUserId,
      this.addedUserName,
      this.updatedDate,
      this.updatedUserId,
      this.updatedFlag,
      this.touchCount,
      this.favouriteCount,
      this.isPaid,
      this.isAvailable,
      this.isPreOrder,
      this.poStart,
      this.poEnd,
      this.poSlot,
      this.poDelivery,
      this.isHalal,
      this.weight,
      this.locationId,
      this.locationName,
      this.locationType,
      this.isFree,
      this.pickupTime,
      this.appearDuration,
      this.stock,
      this.isFood,
      this.addedDateStr,
      this.paidStatus,
      this.photoCount,
      this.defaultPhoto,
      this.category,
      this.subCategory,
      this.itemType,
      this.itemPriceType,
      this.itemCurrency,
      this.itemLocation,
      this.conditionOfItem,
      this.dealOption,
      this.user,
      this.isFavourited,
      this.isOwner,
      this.getAddress,
      this.getDelivery,
      this.cartQuantity});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    catId = json['cat_id'];
    subCatId = json['sub_cat_id'];
    itemTypeId = json['item_type_id'];
    itemPriceTypeId = json['item_price_type_id'];
    itemCurrencyId = json['item_currency_id'];
    itemLocationId = json['item_location_id'];
    conditionOfItemId = json['condition_of_item_id'];
    dealOptionRemark = json['deal_option_remark'];
    description = json['description'];
    highlightInfo = json['highlight_info'];
    price = json['price'];
    dealOptionId = json['deal_option_id'];
    brand = json['brand'];
    businessMode = json['business_mode'];
    isSoldOut = json['is_sold_out'];
    title = json['title'];
    address = json['address'];
    lat = json['lat'];
    lng = json['lng'];
    status = json['status'];
    addedDate = json['added_date'];
    addedUserId = json['added_user_id'];
    addedUserName = json['added_user_name'];
    updatedDate = json['updated_date'];
    updatedUserId = json['updated_user_id'];
    updatedFlag = json['updated_flag'];
    touchCount = json['touch_count'];
    favouriteCount = json['favourite_count'];
    isPaid = json['is_paid'];
    isAvailable = json['is_available'];
    isPreOrder = json['is_pre_order'];
    poStart = json['po_start'];
    poEnd = json['po_end'];
    poSlot = json['po_slot'];
    poDelivery = json['po_delivery'];
    isHalal = json['is_halal'];
    weight = json['weight'];
    locationId = json['location_id'];
    locationName = json['location_name'];
    locationType = json['location_type'];
    isFree = json['is_free'];
    pickupTime = json['pickup_time'];
    appearDuration = json['appear_duration'];
    stock = json['stock'];
    isFood = json['is_food'];
    addedDateStr = json['added_date_str'];
    paidStatus = json['paid_status'];
    photoCount = json['photo_count'];
    defaultPhoto = json['default_photo'] != null
        ? DefaultPhoto.fromJson(json['default_photo'])
        : null;
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    subCategory = json['sub_category'] != null
        ? SubCategory.fromJson(json['sub_category'])
        : null;
    itemType =
        json['item_type'] != null ? ItemType.fromJson(json['item_type']) : null;
    itemPriceType = json['item_price_type'] != null
        ? ItemPriceType.fromJson(json['item_price_type'])
        : null;
    itemCurrency = json['item_currency'] != null
        ? ItemCurrency.fromJson(json['item_currency'])
        : null;
    itemLocation = json['item_location'] != null
        ? ItemLocation.fromJson(json['item_location'])
        : null;
    conditionOfItem = json['condition_of_item'] != null
        ? ItemType.fromJson(json['condition_of_item'])
        : null;
    dealOption = json['deal_option'] != null
        ? ItemType.fromJson(json['deal_option'])
        : null;
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    isFavourited = json['is_favourited'];
    isOwner = json['is_owner'];
    getAddress = json['get_address'] != null && json['get_address'] != ""
        ? GetAddress.fromJson(json['get_address'])
        : null;
    if (json['get_delivery'] != null && json['get_delivery'] != "") {
      getDelivery = <GetDelivery>[];
      json['get_delivery'].forEach((v) {
        getDelivery!.add(GetDelivery.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cat_id'] = catId;
    data['sub_cat_id'] = subCatId;
    data['item_type_id'] = itemTypeId;
    data['item_price_type_id'] = itemPriceTypeId;
    data['item_currency_id'] = itemCurrencyId;
    data['item_location_id'] = itemLocationId;
    data['condition_of_item_id'] = conditionOfItemId;
    data['deal_option_remark'] = dealOptionRemark;
    data['description'] = description;
    data['highlight_info'] = highlightInfo;
    data['price'] = price;
    data['deal_option_id'] = dealOptionId;
    data['brand'] = brand;
    data['business_mode'] = businessMode;
    data['is_sold_out'] = isSoldOut;
    data['title'] = title;
    data['address'] = address;
    data['lat'] = lat;
    data['lng'] = lng;
    data['status'] = status;
    data['added_date'] = addedDate;
    data['added_user_id'] = addedUserId;
    data['added_user_name'] = addedUserName;
    data['updated_date'] = updatedDate;
    data['updated_user_id'] = updatedUserId;
    data['updated_flag'] = updatedFlag;
    data['touch_count'] = touchCount;
    data['favourite_count'] = favouriteCount;
    data['is_paid'] = isPaid;
    data['is_available'] = isAvailable;
    data['is_pre_order'] = isPreOrder;
    data['po_start'] = poStart;
    data['po_end'] = poEnd;
    data['po_slot'] = poSlot;
    data['po_delivery'] = poDelivery;
    data['is_halal'] = isHalal;
    data['weight'] = weight;
    data['location_id'] = locationId;
    data['location_name'] = locationName;
    data['location_type'] = locationType;
    data['is_free'] = isFree;
    data['pickup_time'] = pickupTime;
    data['appear_duration'] = appearDuration;
    data['stock'] = stock;
    data['is_food'] = isFood;
    data['added_date_str'] = addedDateStr;
    data['paid_status'] = paidStatus;
    data['photo_count'] = photoCount;
    if (defaultPhoto != null) {
      data['default_photo'] = defaultPhoto!.toJson();
    }
    if (category != null) {
      data['category'] = category!.toJson();
    }
    if (subCategory != null) {
      data['sub_category'] = subCategory!.toJson();
    }
    if (itemType != null) {
      data['item_type'] = itemType!.toJson();
    }
    if (itemPriceType != null) {
      data['item_price_type'] = itemPriceType!.toJson();
    }
    if (itemCurrency != null) {
      data['item_currency'] = itemCurrency!.toJson();
    }
    if (itemLocation != null) {
      data['item_location'] = itemLocation!.toJson();
    }
    if (conditionOfItem != null) {
      data['condition_of_item'] = conditionOfItem!.toJson();
    }
    if (dealOption != null) {
      data['deal_option'] = dealOption!.toJson();
    }
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['is_favourited'] = isFavourited;
    data['is_owner'] = isOwner;
    if (getAddress != null) {
      data['get_address'] = getAddress!.toJson();
    }
    if (getDelivery != null && getDelivery!.isNotEmpty) {
      data['get_delivery'] = getDelivery!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Category {
  String? catId;
  String? catName;
  String? catOrdering;
  String? status;
  String? addedDate;
  String? isFood;
  DefaultPhoto? defaultPhoto;
  DefaultPhoto? defaultIcon;

  Category(
      {this.catId,
      this.catName,
      this.catOrdering,
      this.status,
      this.addedDate,
      this.isFood,
      this.defaultPhoto,
      this.defaultIcon});

  Category.fromJson(Map<String, dynamic> json) {
    catId = json['cat_id'];
    catName = json['cat_name'];
    catOrdering = json['cat_ordering'];
    status = json['status'];
    addedDate = json['added_date'];
    isFood = json['is_food'];
    defaultPhoto = json['default_photo'] != null
        ? DefaultPhoto.fromJson(json['default_photo'])
        : null;
    defaultIcon = json['default_icon'] != null
        ? DefaultPhoto.fromJson(json['default_icon'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cat_id'] = catId;
    data['cat_name'] = catName;
    data['cat_ordering'] = catOrdering;
    data['status'] = status;
    data['added_date'] = addedDate;
    data['is_food'] = isFood;
    if (defaultPhoto != null) {
      data['default_photo'] = defaultPhoto!.toJson();
    }
    if (defaultIcon != null) {
      data['default_icon'] = defaultIcon!.toJson();
    }
    return data;
  }
}

class SubCategory {
  String? id;
  String? catId;
  String? name;
  String? status;
  String? addedDate;
  String? addedUserId;
  String? updatedDate;
  String? updatedUserId;
  String? updatedFlag;
  DefaultPhoto? defaultPhoto;

  SubCategory(
      {this.id,
      this.catId,
      this.name,
      this.status,
      this.addedDate,
      this.addedUserId,
      this.updatedDate,
      this.updatedUserId,
      this.updatedFlag,
      this.defaultPhoto});

  SubCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    catId = json['cat_id'];
    name = json['name'];
    status = json['status'];
    addedDate = json['added_date'];
    addedUserId = json['added_user_id'];
    updatedDate = json['updated_date'];
    updatedUserId = json['updated_user_id'];
    updatedFlag = json['updated_flag'];
    defaultPhoto = json['default_photo'] != null
        ? DefaultPhoto.fromJson(json['default_photo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cat_id'] = catId;
    data['name'] = name;
    data['status'] = status;
    data['added_date'] = addedDate;
    data['added_user_id'] = addedUserId;
    data['updated_date'] = updatedDate;
    data['updated_user_id'] = updatedUserId;
    data['updated_flag'] = updatedFlag;
    if (defaultPhoto != null) {
      data['default_photo'] = defaultPhoto!.toJson();
    }
    return data;
  }
}

class DefaultPhoto {
  String? imgId;
  String? imgParentId;
  String? imgType;
  String? imgPath;
  String? imgWidth;
  String? imgHeight;
  String? imgDesc;
  String? isEmptyObject;

  DefaultPhoto(
      {this.imgId,
      this.imgParentId,
      this.imgType,
      this.imgPath,
      this.imgWidth,
      this.imgHeight,
      this.imgDesc,
      this.isEmptyObject});

  DefaultPhoto.fromJson(Map<String, dynamic> json) {
    imgId = json['img_id'];
    imgParentId = json['img_parent_id'];
    imgType = json['img_type'];
    imgPath = json['img_path'];
    imgWidth = json['img_width'];
    imgHeight = json['img_height'];
    imgDesc = json['img_desc'];
    isEmptyObject = json['is_empty_object'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['img_id'] = imgId;
    data['img_parent_id'] = imgParentId;
    data['img_type'] = imgType;
    data['img_path'] = imgPath;
    data['img_width'] = imgWidth;
    data['img_height'] = imgHeight;
    data['img_desc'] = imgDesc;
    data['is_empty_object'] = isEmptyObject;
    return data;
  }
}

class ItemType {
  String? id;
  String? name;
  String? status;
  String? addedDate;
  String? isEmptyObject;

  ItemType(
      {this.id, this.name, this.status, this.addedDate, this.isEmptyObject});

  ItemType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    addedDate = json['added_date'];
    isEmptyObject = json['is_empty_object'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['added_date'] = addedDate;
    data['is_empty_object'] = isEmptyObject;
    return data;
  }
}

class ItemPriceType {
  String? id;
  String? name;
  String? status;
  String? addedDate;

  ItemPriceType({this.id, this.name, this.status, this.addedDate});

  ItemPriceType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    addedDate = json['added_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['added_date'] = addedDate;
    return data;
  }
}

class ItemCurrency {
  String? id;
  String? currencyShortForm;
  String? currencySymbol;
  String? status;
  String? addedDate;
  String? isEmptyObject;

  ItemCurrency(
      {this.id,
      this.currencyShortForm,
      this.currencySymbol,
      this.status,
      this.addedDate,
      this.isEmptyObject});

  ItemCurrency.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    currencyShortForm = json['currency_short_form'];
    currencySymbol = json['currency_symbol'];
    status = json['status'];
    addedDate = json['added_date'];
    isEmptyObject = json['is_empty_object'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['currency_short_form'] = currencyShortForm;
    data['currency_symbol'] = currencySymbol;
    data['status'] = status;
    data['added_date'] = addedDate;
    data['is_empty_object'] = isEmptyObject;
    return data;
  }
}

class ItemLocation {
  String? id;
  String? name;
  String? lat;
  String? lng;
  String? status;
  String? addedDate;
  String? isEmptyObject;

  ItemLocation(
      {this.id,
      this.name,
      this.lat,
      this.lng,
      this.status,
      this.addedDate,
      this.isEmptyObject});

  ItemLocation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lat = json['lat'];
    lng = json['lng'];
    status = json['status'];
    addedDate = json['added_date'];
    isEmptyObject = json['is_empty_object'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['lat'] = lat;
    data['lng'] = lng;
    data['status'] = status;
    data['added_date'] = addedDate;
    data['is_empty_object'] = isEmptyObject;
    return data;
  }
}

class User {
  String? userId;
  String? userIsSysAdmin;
  String? facebookId;
  String? googleId;
  String? phoneId;
  String? appleId;
  String? userName;
  String? userEmail;
  String? userPhone;
  String? userAddress;
  String? city;
  String? userAboutMe;
  String? userCoverPhoto;
  String? userProfilePhoto;
  String? roleId;
  String? status;
  String? isBanned;
  String? addedDate;
  String? deviceToken;
  String? code;
  String? overallRating;
  String? whatsapp;
  String? messenger;
  String? followerCount;
  String? followingCount;
  String? emailVerify;
  String? facebookVerify;
  String? googleVerify;
  String? phoneVerify;
  String? appleVerify;
  String? ratingCount;
  String? isFollowed;
  RatingDetails? ratingDetails;

  User(
      {this.userId,
      this.userIsSysAdmin,
      this.facebookId,
      this.googleId,
      this.phoneId,
      this.appleId,
      this.userName,
      this.userEmail,
      this.userPhone,
      this.userAddress,
      this.city,
      this.userAboutMe,
      this.userCoverPhoto,
      this.userProfilePhoto,
      this.roleId,
      this.status,
      this.isBanned,
      this.addedDate,
      this.deviceToken,
      this.code,
      this.overallRating,
      this.whatsapp,
      this.messenger,
      this.followerCount,
      this.followingCount,
      this.emailVerify,
      this.facebookVerify,
      this.googleVerify,
      this.phoneVerify,
      this.appleVerify,
      this.ratingCount,
      this.isFollowed,
      this.ratingDetails});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userIsSysAdmin = json['user_is_sys_admin'];
    facebookId = json['facebook_id'];
    googleId = json['google_id'];
    phoneId = json['phone_id'];
    appleId = json['apple_id'];
    userName = json['user_name'];
    userEmail = json['user_email'];
    userPhone = json['user_phone'];
    userAddress = json['user_address'];
    city = json['city'];
    userAboutMe = json['user_about_me'];
    userCoverPhoto = json['user_cover_photo'];
    userProfilePhoto = json['user_profile_photo'];
    roleId = json['role_id'];
    status = json['status'];
    isBanned = json['is_banned'];
    addedDate = json['added_date'];
    deviceToken = json['device_token'];
    code = json['code'];
    overallRating = json['overall_rating'];
    whatsapp = json['whatsapp'];
    messenger = json['messenger'];
    followerCount = json['follower_count'];
    followingCount = json['following_count'];
    emailVerify = json['email_verify'];
    facebookVerify = json['facebook_verify'];
    googleVerify = json['google_verify'];
    phoneVerify = json['phone_verify'];
    appleVerify = json['apple_verify'];
    ratingCount = json['rating_count'];
    isFollowed = json['is_followed'];
    ratingDetails = json['rating_details'] != null
        ? RatingDetails.fromJson(json['rating_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['user_is_sys_admin'] = userIsSysAdmin;
    data['facebook_id'] = facebookId;
    data['google_id'] = googleId;
    data['phone_id'] = phoneId;
    data['apple_id'] = appleId;
    data['user_name'] = userName;
    data['user_email'] = userEmail;
    data['user_phone'] = userPhone;
    data['user_address'] = userAddress;
    data['city'] = city;
    data['user_about_me'] = userAboutMe;
    data['user_cover_photo'] = userCoverPhoto;
    data['user_profile_photo'] = userProfilePhoto;
    data['role_id'] = roleId;
    data['status'] = status;
    data['is_banned'] = isBanned;
    data['added_date'] = addedDate;
    data['device_token'] = deviceToken;
    data['code'] = code;
    data['overall_rating'] = overallRating;
    data['whatsapp'] = whatsapp;
    data['messenger'] = messenger;
    data['follower_count'] = followerCount;
    data['following_count'] = followingCount;
    data['email_verify'] = emailVerify;
    data['facebook_verify'] = facebookVerify;
    data['google_verify'] = googleVerify;
    data['phone_verify'] = phoneVerify;
    data['apple_verify'] = appleVerify;
    data['rating_count'] = ratingCount;
    data['is_followed'] = isFollowed;
    if (ratingDetails != null) {
      data['rating_details'] = ratingDetails!.toJson();
    }
    return data;
  }
}

class RatingDetails {
  String? fiveStarCount;
  String? fiveStarPercent;
  String? fourStarCount;
  String? fourStarPercent;
  String? threeStarCount;
  String? threeStarPercent;
  String? twoStarCount;
  String? twoStarPercent;
  String? oneStarCount;
  String? oneStarPercent;
  String? totalRatingCount;
  String? totalRatingValue;

  RatingDetails(
      {this.fiveStarCount,
      this.fiveStarPercent,
      this.fourStarCount,
      this.fourStarPercent,
      this.threeStarCount,
      this.threeStarPercent,
      this.twoStarCount,
      this.twoStarPercent,
      this.oneStarCount,
      this.oneStarPercent,
      this.totalRatingCount,
      this.totalRatingValue});

  RatingDetails.fromJson(Map<String, dynamic> json) {
    fiveStarCount = json['five_star_count'];
    fiveStarPercent = json['five_star_percent'];
    fourStarCount = json['four_star_count'];
    fourStarPercent = json['four_star_percent'];
    threeStarCount = json['three_star_count'];
    threeStarPercent = json['three_star_percent'];
    twoStarCount = json['two_star_count'];
    twoStarPercent = json['two_star_percent'];
    oneStarCount = json['one_star_count'];
    oneStarPercent = json['one_star_percent'];
    totalRatingCount = json['total_rating_count'];
    totalRatingValue = json['total_rating_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['five_star_count'] = fiveStarCount;
    data['five_star_percent'] = fiveStarPercent;
    data['four_star_count'] = fourStarCount;
    data['four_star_percent'] = fourStarPercent;
    data['three_star_count'] = threeStarCount;
    data['three_star_percent'] = threeStarPercent;
    data['two_star_count'] = twoStarCount;
    data['two_star_percent'] = twoStarPercent;
    data['one_star_count'] = oneStarCount;
    data['one_star_percent'] = oneStarPercent;
    data['total_rating_count'] = totalRatingCount;
    data['total_rating_value'] = totalRatingValue;
    return data;
  }
}

class GetAddress {
  String? id;
  String? bsItemsId;
  String? provinceId;
  String? province;
  String? cityId;
  String? city;
  String? districtId;
  String? district;
  String? zipCode;
  String? longitude;
  String? latitude;
  String? fullAddress;
  String? contactPerson;
  String? nameAddress;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  GetAddress(
      {this.id,
      this.bsItemsId,
      this.provinceId,
      this.province,
      this.cityId,
      this.city,
      this.districtId,
      this.district,
      this.zipCode,
      this.longitude,
      this.latitude,
      this.fullAddress,
      this.contactPerson,
      this.nameAddress,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  GetAddress.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bsItemsId = json['bs_items_id'];
    provinceId = json['province_id'];
    province = json['province'];
    cityId = json['city_id'];
    city = json['city'];
    districtId = json['district_id'];
    district = json['district'];
    zipCode = json['zip_code'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    fullAddress = json['full_address'];
    contactPerson = json['contact_person'];
    nameAddress = json['name_address'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['bs_items_id'] = bsItemsId;
    data['province_id'] = provinceId;
    data['province'] = province;
    data['city_id'] = cityId;
    data['city'] = city;
    data['district_id'] = districtId;
    data['district'] = district;
    data['zip_code'] = zipCode;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['full_address'] = fullAddress;
    data['contact_person'] = contactPerson;
    data['name_address'] = nameAddress;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}

class GetDelivery {
  String? id;
  String? bsItemsId;
  String? deliveryName;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  GetDelivery(
      {this.id,
      this.bsItemsId,
      this.deliveryName,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  GetDelivery.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bsItemsId = json['bs_items_id'];
    deliveryName = json['delivery_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['bs_items_id'] = bsItemsId;
    data['delivery_name'] = deliveryName;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}
