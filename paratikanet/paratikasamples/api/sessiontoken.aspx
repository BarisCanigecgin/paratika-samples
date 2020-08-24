﻿<%@ Page Language="C#" AutoEventWireup="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Session Token Form</title>
</head>

<script type="text/javascript" src="common.js"></script>
<script type="text/javascript">
    window.onload = function () {
        document.getElementById('merchantpaymentid').value = 'MPID-' + randomString(8, "aA#");
        document.getElementById('customerId').value = 'Cust-' + randomString(10, "aA#");
    };
</script>
<body>
<div class="container">
      <h2>Session Token Creation</h2>
      <h4>For encoding/decoding data you can use this site: <a href="https://meyerweb.com/eric/tools/dencoder/" target="_blank"> Encode/Decode </a></h4>
      <form method="post" action="https://test.paratika.com.tr/paratika/api/v2">
         <table>
            <tr>
               <td>ACTION:</td>
               <td><input type="text" name="ACTION" value="SESSIONTOKEN"/>
            </tr>
            <tr>
               <td>MERCHANT:</td>
               <td><input type="text" name="MERCHANT" value="10000000"/></td>
            </tr>
            <tr>
               <td>MERCHANTUSER:</td>
                <td><input type="text" name="MERCHANTUSER" value="apiuser@testmerchant.com"></td>
            </tr>
            <tr>
               <td>MERCHANTPASSWORD:</td>
               <td><input type="text" name="MERCHANTPASSWORD" value="Pluto321`"></td>
            </tr>
            <tr>
               <td>SESSIONTYPE</td>
               <td><input type="text" name="SESSIONTYPE" value="PAYMENTSESSION"></td>
            </tr>
            <tr>
               <td>MERCHANTPAYMENTID:</td>
               <td><input id="merchantpaymentid" type="text" name="MERCHANTPAYMENTID" value=""></td>
            </tr>
            <tr>
               <td>CURRENCY:</td>
               <td><input type="text" name="CURRENCY" value="TRY"/></td>
            </tr>
            <tr>
               <td>AMOUNT:</td>
               <td><input type="text" name="AMOUNT" value="1000"/></td>
            </tr>
            <tr>
               <td>RETURNURL:</td>
                  <td><input type="text" name="RETURNURL" value="https://test.paratika.com.tr/merchant/index.jsp"></td>
            </tr>
            <tr>
               <td>CUSTOMER:</td>
               <td><input id="customerId" type="text" name="CUSTOMER" value=""></td>
            </tr>
            <tr>
               <td>CUSTOMERNAME:</td>
                  <td><input type="text" name="CUSTOMERNAME" value="Aydonat Aydınlar"></td>
            </tr>
            <tr>
               <td>CUSTOMEREMAIL:</td>
               <td><input type="text" name="CUSTOMEREMAIL" value="mghUzjPn@email.com"></td>
            </tr>
             <tr>
               <td>CUSTOMERIP</td>
               <td><input type="text" name="CUSTOMERIP" value="127.0.0.1"></td>
            </tr>
            <tr>
               <td>CUSTOMERPHONE:</td>
               <td><input type="text" name="CUSTOMERPHONE" value="+903120000011"></td>
            </tr>
            <tr>
               <td>CUSTOMERBIRTHDAY:</td>
               <td><input type="text" name="CUSTOMERBIRTHDAY" value="01-01-2001"></td>
            </tr>
            <tr>
               <td>CUSTOMERUSERAGENT:</td>
               <td><input type="text" name="CUSTOMERUSERAGENT" value="Mozilla/5.0 (Windows NT 6.1; WOW64; rv:56.0) Gecko/20100101 Firefox/56.0"></td>
            </tr>
            <tr>
               <td>NAMEONCARD:</td>
               <td><input type="text" name="NAMEONCARD" value="Aydonat Aydınlar"></td>
            </tr>
             <tr>
               <td>CARDPAN:</td>
               <td><input type="text" name="CARDPAN" value="4532513386094198"></td>
            </tr>
            <tr>
               <td>CARDEXPIRY:</td>
               <td><input type="text" name="CARDEXPIRY" value="12.2030"></td>
            </tr>
            <tr>
               <td>CARDCVV:</td>
               <td><input type="text" name="CARDCVV" value="000"></td>
            </tr>

            <tr>
               <td>BILLTOADDRESSLINE:</td>
               <td><input type="text" name="BILLTOADDRESSLINE" value="Çöişüğı Plaza, Ostim No:83/9, Yenimahalle"/></td>
            </tr>
            <tr>
               <td>BILLTOCITY:</td>
               <td><input type="text" name="BILLTOCITY" value="Ankara"/></td>
            </tr>
            <tr>
               <td>BILLTOCOUNTRY:</td>
                  <td><input type="text" name="BILLTOCOUNTRY" value="Türkiye"></td>
            </tr>
            <tr>
               <td>BILLTOPOSTALCODE:</td>
               <td><input type="text" name="BILLTOPOSTALCODE" value="06000"></td>
            </tr>
            <tr>
               <td>BILLTOPHONE:</td>
                  <td><input type="text" name="BILLTOPHONE" value="+903120000001"></td>
            </tr>
            <tr>
               <td>SHIPTOADDRESSLINE:</td>
               <td><input type="text" name="SHIPTOADDRESSLINE" value="Plaza ÇÖİŞÜĞI, Ostim No:83/9, Yenimahalle"></td>
            </tr>
             <tr>
               <td>SHIPTOCITY</td>
               <td><input type="text" name="SHIPTOCITY" value="Ankara"></td>
            </tr>
            <tr>
               <td>SHIPTOCOUNTRY:</td>
               <td><input type="text" name="SHIPTOCOUNTRY" value="Türkiye"></td>
            </tr>
            <tr>
               <td>SHIPTOPOSTALCODE:</td>
               <td><input type="text" name="SHIPTOPOSTALCODE" value="06000"></td>
            </tr>
            <tr>
               <td>SHIPTOPHONE:</td>
               <td><input type="text" name="SHIPTOPHONE" value="+903120000001"></td>
            </tr>
            <tr>
               <td>ORDERITEMS:</td>
               <td><input type="text" name="ORDERITEMS" value="%5B%20%7B%0A%20%20%20%20%22code%22%20%3A%20%22T00D3AITCC%22%2C%0A%20%20%20%20%22name%22%20%3A%20%22Galaxy%20S8%2B%22%2C%0A%20%20%20%20%22description%22%20%3A%20%22The%20Samsung%20Galaxy%20S8%20is%20Android%20smartphone...%22%2C%0A%20%20%20%20%22amount%22%20%3A%201000%2C%0A%20%20%20%20%22quantity%22%20%3A%201%0A%20%20%7D%20%5D"/></td>
               <td><label> Decoded ORDERITEMS param: [ {
						    "code" : "T00D3AITCC",
						    "name" : "Galaxy S8+",
						    "description" : "The Samsung Galaxy S8 is Android smartphone...",
						    "amount" : 1000,
						    "quantity" : 1
  						    } ]
  					</label>
  				</td>
            </tr>
            <tr>
               <td>EXTRA:</td>
               <td><input type="text" name="EXTRA" value="%7B%22AlwaysSaveCard%22%3A%22true%22%2C%22IntegrationModel%22%3A%22API%22%7D"></td>
               <td><label>Decoded EXTRA param: {"AlwaysSaveCard":"true","IntegrationModel":"API"}</label></td>
            </tr>
            <tr>
               <td></td>
               <td></td>
            </tr>
            <tr>
               <td></td>
               <td colspan="4">
                  <input style="width:173px; height: 30px;" type="submit" value="Submit"/>
               </td>
            </tr>
         </table>
      </form>
   </div>
</body>
</html>