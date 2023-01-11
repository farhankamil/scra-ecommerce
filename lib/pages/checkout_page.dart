import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scra/theme.dart';
import 'package:scra/widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: const Text('Checkout Details'),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          //todo list item

          Container(
            margin: EdgeInsets.symmetric(vertical: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Item',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const CheckoutCard(),
                const CheckoutCard(),
              ],
            ),
          ),

          // Todo Addres detail

          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: backgroundColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Addres Details',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon_store_location.png',
                          width: 40,
                        ),
                        Image.asset(
                          'assets/icon_line.png',
                          height: 30,
                        ),
                        Image.asset(
                          'assets/icon_your_address.png',
                          width: 40,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store Location',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'Adidas core',
                          style: secondaryTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text(
                          'Your Address',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'Marsemoon',
                          style: secondaryTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

          // todo PAYMENT SUMMARY

          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: defaultMargin,
                ),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: backgroundColor4,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Summary',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Producr Quantity',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '2 Items',
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Producr price',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '\$575,96',
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Free',
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color(0xff2E3141),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: priceTextStyle.copyWith(
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          '\$575.92',
                          style: priceTextStyle.copyWith(
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),

          // todo : CHECKOUT BUTTON
          SizedBox(
            height: defaultMargin,
          ),
          const Divider(
            thickness: 1,
            color: Color(0xff2E3141),
          ),
          Container(
            height: 50,
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              vertical: defaultMargin,
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/checkout-succes', (route) => false);
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Checkout Now',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: header(),
      ),
      body: content(),
    );
  }
}
