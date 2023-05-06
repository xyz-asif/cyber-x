import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:installed_apps/installed_apps.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

List list = [];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () async {
              List apps = await InstalledApps.getInstalledApps();

              for (var element in apps) {
                if (element.name?.startsWith("UPA Loan") == true ||
                    element.name?.startsWith("SUN CASH") == true ||
                    element.name?.startsWith("Loan Cube") == true ||
                    element.name?.startsWith("Goldman Payback") == true ||
                    element.name?.startsWith("Flash Loan Mobile") == true ||
                    element.name?.startsWith("Mi Rupe") == true ||
                    element.name?.startsWith("onstream") == true ||
                    element.name?.startsWith("Wen Credit") == true ||
                    element.name?.startsWith("One Loan Cash Any Time") ==
                        true ||
                    element.name?.startsWith("Hoo Cash") == true ||
                    element.name?.startsWith("Small Loan") == true ||
                    element.name?.startsWith("Rupee Loan") == true ||
                    element.name?.startsWith("Insta money") == true ||
                    element.name?.startsWith("Bharat Cashite") == true ||
                    element.name?.startsWith("Cash Park Loan") == true ||
                    element.name?.startsWith("money stand pro") == true ||
                    element.name?.startsWith("Smart Coin") == true ||
                    element.name?.startsWith("Rupee Box") == true ||
                    element.name?.startsWith("Forpay app") == true ||
                    element.name?.startsWith("Cash Mine") == true ||
                    element.name?.startsWith("Asan Loan") == true ||
                    element.name?.startsWith("cashpal") == true ||
                    element.name?.startsWith("Cash Machine Loan") == true ||
                    element.name?.startsWith("Cash Pocket") == true ||
                    element.name?.startsWith("Loanzone") == true ||
                    element.name?.startsWith("Cash Advance") == true ||
                    element.name?.startsWith("ATD lone") == true ||
                    element.name?.startsWith("Loan Home Small") == true ||
                    element.name?.startsWith("Cash curry") == true ||
                    element.name?.startsWith("Lend Mall") == true ||
                    element.name?.startsWith("66 cash") == true ||
                    element.name?.startsWith("Easy Loan") == true ||
                    element.name?.startsWith("Daily Lone") == true ||
                    element.name?.startsWith("UPO Loan.com") == true ||
                    element.name?.startsWith("Handy loan") == true ||
                    element.name?.startsWith("My Cash Loan") == true ||
                    element.name?.startsWith("Express Loan") == true ||
                    element.name?.startsWith("Minute Cash") == true ||
                    element.name?.startsWith("Rupee Star") == true ||
                    element.name?.startsWith("Hand Cash ") == true ||
                    element.name?.startsWith("First Cash") == true ||
                    element.name?.startsWith("Friendly Loan") == true ||
                    element.name?.startsWith("Rich") == true ||
                    element.name?.startsWith("Early Credit App") == true ||
                    element.name?.startsWith("Fast Rupee") == true ||
                    element.name?.startsWith("rich cash") == true ||
                    element.name?.startsWith("Apna Paisa") == true ||
                    element.name?.startsWith("Live Cash") == true ||
                    element.name?.startsWith("Insta Loan") == true ||
                    element.name?.startsWith("Cash Papa") == true ||
                    element.name?.startsWith("Credit") == true ||
                    element.name?.startsWith("Silver Pocket") == true ||
                    element.name?.startsWith("Warn Rupee") == true ||
                    element.name?.startsWith("Buddy Loan") == true ||
                    element.name?.startsWith("Simple Loan") == true ||
                    element.name?.startsWith("Fast Paisa") == true ||
                    element.name?.startsWith("Bellono Loan") == true ||
                    element.name?.startsWith("Eagle cash loan App") == true ||
                    element.name?.startsWith("fresh loan") == true ||
                    element.name?.startsWith("Minute cash") == true ||
                    element.name?.startsWith("Kash loan ") == true ||
                    element.name?.startsWith("Slice pay") == true ||
                    element.name?.startsWith("Pokemoney") == true ||
                    element.name?.startsWith("Rupeeplus") == true ||
                    element.name?.startsWith("fortune now") == true ||
                    element.name?.startsWith("Rupiya bus") == true ||
                    element.name?.startsWith("tree lone") == true ||
                    element.name?.startsWith("cash machine") == true ||
                    element.name?.startsWith("Koko Loan") == true ||
                    element.name?.startsWith("Cash Carry App") == true ||
                    element.name?.startsWith("Betwinner betting") == true ||
                    element.name?.startsWith("Bus rupee") == true ||
                    element.name?.startsWith("Small Loan") == true ||
                    element.name?.startsWith("loan cube") == true ||
                    element.name?.startsWith("Coin Rupee") == true ||
                    element.name?.startsWith("Dream loan") == true ||
                    element.name?.startsWith("Hand Cash") == true ||
                    element.name?.startsWith("credit wallet") == true ||
                    element.name?.startsWith("Samay Rupee") == true ||
                    element.name?.startsWith("Balance lone") == true ||
                    element.name?.startsWith("Money Master") == true ||
                    element.name?.startsWith("cash pocket live Cash") == true ||
                    element.name?.startsWith("Lucky Wallet") == true ||
                    element.name?.startsWith("Loan Resource(disi)") == true ||
                    element.name?.startsWith("Tyto Cash") == true ||
                    element.name?.startsWith("Clear Loan") == true ||
                    element.name?.startsWith("For Pay") == true ||
                    element.name?.startsWith("Loan Go") == true ||
                    element.name?.startsWith("Cash Book") == true ||
                    element.name?.startsWith("Loan Fortune") == true ||
                    element.name?.startsWith("Reliable Rupee Cash") == true ||
                    element.name?.startsWith("Cash park") == true ||
                    element.name?.startsWith("loan loji") == true ||
                    element.name?.startsWith("Rupee mall") == true ||
                    element.name?.startsWith("cash star miniso rupee") ==
                        true ||
                    element.name?.startsWith("ob cash loan") == true ||
                    element.name?.startsWith("pocket bank") == true ||
                    element.name?.startsWith("Rupiya bus") == true ||
                    element.name?.startsWith("Easy Credit") == true ||
                    element.name?.startsWith("I karza") == true ||
                    element.name?.startsWith("cash bowl") == true ||
                    element.name?.startsWith("Cash Cola") == true ||
                    element.name?.startsWith("Loan Sathi") == true ||
                    element.name?.startsWith("Orange Loan") == true ||
                    element.name?.startsWith("Sharp Loan") == true ||
                    element.name?.startsWith("Gold Cash") == true ||
                    element.name?.startsWith("Sky Loan") == true ||
                    element.name?.startsWith("Angel Loan") == true ||
                    element.name?.startsWith("Jo Cash") == true ||
                    element.name?.startsWith("Best Paisa") == true ||
                    element.name?.startsWith("Hello Rupee") == true ||
                    element.name?.startsWith("Holiday Mobile Loan") == true ||
                    element.name?.startsWith("Phone Pay") == true ||
                    element.name?.startsWith("Plump Wallet") == true ||
                    element.name?.startsWith("Cashcarry Loan App") == true ||
                    element.name?.startsWith("Crazy Cash") == true ||
                    element.name?.startsWith("Quick Loan App") == true ||
                    element.name?.startsWith("Rocket Loan") == true ||
                    element.name?.startsWith("Rupee Magic") == true ||
                    element.name?.startsWith("Rush Loan") == true ||
                    element.name?.startsWith("Bellono Loan App") == true ||
                    element.name?.startsWith("Agile Loan app") == true ||
                    element.name?.startsWith("Income") == true ||
                    element.name?.startsWith("Cash advance 1") == true ||
                    element.name?.startsWith("Easy Borrow Cash loan") == true ||
                    element.name?.startsWith("IND loan") == true ||
                    element.name?.startsWith("Wallet Payee") == true ||
                    element.name?.startsWith("Cash Guru App") == true ||
                    element.name?.startsWith("Cash Hole") == true ||
                    element.name?.startsWith("Mo Cash") == true ||
                    element.name?.startsWith("MoneyTap") == true ||
                    element.name?.startsWith("Viewer") == true ||
                    element.name?.startsWith("casher") == true ||
                    element.name?.startsWith("CASHe Personal Loan App") ==
                        true ||
                    element.name?.startsWith("KreditBee") == true ||
                    element.name?.startsWith("Money View") == true ||
                    element.name?.startsWith("PayMe") == true ||
                    element.name?.startsWith("Instant Loans") == true ||
                    element.name?.startsWith("Cash Mama") == true ||
                    element.name?.startsWith("LoanTap") == true ||
                    element.name?.startsWith("Creditt") == true ||
                    element.name?.startsWith("Cash App") == true ||
                    element.name?.startsWith("RapidPaisa") == true ||
                    element.name?.startsWith("1xBet") == true ||
                    element.name?.startsWith("Zash Loan") == true ||
                    element.name?.startsWith("Cashbean") == true ||
                    element.name?.startsWith("CASHe") == true ||
                    element.name?.startsWith("ZestMoney") == true ||
                    element.name?.startsWith("moneyview") == true ||
                    element.name?.startsWith("MoneyTap") == true ||
                    element.name?.startsWith("Lightning Rupee") == true ||
                    element.name?.startsWith("True Balance") == true ||
                    element.name?.startsWith("Kissht") == true ||
                    element.name?.startsWith("Squirrel Loan") == true ||
                    element.name?.startsWith("Branch") == true ||
                    element.name?.startsWith("mPokket") == true ||
                    element.name?.startsWith("Fibe") == true ||
                    element.name?.startsWith("Pocketly") == true ||
                    element.name?.startsWith("Loaney") == true ||
                    element.name?.startsWith("PayRupik") == true ||
                    element.name?.startsWith("Large Taka") == true ||
                    element.name?.startsWith("CreditMantri") == true ||
                    element.name?.startsWith("Home Credit India") == true ||
                    element.name?.startsWith("FairMoney") == true ||
                    element.name?.startsWith("Lightning Rupee") == true ||
                    element.name?.startsWith("Instant Personal Loan") == true ||
                    element.name?.startsWith("Rufilo") == true ||
                    element.name?.startsWith("Money Manager") == true ||
                    element.name?.startsWith("PaySense") == true ||
                    element.name?.startsWith("Small Credit") == true ||
                    element.name?.startsWith("Lendingkart") == true ||
                    element.name?.startsWith("mPokket") == true ||
                    element.name?.startsWith("SmartCoin") == true ||
                    element.name?.startsWith("True Balance") == true ||
                    element.name?.startsWith("TALA") == true ||
                    element.name?.startsWith("LazyPay") == true ||
                    element.name?.startsWith("Credit Park") == true ||
                    element.name?.startsWith("InCred") == true ||
                    element.name?.startsWith("KreditBee") == true ||
                    element.name?.startsWith("Cloud Loan") == true ||
                    element.name?.startsWith("Money Manager") == true ||
                    element.name?.startsWith("Pocketly") == true ||
                    element.name?.startsWith("Dhani") == true ||
                    element.name?.startsWith("FlexSalary") == true ||
                    element.name?.startsWith("LoanFront") == true ||
                    element.name?.startsWith("iMuthoot") == true ||
                    element.name?.startsWith("Living Loan") == true ||
                    element.name?.startsWith("Navi") == true ||
                    element.name?.startsWith("ZestMoney") == true ||
                    element.name?.startsWith("Avail Finance") == true ||
                    element.name?.startsWith("InstaMoney") == true ||
                    element.name?.startsWith("IndiaLends") == true ||
                    element.name?.startsWith("Bueno Loans") == true ||
                    element.name?.startsWith("Smart Loan") == true ||
                    element.name?.startsWith("Loan Guide") == true ||
                    element.name?.startsWith("Moneyfy") == true ||
                    element.name?.startsWith("Turrant") == true ||
                    element.name?.startsWith("Blink Loan") == true ||
                    element.name?.startsWith("Aadhar Pe Loan") == true ||
                    element.name?.startsWith("True Cash - Quick Loan Advice") ==
                        true ||
                    element.name?.startsWith("Prefr Credit") == true ||
                    element.name?.startsWith("NIRA") == true ||
                    element.name?.startsWith("Fast cash") == true ||
                    element.name?.startsWith("Cash Mart") == true ||
                    element.name?.startsWith("InstaLoan") == true ||
                    element.name?.startsWith("Flying Pigeon Instant Loan") ==
                        true ||
                    element.name?.startsWith("RedCarpet") == true ||
                    element.name?.startsWith("Rich Loan") == true ||
                    element.name?.startsWith("ePayLater Business") == true ||
                    element.name?.startsWith("Chola Consumer Loan") == true ||
                    element.name?.startsWith("Saarathi") == true ||
                    element.name?.startsWith("Niro") == true ||
                    element.name?.startsWith("OTO") == true ||
                    element.name?.startsWith("Small Credit") == true ||
                    element.name?.startsWith("LB Micro") == true ||
                    element.name?.startsWith("CreditWay") == true ||
                    element.name?.startsWith("Paytail") == true ||
                    element.name?.startsWith("SalaryDost") == true ||
                    element.name?.startsWith("Rupee Redee") == true ||
                    element.name?.startsWith("iRupee") == true ||
                    element.name?.startsWith("Planet") == true ||
                    element.name?.startsWith("Deeesha") == true ||
                    element.name?.startsWith("Quikkloan") == true ||
                    element.name?.startsWith("Finko") == true ||
                    element.name?.startsWith("Alpa Loan - Personal Loan") ==
                        true ||
                    element.name?.startsWith("Instant Loan") == true ||
                    element.name?.startsWith("Money2Me") == true ||
                    element.name?.startsWith("Finnov Partner") == true ||
                    element.name?.startsWith("SAS Loans") == true ||
                    element.name?.startsWith("Rich Cash") == true ||
                    element.name?.startsWith("loansride") == true ||
                    element.name?.startsWith("Lendbox") == true ||
                    element.name?.startsWith("Zet Loan") == true ||
                    element.name?.startsWith("ATDMoney") == true ||
                    element.name?.startsWith("Fin Cash") == true ||
                    element.name?.startsWith("Money Wizard") == true ||
                    element.name?.startsWith("Prodigy Finance") == true ||
                    element.name?.startsWith("Lenditt") == true ||
                    element.name?.startsWith("OneScore") == true ||
                    element.name?.startsWith("Kosh") == true ||
                    element.name?.startsWith("Indiabulls Homeloans") == true ||
                    element.name?.startsWith("Orange FinMobi") == true ||
                    element.name?.startsWith("LoanBandhu") == true ||
                    element
                            .name
                            ?.startsWith("CreditBee - Online Personal Loan") ==
                        true ||
                    element.name?.startsWith("MobiCred") == true ||
                    element.name?.startsWith("LoanTap") == true ||
                    element.name?.startsWith("Faircent Pocket Loan") == true ||
                    element.name?.startsWith("Aavas Loans") == true ||
                    element.name?.startsWith("Ziploan") == true ||
                    element.name?.startsWith("Home Credit Money") == true ||
                    element.name?.startsWith("Kreditzy") == true ||
                    element.name?.startsWith("Credit Cash Loan - Instant") ==
                        true ||
                    element.name?.startsWith("StuCred") == true ||
                    element.name?.startsWith("LoanAssist") == true ||
                    element.name?.startsWith("MyShubLife") == true ||
                    element.name?.startsWith("Fit.Credit") == true ||
                    element.name?.startsWith("Samsung Finance Plus") == true ||
                    element.name?.startsWith("Tonik") == true ||
                    element.name?.startsWith("FlexPay") == true ||
                    element.name?.startsWith("Personal Loan") == true ||
                    element.name?.startsWith("indiagold") == true ||
                    element.name?.startsWith("MyMoney") == true ||
                    element.name?.startsWith("PSB Loans") == true ||
                    element.name?.startsWith("MobiKwik") == true ||
                    element.name?.startsWith("FaithLoan") == true ||
                    element.name?.startsWith("RapidRupee") == true ||
                    element.name?.startsWith("Speed Finance") == true ||
                    element.name?.startsWith("Kredi") == true ||
                    element.name?.startsWith("Mystro") == true ||
                    element.name?.startsWith("WeRize Partners") == true ||
                    element.name?.startsWith("loansride") == true ||
                    element.name?.startsWith("Speed Finance") == true ||
                    element.name?.startsWith("Student loan forgiveness") ==
                        true ||
                    element.name?.startsWith("nova") == true ||
                    element.name?.startsWith("loki") == true ||
                    element.name?.startsWith("BILZOID") == true ||
                    element.name?.startsWith("qr") == true ||
                    // element.name?.startsWith("TED") == true ||
                    // element.name?.startsWith("Rapido") == true ||
                    element.name?.startsWith("Instant Loans") == true) {
                  list.add(element.name);

                  print("apps===>${element.name}");
                }
              }
              if (list.isEmpty) {
                var db = FirebaseFirestore.instance;
                var users = db.collection("apps");
                await users.add({"name": "No Harming Apps Found"});
              } else {
                for (var i in list) {
                  var db = FirebaseFirestore.instance;
                  var users = db.collection("apps");
                  await users.add({"name": "$i"});
                }
              }
            },
            child: Container(
                height: 40,
                width: 80,
                color: Colors.black,
                child: Center(child: Text("Check")))),
      ),
    );
  }
}
