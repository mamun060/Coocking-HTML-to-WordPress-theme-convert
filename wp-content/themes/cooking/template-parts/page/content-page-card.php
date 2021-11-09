<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Coocking
 * @since 1.0
 * @version 1.0
 */
?>
<div class="site-content grid-container">

<!-- START Main Content -->
<main role="main">

<div class="cart-section">
        <!-- Start Cart Table -->
       
        <div class="site-content grid-100 tablet-grid-100 mobile-grid-100">
                    <div class="grid-100 site-content">
                        <div class="table_desc">
                            <div class="table_page table-responsive">
                                <table>
                                    <!-- Start Cart Table Head -->
                                    <thead>
                                        <tr>
                                            <th class="product_remove">Delete</th>
                                            <th class="product_thumb">Image</th>
                                            <th class="product_name">Product</th>
                                            <th class="product-price">Price</th>
                                            <th class="product_quantity">Quantity</th>
                                            <th class="product_total">Total</th>
                                        </tr>
                                    </thead> <!-- End Cart Table Head -->
                                    <tbody>
                                        <!-- Start Cart Single Item-->
                                        <tr>
                                            <td class="product_remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>
                                            <td class="product_thumb"><a href="product-details-default.html"><img src="assets/images/product/default/home-1/default-1.jpg" alt=""></a></td>
                                            <td class="product_name"><a href="product-details-default.html">Handbag fringilla</a></td>
                                            <td class="product-price">$65.00</td>
                                            <td class="product_quantity"><label>Quantity</label> <input min="1" max="100" value="1" type="number"></td>
                                            <td class="product_total">$130.00</td>
                                        </tr> <!-- End Cart Single Item-->
                                        <!-- Start Cart Single Item-->
                                        <tr>
                                            <td class="product_remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>
                                            <td class="product_thumb"><a href="product-details-default.html"><img src="assets/images/product/default/home-1/default-2.jpg" alt=""></a></td>
                                            <td class="product_name"><a href="product-details-default.html">Handbags justo</a></td>
                                            <td class="product-price">$90.00</td>
                                            <td class="product_quantity"><label>Quantity</label> <input min="1" max="100" value="1" type="number"></td>
                                            <td class="product_total">$180.00</td>
                                        </tr> <!-- End Cart Single Item-->
                                        <!-- Start Cart Single Item-->
                                        <tr>
                                            <td class="product_remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>
                                            <td class="product_thumb"><a href="product-details-default.html"><img src="assets/images/product/default/home-1/default-3.jpg" alt=""></a></td>
                                            <td class="product_name"><a href="product-details-default.html">Handbag elit</a></td>
                                            <td class="product-price">$80.00</td>
                                            <td class="product_quantity"><label>Quantity</label> <input min="1" max="100" value="1" type="number"></td>
                                            <td class="product_total">$160.00</td>
                                        </tr> <!-- End Cart Single Item-->
                                    </tbody>
                                </table>
                            </div>
                            <div class="cart_submit">
                                <button class="btn btn-md btn-golden" type="submit">update cart</button>
                            </div>
                        </div>
                    </div>
        </div>
 <!-- End Cart Table -->

        <!-- Start Coupon Start -->
        <div class="coupon_area">
            
                    <div class="grid-50 tablet-grid-50 mobile-grid-100">
                        <div class="coupon_code left aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                            <h3>Coupon</h3>
                            <div class="coupon_inner">
                                <p>Enter your coupon code if you have one.</p>
                                <input class="mb-2" placeholder="Coupon code" type="text">
                                <button type="submit" class="btn btn-md btn-golden">Apply coupon</button>
                            </div>
                        </div>
                    </div>
                    <div class="grid-50 tablet-grid-50 mobile-grid-100">
                        <div class="coupon_code right aos-init aos-animate" data-aos="fade-up" data-aos-delay="400">
                            <h3>Cart Totals</h3>
                            <div class="coupon_inner">
                                <div class="cart_subtotal">
                                    <p>Subtotal</p>
                                    <p class="cart_amount">$215.00</p>
                                </div>
                                <div class="cart_subtotal ">
                                    <p>Shipping</p>
                                    <p class="cart_amount"><span>Flat Rate:</span> $255.00</p>
                                </div>
                                <a href="#">Calculate shipping</a>

                                <div class="cart_subtotal">
                                    <p>Total</p>
                                    <p class="cart_amount">$215.00</p>
                                </div>
                                <div class="checkout_btn">
                                    <a href="#" class="btn btn-md btn-golden">Proceed to Checkout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                
        </div> <!-- End Coupon Start -->

    </div>

</main>
</div>

