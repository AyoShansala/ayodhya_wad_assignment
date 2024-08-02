class ApiEndpoints {
  static const baseURL = 'https://staging-admin.slashdeals.lk/api/';

  /// explore vendors
  static String vendors = "${baseURL}get-company-by-category/5";

  /// explore coupons
  static String coupon = "${baseURL}get-public-coupons-by-category/3";

  /// vendor profile
  static String vendorProfile = "${baseURL}public-company-v3/"; //192
}
