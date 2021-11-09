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

        <div class="checkout-section">
                <!-- Start User Details Checkout Form -->
                <div class="checkout_form aos-init aos-animate" data-aos="fade-up" data-aos-delay="400">
                    
                        <div class="grid-50 tablet-grid-50 mobile-grid-100">
                            <form action="#">
                                <h3>Billing Details</h3>
                             
                                    <div class="grid-50 tablet-grid-50 mobile-grid-100">
                                        <div class="default-form-box">
                                            <label>First Name <span>*</span></label>
                                            <input type="text">
                                        </div>
                                    </div>
                                    <div class="grid-50 tablet-grid-50 mobile-grid-100">
                                        <div class="default-form-box">
                                            <label>Last Name <span>*</span></label>
                                            <input type="text">
                                        </div>
                                    </div>
                                    <div class="grid-100 tablet-grid-100 mobile-grid-100">
                                        <div class="default-form-box">
                                            <label>Company Name</label>
                                            <input type="text">
                                        </div>
                                    </div>
                                    <div class="grid-100 tablet-grid-100 mobile-grid-100">
                                        <div class="default-form-box">
                                            <label for="country">country <span>*</span></label>
                                            <input type="text">
                                        </div>
                                    </div>
                                    <div class="grid-100 tablet-grid-100 mobile-grid-100">
                                        <div class="default-form-box">
                                            <label>Street address <span>*</span></label>
                                            <input placeholder="House number and street name" type="text">
                                        </div>
                                    </div>
                                    <div class="grid-100 tablet-grid-100 mobile-grid-100">
                                        <div class="default-form-box">
                                            <input placeholder="Apartment, suite, unit etc. (optional)" type="text">
                                        </div>
                                    </div>
                                    <div class="grid-100 tablet-grid-100 mobile-grid-100">
                                        <div class="default-form-box">
                                            <label>Town / City <span>*</span></label>
                                            <input type="text">
                                        </div>
                                    </div>
                                    <div class="grid-100 tablet-grid-100 mobile-grid-100">
                                        <div class="default-form-box">
                                            <label>State / County <span>*</span></label>
                                            <input type="text">
                                        </div>
                                    </div>
                                    <div class="grid-50 tablet-grid-50 mobile-grid-100">
                                        <div class="default-form-box">
                                            <label>Phone<span>*</span></label>
                                            <input type="text">
                                        </div>
                                    </div>
                                    <div class="grid-50 tablet-grid-50 mobile-grid-100">
                                        <div class="default-form-box">
                                            <label> Email Address <span>*</span></label>
                                            <input type="text">
                                        </div>
                                    </div>
                                    <div class="grid-100 tablet-grid-100 mobile-grid-100">
                                        <label class="checkbox-default" for="newAccount" data-bs-toggle="collapse"
                                            data-bs-target="#newAccountPassword">
                                            <input type="checkbox" id="newAccount">
                                            <span>Create an account?</span>
                                        </label>
                                        <div id="newAccountPassword" class="collapse mt-3"
                                            data-parent="#newAccountPassword">
                                            <div class="card-body1 default-form-box">
                                                <label> Account password <span>*</span></label>
                                                <input placeholder="password" type="password">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid-100 tablet-grid-100 mobile-grid-100">
                                        <label class="checkbox-default" for="newShipping" data-bs-toggle="collapse"
                                            data-bs-target="#anotherShipping">
                                            <input type="checkbox" id="newShipping">
                                            <span>Ship to a different address?</span>
                                        </label>

                                        <div id="anotherShipping" class="collapse mt-3" data-parent="#anotherShipping">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="default-form-box">
                                                        <label>First Name <span>*</span></label>
                                                        <input type="text">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="default-form-box">
                                                        <label>Last Name <span>*</span></label>
                                                        <input type="text">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="default-form-box">
                                                        <label>Company Name</label>
                                                        <input type="text">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="select_form_select default-form-box">
                                                        <label for="countru_name">country <span>*</span></label>
                                                        <input type="text">
                                                    </div>
                                                </div>

                                                <div class="col-12">
                                                    <div class="default-form-box">
                                                        <label>Street address <span>*</span></label>
                                                        <input placeholder="House number and street name" type="text">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="default-form-box">
                                                        <input placeholder="Apartment, suite, unit etc. (optional)"
                                                            type="text">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="default-form-box">
                                                        <label>Town / City <span>*</span></label>
                                                        <input type="text">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="default-form-box">
                                                        <label>State / County <span>*</span></label>
                                                        <input type="text">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="default-form-box">
                                                        <label>Phone<span>*</span></label>
                                                        <input type="text">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="default-form-box">
                                                        <label> Email Address <span>*</span></label>
                                                        <input type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid-100 tablet-grid-100 mobile-grid-100 mt-3">
                                        <div class="order-notes">
                                            <label for="order_note">Order Notes</label>
                                            <textarea id="order_note"
                                                placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                                        </div>
                                    </div>
                                
                            </form>
                        </div>
                        <div class="grid-50 tablet-grid-50 mobile-grid-100">
                            <form action="#">
                                <h3>Your order</h3>
                                <div class="order_table table-responsive">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>Product</th>
                                                <th>Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td> Handbag fringilla <strong> × 2</strong></td>
                                                <td> $165.00</td>
                                            </tr>
                                            <tr>
                                                <td> Handbag justo <strong> × 2</strong></td>
                                                <td> $50.00</td>
                                            </tr>
                                            <tr>
                                                <td> Handbag elit <strong> × 2</strong></td>
                                                <td> $50.00</td>
                                            </tr>
                                            <tr>
                                                <td> Handbag Rutrum <strong> × 1</strong></td>
                                                <td> $50.00</td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Cart Subtotal</th>
                                                <td>$215.00</td>
                                            </tr>
                                            <tr>
                                                <th>Shipping</th>
                                                <td><strong>$5.00</strong></td>
                                            </tr>
                                            <tr class="order_total">
                                                <th>Order Total</th>
                                                <td><strong>$220.00</strong></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <div class="payment_method">
                                    <div class="panel-default">
                                        <label class="checkbox-default" for="currencyCod" data-bs-toggle="collapse"
                                            data-bs-target="#methodCod">
                                            <input type="checkbox" id="currencyCod">
                                            <span>Cash on Delivery</span>
                                        </label>

                                        <div id="methodCod" class="collapse" data-parent="#methodCod">
                                            <div class="card-body1">
                                                <p>Please send a check to Store Name, Store Street, Store Town, Store
                                                    State / County, Store Postcode.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-default">
                                        <label class="checkbox-default" for="currencyPaypal" data-bs-toggle="collapse"
                                            data-bs-target="#methodPaypal">
                                            <input type="checkbox" id="currencyPaypal">
                                            <span>PayPal</span>
                                        </label>
                                        <div id="methodPaypal" class="collapse " data-parent="#methodPaypal">
                                            <div class="card-body1">
                                                <p>Pay via PayPal; you can pay with your credit card if you don’t have a
                                                    PayPal account.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="order_button pt-3">
                                        <button class="btn btn-md btn-black-default-hover" type="submit">Proceed to
                                            Payment</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    
                </div> <!-- Start User Details Checkout Form -->
          

        </div>

    </main>
</div>