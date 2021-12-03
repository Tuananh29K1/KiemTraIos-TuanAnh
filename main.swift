//
//  main.swift
//  TuanAnhIos
//
//  Created by APPLE on 12/3/21.
//  Copyright © 2021 APPLE. All rights reserved.
//

import Foundation

/*(3đ) Viết một minigame random các số từ 1 đến 100, cho người dùng đoán số nhập dữ liệu từ bàn phím:
Gợi ý random từ 1 đến 100: Int.random(in: 1...100)

Nếu số nhập vào đúng với số được random thì in ra thông báo chúc mừng
Nếu số nhập vào bé hơn số được random thì in ra thông báo là bé quá
Nếu số nhập vào lớn hơn số được random thì in ra thông báo là lớn quá
*/

func doanSo() -> Int {
    return(Int.random(in: 1..<100))
}

print("random từ 1 đến 100, Nhap so ban doan:", terminator: "");
var inputNumber = Int(readLine() ?? "0") ?? 0
print("Ban da nhap so \(inputNumber)")
let isNumber = doanSo()
if(isNumber == inputNumber){
    print("Chuc mung ban da doan dung !")
}else if (isNumber > inputNumber){
    print("So ban doan nho qua ! Ket qua la \(isNumber)")
}else{
    print("So ban doan lon qua ! Ket qua la \(isNumber)")
}

/*
 (3đ) Viết chương trình tính tiền cước TAXI. Biết rằng:

 – Km đầu tiên là 5000đ

 – 30Km tiếp theo là 4000đ

 – Nếu lớn hơn 30Km thì mỗi Km thêm ra sẽ phải trả là 3000đ

 – Hãy nhập số Km sau đó in ra số tiền phải trả.
 */

func tinhTienTaxi (value: Int) -> Int {
    var money : Int = 0;
    
    if(value < 1){
        money = 5000
        print("Quy doi thanh tien: \(money) VND")
        return money
    }else if ( 1 < value && value <= 30){
         money = 5000 + ((value - 1) * 4000)
        print("Quy doi thanh tien: \(money) VND")
        return money
    }else{
        money = 5000 + 30 * 4000 + (value - 30) * 3000
         print("Quy doi thanh tien: \(money) VND")
        return money
    }
}
print("So km can thanh toan:", terminator: "")
var inputKilomet = Int(readLine() ?? "0") ?? 0
print(tinhTienTaxi(value : inputKilomet))

/*
 (2đ) Viết chương trình nhập từ bàn phím năm và tháng, in ra số ngày của tháng đó. Với tháng 2 có 29 ngày nếu là năm nhuận, 28 ngày nếu là năm không nhuận.
 */

func checkTime(year: Int, month: Int) -> (year: Int, month: Int) {
    if((year % 4 == 0 && year % 100 != 0) || year % 400 == 0){
        if(month == 2){
            print("Thang \(month) nam \(year) co 29 ngay")
        }
    }else{
        if(month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12){
            print("Thang \(month) nam \(year) co 31 ngay")
        }else if (month == 2){
            print("Thang \(month) nam \(year) co 28 ngay")
        }else{
            print("Thang \(month) nam \(year) co 30 ngay")
        }
    }
    return (year, month)
}
print("Vui long nhap nam:", terminator: "")
var inputYear = Int(readLine() ?? "0") ?? 0
print("Vui long nhap thang:", terminator: "")
var inputMonth = Int(readLine() ?? "0") ?? 0
print(checkTime(year: inputYear, month: inputMonth))

/*
 (2đ) Cho một mảng số tự nhiên, sắp xếp các phần tử theo thứ tự từ lớn đến bé. (Không sử dụng hàm có sẵn).
 */


func sapXepArr() {
    var Arr = [1,2,15,4,54,75]
    var tg: Int
    print("Mảng vừa nhập là: \(Arr)")
    for i in (0..<Arr.count) {
        for j in (i + 1 ..< Arr.count){
            if(Arr[i] > Arr[j]){
                tg = Arr[i]
                Arr[i] = Arr[j]
                Arr[j] = tg
            }
        }
    }
    
    print("Mảng sau khi đã sắp xếp: \(Arr)")
}

print(sapXepArr())
