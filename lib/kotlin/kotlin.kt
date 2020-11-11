fun main(){

    val yas = 10
    val gun = 10*365
    val border = "*-*-"
    val tekrarSayisi = 15
    printBorder(border, tekrarSayisi)
    println("Iyi ki dogdun Necati. ${yas} yaşına girdin")
    println("Sen artik ${gun} gunluksun")
    printBorder(border, tekrarSayisi)

}

fun printBorder(border : String , tekrarSayisi:Int){
    repeat(tekrarSayisi){
    println(border)
    }
    println()
}