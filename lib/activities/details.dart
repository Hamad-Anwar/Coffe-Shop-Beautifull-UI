import 'package:flutter/material.dart';
import '../res/resorces_list.dart';
class Details extends StatefulWidget {
  final int index;
  const Details(this.index, {super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  var s = true;
  var m = false;
  var l = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned.fill(child: Image(image: images[widget.index],fit: BoxFit.cover,)),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin:
                                const EdgeInsets.only(top: 50, left: 20, right: 20),
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    Icons.arrow_back_ios_outlined,
                                    color: Colors.white.withOpacity(.5),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.favorite,
                                    color: Colors.orange
                                  )
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 30, right: 30, left: 30),
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.6),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            names[widget.index],
                                            style: const TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(with_[widget.index],
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white
                                                      .withOpacity(.5),
                                                  decoration:
                                                      TextDecoration.none)),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                s
                                                    ? ratting[widget.index]
                                                        .toString()
                                                    : m
                                                        ? mediumRating[
                                                                widget.index]
                                                            .toString()
                                                        : largeRating[
                                                                widget.index]
                                                            .toString(),
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                s
                                                    ? prefix[widget.index]
                                                    : m
                                                        ? prefixMedium[
                                                            widget.index]
                                                        : prefixLarge[
                                                            widget.index],
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(.5),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Icon(
                                                    Icons.coffee,
                                                    color: Colors.orange,
                                                  ),
                                                  Text(
                                                    "Coffee",
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(.5),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Icon(
                                                    Icons.water_drop_rounded,
                                                    color: Colors.orange,
                                                  ),
                                                  Text(
                                                    "Milk",
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(.5),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            s
                                                ? "Small Roasted"
                                                : m
                                                    ? "Medium Roasted"
                                                    : "Large Roasted",
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(.5),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 30),
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description",
                              style: TextStyle(
                                color: Colors.white.withOpacity(.5),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "A cappuccino is the perfect balance of espresso, steamed milk. This coffee is all about the structure.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Size",
                              style: TextStyle(
                                color: Colors.white.withOpacity(.5),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      s = true;
                                      m = false;
                                      l = false;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          color: s
                                              ? Colors.black
                                              : Colors.white
                                                  .withOpacity(.1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border(
                                              right: BorderSide(
                                                  color: s
                                                      ? Colors.orange
                                                      : Colors.black),
                                              left: BorderSide(
                                                  color: s
                                                      ? Colors.orange
                                                      : Colors.black),
                                              top: BorderSide(
                                                  color: s
                                                      ? Colors.orange
                                                      : Colors.black),
                                              bottom: BorderSide(
                                                  color: s
                                                      ? Colors.orange
                                                      : Colors.black))),
                                      child: Center(
                                        child: Text(
                                          "S",
                                          style: TextStyle(
                                              color: s
                                                  ? Colors.orange
                                                  : Colors.white
                                                      .withOpacity(.8),
                                              fontSize: 20,
                                              fontWeight:
                                                  FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      s = false;
                                      m = true;
                                      l = false;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          color: m
                                              ? Colors.black
                                              : Colors.white
                                                  .withOpacity(.1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border(
                                              right: BorderSide(
                                                  color: m
                                                      ? Colors.orange
                                                      : Colors.black),
                                              left: BorderSide(
                                                  color: m
                                                      ? Colors.orange
                                                      : Colors.black),
                                              top: BorderSide(
                                                  color: m
                                                      ? Colors.orange
                                                      : Colors.black),
                                              bottom: BorderSide(
                                                  color: m
                                                      ? Colors.orange
                                                      : Colors.black))),
                                      child: Center(
                                        child: Text(
                                          "M",
                                          style: TextStyle(
                                              color: m
                                                  ? Colors.orange
                                                  : Colors.white
                                                      .withOpacity(.8),
                                              fontSize: 20,
                                              fontWeight:
                                                  FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      s = false;
                                      m = false;
                                      l = true;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          color: l
                                              ? Colors.black
                                              : Colors.white
                                                  .withOpacity(.1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border(
                                              right: BorderSide(
                                                  color: l
                                                      ? Colors.orange
                                                      : Colors.black),
                                              left: BorderSide(
                                                  color: l
                                                      ? Colors.orange
                                                      : Colors.black),
                                              top: BorderSide(
                                                  color: l
                                                      ? Colors.orange
                                                      : Colors.black),
                                              bottom: BorderSide(
                                                  color: l
                                                      ? Colors.orange
                                                      : Colors.black))),
                                      child: Center(
                                        child: Text(
                                          "L",
                                          style: TextStyle(
                                              color: l
                                                  ? Colors.orange
                                                  : Colors.white
                                                      .withOpacity(.8),
                                              fontSize: 20,
                                              fontWeight:
                                                  FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 0,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Price",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(.6),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "\$",
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        s
                                            ? prices[widget.index]
                                            : m
                                                ? mediumPrice[widget.index]
                                                : largePrice[widget.index],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 60,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius:
                                        BorderRadius.circular(20)),
                                child: const Center(
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

}
