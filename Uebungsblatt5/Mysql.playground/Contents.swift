//: Playground - noun: a place where people can play

import Foundation

var table = """
Haas
Elsbeth
Berliner Str. 223
Offenbach
63067
42
Richter
Hans
Frankfurter Str. 61
Offenbach
63067
32
Friedrich
Irmgard
Goethestr. 61
Offenbach
63067
40
Hartmann
Jochen
Berliner Str. 223
Frankfurt
60528
29
Goldbach
Martin
Frankfurter Str. 61
Frankfurt
60529
35
Naumann
Norbert
Goethestr. 61
Frankfurt
60594
38
Haas
Tanja
Berliner Str. 223
Hannover
30323
36
Neppe
Martin
Goethestr. 61
Hannover
30324
43
"""

let columns = table.split(separator: "\n").map { $0.trimmingCharacters(in: .whitespaces) }

var rows = [[String]]()
for column in columns {
    if rows.last == nil || rows.last!.count == 6 {
        rows.append([])
    }
    rows[rows.count - 1].append(column)
}
let mysqlStatment = rows.map {
    "(\($0.map({ "\"\($0)\""}).joined(separator: ", ")))"
}.joined(separator: ",\n")
print(mysqlStatment)




