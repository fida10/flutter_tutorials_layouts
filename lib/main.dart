import 'package:flutter/material.dart';

void main() =>
    runApp(const MyApp()); //main method. Whatever we want to run, goes here.

class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); //not sure what this does but it appears commonly on every flutter app we have done so far
  //probably something to do with declaring this as the main widget, within which all other widgets exist

  @override
  Widget build(BuildContext context) {
    // আমরা বিল্ড এর ভেতরে যাকিছু লিখেদেই তা আমাদের স্ক্রিনে দেখতে পাই। আমরা এর ভিতরে যতি কোন পরিবর্তন করি তা এই বিল্ড এর মাধ্যমে স্ক্রিনে পুনরায় আমাদের দেখিয়ে দেয়।
    Color color = Theme.of(context)
        .primaryColor; //এই কোড ডার্ট ফ্রেমওয়ার্কের মধ্যে ব্যবহার করা হয়। এই কোডে ডার্ট এর Theme ক্লাসের of মেথডটি কল করা হয় এবং এর মাধ্যমে context এবং primaryColor রিটার্ন করা হয়।

    return MaterialApp(
      //create a MaterialApp widget
      title:
          'Flutter layout demo', //sets title (text that appears in browser tab window/name of application when it opens)
      home: Scaffold(
        //creates scaffold, within which other things will go
        appBar: AppBar(
          //Creates an app bar, kind of like a header bar at the top of the screen
          title:
              const Text('Flutter layout demo'), //title text, goes into appbar
        ),
        body: const Center(
          //creates a central text in the body of the scaffold
          child: Text('Hello World'), //the contents of the central text
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  //Container ক্লাস ডার্টের একটি উইজেট (widget) ক্লাস। এটি ডার্টে একটি স্থানপ্রাপ্ত কন্টেন্ট কে পেশ করতে ব্যবহৃত হয়।
  padding: const EdgeInsets.all(
      30), // // এটি হলো লেআউট প্রপার্টি যা উইজেটের সাথে তার পরিবেশকে কত দূরত্বে পরিবর্তন না করে বর্থমান উইজেটের আকার পরিবর্তন করে। এটি পেজের কতটুকু জায়গা নেবে তা উল্লেখ করে দেওয়া যায়।
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, //একটি Container উইজেটের প্রপার্টি যা ডার্টের মধ্যে ব্যবহৃত হয়। এটি ব্যবহার করে আপনি উইজেটের ক্রস অক্ষর অবস্থান সেট করতে পারেন।
          children: [
            Container(
              padding: const EdgeInsets.only(
                  bottom:
                      6), //ডার্টের মধ্যে প্রয়োগ করা হয় Container উইজেটের একটি প্রপার্টি। এটি উইজেটের পাঠের মাঝে প্যাডিং (অন্তর্ভুক্তির মাধ্যমে স্পেস) নির্ধারণ করে।
              child: const Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                    fontWeight: FontWeight
                        .bold), // যে শব্দটি এলো তার ধরণ কেমন হবে তা আমরা বলে দিলাম। যে শব্দটি এলো তার ধরণ কেমন হবে তা আমরা বলে দিলাম।
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.pink[400], //এখানে লেখার রং বলে দেওয়া হয়েছে।
              ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star, //এখানে একটি স্টার এর প্রতীক ব্যবহার করা হয়েছে।
        color: Colors.redAccent[400], //এখানে প্রতীকের রং বলে দেওয়া হয়েছে।
      ),
      const Text(
          '35'), //ডার্টের মধ্যে একটি উইজেট (widget) এবং টেক্সট (পাঠ) এর একটি প্রতিষ্ঠিত অবজেক্ট তৈরি করে।
    ],
  ),
);


Widget build(BuildContext context) {// আমরা বিল্ড এর ভেতরে যাকিছু লিখেদেই তা আমাদের স্ক্রিনে দেখতে পাই। আমরা এর ভিতরে যতি কোন পরিবর্তন করি তা এই বিল্ড এর মাধ্যমে স্ক্রিনে পুনরায় আমাদের দেখিয়ে দেয়।
  Column _buildButtonColumn(//_buildButtonColumn নামক একটি কলাম ফাংশন যা ডার্ট ল্যাঙ্গুয়েজে লেখা হয়েছে। এটি ডার্ট প্রোগ্রামিং ভাষায় একটি ফাংশন বোঝায় যা কলামের তালিকা তৈরি করে।
    Color color, //ডার্টের মধ্যে Color একটি ক্লাস বা টাইপ হিসেবে ব্যবহৃত হয়। এটি রঙের সংজ্ঞায়িত উপাদান বা রঙের মান সংরক্ষণ করে।
    IconData icon, //ডার্টের মধ্যে IconData একটি ক্লাস বা টাইপ হিসেবে ব্যবহৃত হয়। এটি ভেক্টর আইকন বা সিম্বল সংজ্ঞায়িত করে, যা অ্যাপ্লিকেশনে চিহ্নিত করার জন্য ব্যবহার করা হয়।
    String label   //ডার্টে মধ্যে String হলো একটি ডেটা টাইপ বা ক্লাস, যা টেক্সট বা স্ট্রিং মান সংরক্ষণ করে। এটি টেক্সট মানের জন্য ব্যবহৃত হয় যা ভেরিয়েবল, প্যারামিটার, রিটার্ন টাইপ ইত্যাদির রূপে ব্যবহার করা হয়।
    ) {
    Widget buttonSection = Row(//Row হলো ডার্টের একটি উইজেট ক্লাস বা টাইপ, যা হলো হোরিজন্টালভাবে সাজানো যায় একটি সাধারণ ব্লক বা সেকশন।
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//ডার্টের Row উইজেটের একটি প্রোপার্টি হিসেবে ব্যবহৃত হয়। এটি রো উইজেটের মুখ্য অক্ষ (মেইন অক্ষ) মধ্যে স্থাপন করা গুলির মধ্যে স্পেসিং বা ফাঁকা স্থান বিতরণ করতে ব্যবহৃত হয়।
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),//_buildButtonColumn হলো একটি কাস্টম ফাংশন বা মেথড ডার্টের মধ্যে। এটি একটি উইজেট কলাম বা সেকশন তৈরি করে যা বিভিন্ন উইজেটগুলি সংযুক্ত করে এবং সেগুলি একত্রে রেন্ডার করে দেয়।
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),//_buildButtonColumn হলো একটি কাস্টম ফাংশন বা মেথড ডার্টের মধ্যে। এটি একটি উইজেট কলাম বা সেকশন তৈরি করে যা বিভিন্ন উইজেটগুলি সংযুক্ত করে এবং সেগুলি একত্রে রেন্ডার করে দেয়।
        _buildButtonColumn(color, Icons.share, 'SHARE'),//_buildButtonColumn হলো একটি কাস্টম ফাংশন বা মেথড ডার্টের মধ্যে। এটি একটি উইজেট কলাম বা সেকশন তৈরি করে যা বিভিন্ন উইজেটগুলি সংযুক্ত করে এবং সেগুলি একত্রে রেন্ডার করে দেয়।
      ],
    );
    return Column(//Column হলো একটি উইজেট ক্লাস বা টাইপ যা একটি লিস্টের মতো উইজেটগুলি ভিতরে ধারণ করে এবং তাদেরকে ভেতরে সাজিয়ে দেয় একটি ভার্টিকাল লেআউটে।
        mainAxisAlignment: MainAxisAlignment.center,//ডার্টের Column উইজেটের একটি প্রোপার্টি হিসেবে ব্যবহৃত হয়। এটি লেআউটের মেইন অক্ষে (ভার্টিকাল লেআউটের ক্ষেত্রে উইজেটগুলির উচ্চতা বা স্থানান্তরের সম্পর্কে) উইজেটগুলি সেন্টার করতে ব্যবহৃত হয়।
        mainAxisSize: MainAxisSize.min,//ডার্টের Column উইজেটের একটি প্রোপার্টি হিসেবে ব্যবহৃত হয়। এটি মেইন অক্ষে (ভার্টিকাল লেআউটের ক্ষেত্রে উইজেটগুলির উচ্চতা বা স্থানান্তরের সম্পর্কে) উইজেটগুলির আকার নির্ধারণ করে।
        children: [
          Icon(icon,
              color: Color), //এখানে প্রতীক ও প্রতঅকের রং বলে দেওয়া হয়েছে।
          Container(
            margin: const EdgeInsets.only(
                top:
                    6), //ডার্টের মধ্যে প্রয়োগ করা হয় Container উইজেটের একটি প্রপার্টি। এটি উইজেটের পাঠের মাঝে প্যাডিং (অন্তর্ভুক্তির মাধ্যমে স্পেস) নির্ধারণ করে।
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight
                    .w300, // যে শব্দটি এলো তার ধরণ কেমন হবে তা আমরা বলে দিলাম। যে শব্দটি এলো তার ধরণ কেমন হবে তা আমরা বলে দিলাম।
                fontSize: 10, //এখানে লেখাটি কত টুকু বড় হবে তা আমরা বলে দিয়েছি।
                color: color, //এখানে রং কি হবে তা বলে দেওয়া হয়েছে।
              ),
            ),
          ),
        ]);
  }
}
