import 'package:flutter/material.dart';

Widget createRiskLevelChip(String value, bool active, int count, BuildContext context) => Container(
                constraints: BoxConstraints(
                  minWidth: (MediaQuery.of(context).size.width - 80) /3
                ),
                decoration: BoxDecoration(
                  color: active ? const Color(0xff6815E8) : Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.fromLTRB(12, 7, 12, 7),
                child: (
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 3),
                      Text(value, style: TextStyle(color: active ? Colors.white : Colors.black38, fontWeight: FontWeight.w700)),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: active ? Colors.white : Colors.black26,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                        child: Text(count.toString(), style: const TextStyle(fontSize: 14),)
                        )
                    ],
                  )
                ),
              );