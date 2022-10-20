/*
 *  To change this license header, choose License Headers in Project Properties.
 *  To change this template file, choose Tools | Templates
 *  and open the template in the editor.
 */
package Paypal;

import java.util.*;
import com.paypal.api.payments.*;
import com.paypal.base.rest.*;

/**
 *
 * @author Asus
 */
public class PaymentServices {

    private static final String CLIENT_ID = "Aeo4ISZyD3j1mE5diKNb5YDitxBuHhw-BtQHIKwo-uMAac8znm7ofREu7l2C-t59v6Uv1lEonzYiL1W-";
    private static final String CLIENT_SECRET = "EGRuxAtZiYPpFOviyvNvDAWRdp6w7J9E5r7T0rlzHTEaJM5zKIp-oZ3wVV-htZ3ZZ_10XTcwihIezS9L";
    private static final String MODE = "sandbox";

    public String authorizePayment(OrderDetail orderDetail) throws PayPalRESTException {
        Payer payer = getPayerInformation();
        RedirectUrls redirectUrls = getRedirectURLs();
        List<Transaction> listTransaction = getTransactionInformation(orderDetail);

        Payment requestPayment = new Payment();
        requestPayment.setTransactions(listTransaction);
        requestPayment.setRedirectUrls(redirectUrls);
        requestPayment.setPayer(payer);
        requestPayment.setIntent("authorize");

        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);

        Payment approvedPayment = requestPayment.create(apiContext);

        return getApprovalLink(approvedPayment);

    }

    public Payment getPaymentDetails(String paymentId) throws PayPalRESTException {
        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
        return Payment.get(apiContext, paymentId);
    }

    public Payment executePayment(String paymentId, String payerId) throws PayPalRESTException {
        PaymentExecution paymentExecution = new PaymentExecution();
        paymentExecution.setPayerId(payerId);
        Payment payment = new Payment().setId(paymentId);
        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
        return payment.execute(apiContext, paymentExecution);
    }

    private Payer getPayerInformation() {
        Payer payer = new Payer();
        payer.setPaymentMethod("paypal");
//        PayerInfo payerInfo = new PayerInfo();
//        payerInfo.setFirstName("William").setLastName("Peterson").setEmail("william.peterson@company.com");
//        payer.setPayerInfo(payerInfo);
        return payer;
    }

    private RedirectUrls getRedirectURLs() {
        RedirectUrls redirectUrls = new RedirectUrls();
        redirectUrls.setCancelUrl("http://localhost:8080/CartPage.jsp");
        redirectUrls.setReturnUrl("http://localhost:8080/review_payment");
        return redirectUrls;
    }

    private List<Transaction> getTransactionInformation(OrderDetail orderDetail) {
        Details details = new Details();
        details.setShipping(orderDetail.getShipping());
        details.setSubtotal(orderDetail.getItemtotal());

        Amount amount = new Amount();
        amount.setCurrency("USD");
        amount.setTotal(orderDetail.getTotal());
        amount.setDetails(details);

        Transaction transaction = new Transaction();
        transaction.setAmount(amount);
        transaction.setDescription("User " + orderDetail.getUserId() + " Transaction");

        ItemList itemList = new ItemList();
        List<Item> items = new ArrayList<>();

        Item item = new Item();
        item.setCurrency("USD");
        item.setName(orderDetail.getUserId());
        item.setPrice(orderDetail.getItemtotal());
        item.setQuantity("1");

        items.add(item);
        itemList.setItems(items);
        transaction.setItemList(itemList);

        List<Transaction> listTransaction = new ArrayList<>();
        listTransaction.add(transaction);

        return listTransaction;
    }

    private String getApprovalLink(Payment approvedPayment) {
        List<Links> links = approvedPayment.getLinks();
        String approvalLink = null;

        for (Links link : links) {
            if (link.getRel().equalsIgnoreCase("approval_url")) {
                approvalLink = link.getHref();
                break;
            }
        }

        return approvalLink;
    }

}
