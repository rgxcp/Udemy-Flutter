import 'package:bitcointicker/models/coin_data.dart';
import 'package:bitcointicker/utilities/reusable_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  bool isWaiting = false;
  String selectedCurrency = 'AUD';
  Map<String, String> coinValues = {};

  void getData() async {
    isWaiting = true;

    try {
      var data = await CoinData().getCryptoData(selectedCurrency);
      isWaiting = false;
      setState(() {
        coinValues = data;
      });
    } catch (e) {
      print(e);
    }
  }

  DropdownButton<String> androidPicker() {
    List<DropdownMenuItem<String>> dropdownItem = [];

    /*
    for (int i = 0; i < currenciesList.length; i++) {
      var item = DropdownMenuItem(
        child: Text(currenciesList[i]),
        value: currenciesList[i],
      );
      dropdownItem.add(item);
    }
     */

    for (String currency in currenciesList) {
      var item = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItem.add(item);
    }

    return DropdownButton<String>(
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
          getData();
        });
      },
      value: selectedCurrency,
      items: dropdownItem,
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> dropdownItem = [];

    for (String currency in currenciesList) {
      dropdownItem.add(Text(currency));
    }

    return CupertinoPicker(
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
        setState(() {
          selectedCurrency = currenciesList[selectedIndex];
          getData();
        });
      },
      children: dropdownItem,
      backgroundColor: Colors.lightBlue,
    );
  }

  Column makeCryptoCards() {
    List<CryptoCard> cryptoCards = [];

    for (String crypto in cryptoList) {
      cryptoCards.add(
        CryptoCard(
          cryptoCurrency: crypto,
          selectedCurrency: selectedCurrency,
          value: isWaiting ? '?' : coinValues[crypto],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cryptoCards,
    );
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          makeCryptoCards(),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iOSPicker() : androidPicker(),
          ),
        ],
      ),
    );
  }
}
