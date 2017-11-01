<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Credit Card Validation Demo</title>

    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styles.css">
    <link rel="stylesheet" type="text/css" href="assets/css/demo.css">
</head>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="assets/js/jquery.payform.min.js" charset="utf-8"></script>
    <script src="assets/js/script.js"></script>
</body>
<div class="container">
	<div class="row">
        <div class="form-group col-md-12 bg-primary">
            <label class="control-label" for="billinginformation">Shipping Information</label>
        </div>
        
        <div class="shipping-info">
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="firstname">First Name</label>
              <div class="controls">
                <input id="firstname" name="firstname" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="lastname">Last Name</label>
              <div class="controls">
                <input id="lastname" name="lastname" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="shippingaddress1">Shipping Address 1</label>
              <div class="controls">
                <input id="shippingaddress1" name="shippingaddress1" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <label class="control-label" for="shippingaddress2">Shipping Address 2</label>
              <div class="controls">
                <input id="shippingaddress2" name="shippingaddress2" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="shippingcountry">Shipping Country</label>
              <div class="controls">
                 <div class="controls">
                    <select id="shippingcountry" name="shippingcountry" class="input-xlarge">
                      <option>Please Select</option>
                      <option>India</option>
                    </select>
                  </div>
              </div>
            </div>
            
             <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="shippingstate">Shipping State</label>
              <div class="controls">
                <select id="shippingstate" name="shippingstate" class="input-xlarge">
                  <option>Please Select</option>
                  <option>Telangana</option>
                  <option>AndraPradesh</option>
                  <option>Delhi</option>
                  <option>TamilNadu</option>
                  <option>Goa</option>
                  <option>Gujarath</option>
                  <option>Nepal</option>
                  <option>Bihar</option>
                  <option>Other</option>
                </select>
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="shippingcity">Shipping City</label>
              <div class="controls">
                <input id="shippingcity" name="shippingcity" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="postcode">Post Code</label>
              <div class="controls">
                <input id="postcode" name="postcode" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <hr/>
            
            <div class="form-group col-md-12 bg-primary">
             <div class="control-group">
                  
                  <div class="controls">
                  <label class="control-label" for="billinginformation">Billing Information</label>
                  <label class="checkbox" for="billinginformation">
                      <input type="checkbox" name="billinginformation" id="billinginformation" value="Use Shipping Address">
                      Use Shipping Address
                    </label>
                  </div>
                </div>
            </div>
            
            <div class="creditCardForm">
    <div class="heading">
        <h1>Confirm Purchase</h1>
    </div>
    <div class="payment">
        <form>
            <div class="form-group owner">
                <label for="owner">Owner</label>
                <input type="text" class="form-control" id="owner">
            </div>
            <div class="form-group CVV">
                <label for="cvv">CVV</label>
                <input type="text" class="form-control" id="cvv">
            </div>
            <div class="form-group" id="card-number-field">
                <label for="cardNumber">Card Number</label>
                <input type="text" class="form-control" id="cardNumber">
            </div>
            <div class="form-group" id="expiration-date">
                <label>Expiration Date</label>
                <select>
                    <option value="01">January</option>
                    <option value="02">February </option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">May</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                <select>
                    <option value="16"> 2016</option>
                    <option value="17"> 2017</option>
                    <option value="18"> 2018</option>
                    <option value="19"> 2019</option>
                    <option value="20"> 2020</option>
                    <option value="21"> 2021</option>
                </select>
            </div>
            <div class="form-group" id="credit_cards">
                <img src="assets/images/visa.jpg" id="visa">
                <img src="assets/images/mastercard.jpg" id="mastercard">
                <img src="assets/images/amex.jpg" id="amex">
            </div>
            <div class="form-group" id="pay-now">
                <button type="submit" class="btn btn-default" id="confirm-purchase">Confirm</button>
            </div>
        </form>
    </div>
</div>
            <div class="form-group col-md-6">
            </div>
            
        <hr/>
        
        <div class="form-group col-md-12 bg-primary">
            <label class="control-label" for="billinginformation">Billing Address</label>
        </div>
        
        <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="billingaddress1">Address 1</label>
              <div class="controls">
                <input id="billingaddress1" name="billingaddress1" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <label class="control-label" for="billingaddress2">Address 2</label>
              <div class="controls">
                <input id="billingaddress2" name="billingaddress2" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="billingcountry">Billing Country</label>
              <div class="controls">
                 <div class="controls">
                    <select id="billingcountry" name="billingcountry" class="input-xlarge">
                      <option>Please Select</option>
                      <option>India</option>
                    </select>
                  </div>
              </div>
            </div>
            
             <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="billingstate">Billing State</label>
              <div class="controls">
                <select id="billingstate" name="billingstate" class="input-xlarge">
                  <option>Please Select</option>
                  <option>Hyderabad</option>
                  <option>Uppal</option>
                  <option>RangaReddy</option>
                  <option>Secunderabad</option>
                  <option>RTC X Road</option>
                  <option>Kukatpally</option>
                  <option>Balanagar</option>
                  <option>Medchal</option>
                  <option>Other</option>
                </select>
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="billingcity">Billing City</label>
              <div class="controls">
                <input id="billingcity" name="billingcity" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="billingpostcode">Post Code</label>
              <div class="controls">
                <input id="billingpostcode" name="billingpostcode" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-12 bg-primary">
                <label class="control-label" for="contactinformation">Contact Information:</label>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="emailaddress">Email Address</label>
              <div class="controls">
                <input id="email" name="email" type="email" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <label class="control-label" for="phone">Phone</label>
              <div class="controls">
                <input id="phone" name="phone" type="number" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <label class="control-label" for="organization">Organization</label>
              <div class="controls">
                <input id="organization" name="organization" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-12 bg-primary">
                <label class="control-label" for="contactinformation">Additional Information:</label>
            </div>
            
            <label>* To avoid duplication, Type "YES" if you are a current subscriber wishing to extend your subscription OR "NO" if you don’t have an active subscription</label>
            
            <div class="form-group col-md-6">
              <div class="controls">
                <input id="additionalinfo" name="additionalinfo" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-12">
                <div class="control-group">
                  <label class="control-label" for="iaccept"></label>
                  <div class="controls">
                    <label class="checkbox" for="iaccept-0">
                      <input type="checkbox" name="iaccept" id="iaccept-0" value="I accept the Teams and conditions">
                      I accept the <a href="">Teams and conditions</a>
                    </label>
                  </div>
                </div>
            </div>
            
            <div class="form-group col-md-12">
                <div class="control-group confirm-btn">
                  <label class="control-label" for="placeorderbtn"></label>
                  <div class="controls">
                   <!--  <button id="placeorderbtn" name="placeorderbtn" class="btn btn-primary">Place My Order</button> -->
                  <a href="myorders" >Place My Order</a>
                  </div>
                </div>
            </div>
            
        </div>
	</div>
</div>
</body>
</html>