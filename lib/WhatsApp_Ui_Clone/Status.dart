import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Status(),));
}

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("WhatsApp"),
          actions: [
            const Icon(Icons.camera_alt),
            const SizedBox(width: 20,),
            const Icon(Icons.search),
            const SizedBox(width: 20,),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('New Group')),
                const PopupMenuItem(child: Text("New broadcast")),
                const PopupMenuItem(child: Text("Linked device")),
                const PopupMenuItem(child: Text("Starred message")),
                const PopupMenuItem(child: Text("Payments")),
                const PopupMenuItem(child: Text("Settings")),
              ];
            },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 5),
                child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                      color: Colors.greenAccent, width: 3)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrXWeujRO09-vYC7tecNcse5dlaQZHqRjPQldUnSy6Qg&s",
                                  height: 55, width: 55, fit: BoxFit.cover,),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("My Status", style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  ),
                                  SizedBox(height: 8,),
                                  Text("Today 2.34 am", style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black45),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              padding: const EdgeInsets.only(right: 5),
                              child: const Icon(
                                Icons.more_vert, color: Colors.black45,
                              ),
                            ),
                          ],),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text("Recent updates", style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black45),),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(children: [
                          Container(
                            padding: const EdgeInsets.all(1.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                  color: Colors.greenAccent, width: 3),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQogF56xMjatJnqQrPlGyBaRiovKdLeqeWMcA&usqp=CAU",
                                height: 55, width: 55, fit: BoxFit.cover,),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("person 1", style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                ),
                                SizedBox(height: 8,),
                                Text("Today 9.32 am", style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black45),
                                )
                              ],
                            ),
                          ),
                        ],),),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(children: [
                          Container(
                            padding: const EdgeInsets.all(1.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                  color: Colors.greenAccent, width: 3),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOTm_R-JvXln_7sf_TCz4Rsq4SWot68iy6yQ&usqp=CAU",
                                height: 55, width: 55, fit: BoxFit.cover,),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("person 2", style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                ),
                                SizedBox(height: 8,),
                                Text("Today 10.13 am", style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black45),
                                )
                              ],
                            ),
                          ),
                        ],),),
                      const SizedBox(height: 20,),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text("Viewed updates", style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black45),),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(children: [
                          Container(
                            padding: const EdgeInsets.all(1.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.grey, width: 3),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.network(
                                "data:image/jpeg;base64,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",
                                height: 55, width: 55, fit: BoxFit.cover,),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("person 11", style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                ),
                                SizedBox(height: 8,),
                                Text("6.26 am", style: TextStyle(fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black45),
                                )
                              ],
                            ),
                          ),
                        ],),),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(1.5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: Colors.grey, width: 3),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.network(
                                  "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSExMWFRUWFxcXFRcXFxcXFRcXFxgYGBgWFRcYHSggGBolHRgYITEhJSkrLi4uGB8zODMtNygtLisBCgoKDg0OGxAQGi0lICYwLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAK0BIwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAFAgMEBgcBAAj/xABIEAACAAMFBAcDCAkDAgcAAAABAgADEQQFEiExBkFRcRMiYYGRobEywdEHFCMkQlJyczM0YoKSorLh8LPC8VNjFRYlQ1R0w//EABoBAAIDAQEAAAAAAAAAAAAAAAIEAQMFAAb/xAA6EQABBAADBAkCBQIGAwAAAAABAAIDEQQhMQUSQVETYXGBobHB0fAikRQysuHxM1IGIyQ0QsIVYoL/2gAMAwEAAhEDEQA/AM3EdEchULr04XoWISIWBHIgvAQoCOAQukQjC6BHQI9SFgQKIBeAhQEcAhYEQiXgIUBBG7blnz1ZpSFgoqe6IRShoYhcM14CH7JZXmOstFLMxoqjUmGwI0L5IruDT5s4ivRoAvY0ytTzopHfEtFmkM8gijdJy+BZ+0sgkEUIJBB1BGRBjwWLb8pFhEq3TMIoJirM72yPmpPfFYCxByNKyJ4kYHjiLSAsKCwsLCgsDatpJCwoLCgIWFgUVJAEKCw6qQtUiFNJoJCwkOBIWFiLUpoJHRLh8LCwkda5RxLhQlw8EhQlx1rrUfo49ggnd12TJ79HLXE1K8AAN5O4Q1aLK0tijgqwNCDqDHZ6od9u9u3nyUAy4QZcTOjhBlxyK1FMuEFIllIQyRNrlCKQkrEtkhDJHKKUbDHodwRyOUbqqYjscEKENLNC6BChHoUI5WBdWFAR4QsQJRBdEdAjgELgUS8BD0ta5QgCJVgSrqO2IRAWVumwV2LJsUvLOYMbdtdPL1jK/lAusWe2TFUUVqMvJs/iO6NxsiCXLRPuqq+AAjMflhk/Syn4y6eDH4wxIKYFi7PnLsU4/wB1+GY8FniCNf8Aklk0s0x/vTadyqvxMZEojafk1otgQn7TufPD7ori/OntqGsP2kep9FWvlbkfTyX4yqfwsx/3RRJcupoMydB2xofyuLVrM3ZMHmkUq5mCzpTHQTEJ5BgTFcv5ir9nm8Mw9R8ytFsPyc2foQJpfpSKlgaBTwC6ECKDf1yvZZzSnzpmrbip0I/zURvFRFI+VGxBpMubvV8NewjF6r5xbLG0NsLN2ftCV84ZIbDvA8K78vHgsvCwtUhYSHFWFCvQqXct0vaZqykpU1JJ0AGpMTL82fm2RgsyhDey49k01HYeyLF8mCDpZp34BT+LP3Rbtp7CJ1nmKRUhS69jKKinPTvi9sQcy+KysRtB0WKEZ/LlfPPj3a11LHAkLCQ4VhYWKFpkpsLHQsOBYUEjkNpoLC1SHQkLVYhdavuwF3hJBm060xjn+yuQHjiMDflDu8Bpc4DNqo3aRmp8K+Aiz7NKFssn8NfEk++B+3aVsw7JinxDD3w65o6LuXnIp3fj97m4ju0WalYQViUUhJSE16MFRSsJKRJKQkpHKbURpcNMkTCsNskcptQ+jj0ScEcjkVKiQoQmFCG1mhKAhQjgELAiEYShDgENiFiARBKAhUcELEQiXQIKbPKDaJQOmNa+IgaIk2KdgdX+6QfAxyKlsG0F/lXABoS2FBnma0zIit/KRaxMl2fOrUNeeVe6K9f98BrTZGr1MUwn8WEFT4w1f149My8FHrBOeTqlocMxpFf8fUfuhiiL7dN99DYpIqKB8JqaUDTDU+BiiARy8Z7CQwB0II4e0IrBpNSRtePq4Zq57c2/pFkCtadJ54Yq0uFznJoDurHlEQ42bVsTBG0AfM7WqS78L2KRMB61ML01xIKHx174H31e4tN1LN3ky2pqesK+WY7op1ivBlltK3Fgw7Nx8qeEQ7ktTfMpco/5RmgzKSO5IswDWOBHB2943Xp3JQEOIsdVYcURStAmlZ/k+tAS0EE5NLbyo3oDFqsW0CTnmyvu1U9hwB6duTCM5sU8y3VxqPQih8jEa7LU62u0kHVZJ13lGXTkB4CLWSlopZmJwTZXlx1IAHdacVchCwsLCwsCKU+TaQEhYWFBYWFiUNpsLCwsLCwoLEKLpWmTfOCTJRTSiKO0mkM3venS2ZkOZxIR3GKbtBNZLPMdcyq11pkCCc92VYk3baelky5lKY0ViO0jPzi0yOrq0SYw0QfYGYN+Nr2GOFYfwxwrFactMFYbKxIKwkrHKbUZkhpliYVhpliEVqLhj0PYY9HKbWbCHBCVELAhtJBdWHAIQIWIgoglCFARwCFgQKNdEPSpJOgJ5V90IAhFltJW0gA5YRF2GhEsgYTST2jinYWAytaCRzU2bYZiAFkZQdCQyg8iYbAi87YTaWez5+0CP5A3uikoM4nEwiJ1A/LUbKxrsZEXuaAQay7AfVSbJc72hkoyjA2LPFnkRRaatXdC7VZHlthdSp4MKGPbB2gmeqk5CYv9UHNsm+ssvDCf4lFfSGMRg2Mh3wTdXw4mlnYDbE0+MMLmiiSMrsUCeeelIAsEbqu2VPJSfMMuXTNgpZgajIZHxMQEGcPXPMPRs249bwBp6mMl7y2iE1t/aL8Fh7j/ADOyHhyrmPmhK2XXQuZbYkGlQQ1O0bjEJRB/Zu3CanRscpi0bfmNDTxgTOlYXK8Cw84CN5c2yg2BtWXFmSGcgubVUKsaZ5nMZZ9dUuWcDEtdKivLfE+22ezq1LNiEsAUDag/azJ41PfAyZlTnBa0SFFlSaAcQfC2eup05UjXwmHifDvSA686XoS1u81xJ4jqzF5/ZMS5NYdezMvtKR3ZREDMMyIL3XbQ6mU5qCp6M10YCoB4g8IsOCglbcJz7bUytpu83PmosuXUgcYsqXXL+bFajpsWJTSmWhUneKegitymyxDnFnumX0itUmoWo7oowmGY5rt/UGvfxSeJB3Q66ooYtzTT93xPwjk+7JqCrIacRmIkyrzrxg7dV5VyJqp1BgzhIXXuHMddqqV8sYugVUAsSJFkdzhVSx7M4I7RXesqZRfYYVHvEQbttTSnFDmDVTGLiXPhN1Y4/OtF0m+zfZxGSbeUVJDAgjIgihHMQmkWm+7Os+X84l6j9IN+709IrTDcNTp8YsLmhu9eSGCcSNs5EZEcj80S7PdS2rFJZsKuCpO8VB07fjCptxPY0SUSWVQFV6UDU7Nx+EFbksgHWNQFz5mGr7tbTGCnQV5V08tOZMU4fEGUG2/x80VIleZ6acqzQekcpDhWOYYZpOWmyISVhwxwxFKUwyw2yxKKwywjkdpjDHoXSPRyK098muxEi0Wdp1oUsGOFBUilNWy3/CKvt7sobDOoM5bZq3EcD2iNX+S9x/4enYzA+APviH8rllWZYek3y5gIPYwII9PCHi0bqwmYl4xZYTkTXZ84rDRHRHIUBFRWsEpYN7JXP87tcqSclZquRqEUYmpwqBSvEwGAi/8AyNyq212+7JfxLyx6ViGiyFXiJDHE5w1ARj5UtmJMuQlokoqdGVluqigKN1VNBvDUHJuyMiP6z+4vvj6N26lh7vtI1pKZu9OsPSPm+0NS1LnQFF7aZmHcPQxDVgYh5k2a8ON0f39VeNpbQWk2IcEmf0sPQecAEEXD/wAt2u2y5ZloAkhMKtiAaYzIC2DOlNBmRqeQpU6RR2R5rSytQQxbEGU0K0AyNfSGcThjO+2OGWXiUpsrarMDEWSMcbN2KrQDiRySdkXpNqNQ5pzByixbSzMVstHNPCjUgDspIVbSiBqguu+up3wc2hWlsndqyj30Ye6LMWKwxB1A9QqNku3tpNcNCT4td7oVa2ojdtFH75p74msmCzPTWhUcz/zEGe1Xlr2ljyUD4+UF7TpLXj1jwyB94EeYlzcAmtv/AOq2jBheFtB+9nwpa1s/szZ5NmlyujUnCGZvtYjnUNqKHTlFE2su3oJ7Kd9Cp3FTXzqI1axzAZaNuKqR3gRU/lIsmKUk6n6PETyNK+ABMPzMG5YGimCZsOKbPpnTuH0uNG+oXvdoWa2kZDn7jBhgTYhw6b1Uf3gTbhkPxe4xPe3D5qsqmeIsTuyr59byh/Ai4SOsr2zgSAAOPoUgsACTCLrIBxHQKT7gPOIjsTqaw9ZpZfIVpvMThoBhml0h+dSPc3Wm+KmWYdTuPqYt2z2jfgf0gXcN1i0TBKrhWhLEahRll25gRaJ12rZaupLIRhz1BOmY3GAwct75PE2PFZWKxLM4v+RzVNQep9TBjZ2xTHLFBUV10Hj5xBFjGetKk0rlnmY0O5rKJUlEHAE/iIqYFkJgcXk5m67LtBjsT0Mf06n0VU2oqGRDkVHllAKdKqMtRp8ItG2wGOXxwtXlUU98VwCM/EgPcQfmSjCOuFp+aohs1eYVqN7LDCwPv5fGFTbsKTmQZ55Hguo9YBzxgcMPta8xvi33KmKU8wnrAha65ACn+dkYro3X0Hf3cR7d6qn/AMomQccj6FMXlaOjliWv98tT4xYLZdavI6IAVVRgPBgMvHfzikzpmIknf6cIvEq8kCSyxzZFPiPjG1hI2saWlK4qN7GsLNbJ79fdUJ1hsiCN8KvTOV9knEO/M+dYhERWRnS1Gv3mgpoiJ+z6r84lhgCCSM8xUqaedIiER2W5UhhqCCOYNREtdRtTI3fYW8wR4I7tVcwT6aWKL9sDQH7wHDjFVcRqkqYsxA2RVl38CNDGeXzZVlzWC+zU07OyLZ46+oJLZuJLh0b9R8o9YQvDHoXhj0ULVtc2BvfDYJssHMOCORFD/SPGO2u/fnN0tiObCW1OBHtjPcCDFB2bvfoSQfZbXuMSTaWk2VZLKys2JusCOqXYild0N2UkIo96+JN94pBY8IQDDggSmAlrFx+Tu8RIee1aVlAV/eBNPKKcsPyppXTfAg1mpc0OBadFqU3aJZkifL6TEHkzAQe1D5xjk9a2pfy19TBew9LLBZw2F2bAWBoQMuqTqB5QLnH62vag9TDeEsztWTtZjWYJ5aNa9V9HbDzF+YSCMgFIPMMQfOMx+WLZ9TbVnKxTpZQLYQM3QlSx/dwDug1Yb06CwdGTStHTtyoR5qfGK7tHf3zuXZW+0smj82wn3QeLJie7dOZ90jsfDNxDGueLAyI7APVU3ZYlJxzrhelfwn+0WS/G+vWgdkv0Pxiu7OrW0Ov/AHW82MWG95VLbO7VlH+oe6G8R/s76vUJLZ7a2sGj+4+TlAkIXtBp9kAd5of9w8InTbThYqVJI1oCfSG9nxXFM+81e7UeVImTh1255+J98eYIEjyFEcDNp7Vka/8ALRN99DXxy8lebTtGZd3SJgrVZQxDQ9U4DXkATEi8b5lvIk4iCvSUY61VkbX39kZ5elqb5pNSuQlzCP4SfWIgtrr0AJ+jZQ/7IcIoPIEU84veXAFw5eyf2rsgQ4dz4ySeN8tBp1gdyn3lLKgqdVmYD+7XD5UMEpEjFZCOE0EHhVQDAi87ckx0wsGZgMWE4j1AQDluKnxiw2Ij5oR/3Fr5RsbPzgPet3ZuKdiMDHIdcgb5jInvq+9D5VjXU589PCJaCEJDiRkue52bjacJJ1Vi2NnhbQAftqy9+TD+mLdabTLnJNlg1IBqOWh8RGbyZxQh11XrDmMxBTZ2Yz22awJAMiWxG6hmThQ9tD5Q9g27zCeRHj/CycdhgSZr0AA7f4UVnYEiuhI0zp3xZbx2lAtCyUNaJjJ3UxKufOv8pit2j225mBUlj8+fssyf6rxRJM8uIJ4+qZmibKWudwvx/hWjaG1dJPY7l6o7tfOsDljlYUIoJs2pYwMaGjgoF6HOXzPpFtuX9UnH/NB8YqF7HOXzb0EW65H+pzOZ9BCRH+p7j5KnF/0x2jzQSkDtpbxaRZps0E9ROrTWrEKPAsDBOkRL1uKZbpEyRKZAxwnrGlQrA0GvCHgLNKx7w1pJTsvFhGLWgrzpnCofnWZ1zZGUEmhIIB5HfEZ3A9ph3kD1jgCdEQe2rtdMJMdVgRUEEcQajyjhgSDxRNIIsIld18vJUrqu7s5RW5V8fOHnDOsuYVIOWW73+EESYE2O55yTZ88qOimsmFgQakKcVQM1zrrBZuFclAaxjryBd4qXij0cwR6ATCzC7patMAbTf/gi5XxbPnSy1mgHo6hWFQ1GpUE1z0EU67f0g74t1mlD5u70zUr/ALqj/OEbmFa0sNgHt7AuhZGRvOFm8u/JQZd0SjuO/eecTpuymKzmfKPskgrWp3ag6a61gSl7qGwkEZ0ruyy8Itdxzieklg0xIeWIEFT/AJxixrIJQQAFbIGFhLKy8uPv3KgiH7HOUTFVlDAjfzhV5D6VyN5r4ip84gg/ToP2a+ZjFlZW808L8Fk7VLmYZ9Eg5aZcVpa/TyQswY0l1CAn2Or9mh4AZRnN62RltowKWXF0a0IrkzCh8NY0e4X+gmfuj+Lq++KnJNbXznf/AKRVgpXMeDd5ce1eX2NE/EGeKR7t2gavjfC+Jz+6M26zTnMqQyYGlL1qsujoKGoOtCCP7RFn7NTJZCqyOoVaEGm7Shg/fppb5v5dn/0hC2qFru3xXtDaEjpSKGVe/qvWbMwbMNC0NOuefM15AKmXXsxaJc5phwULlh18/aqNVgret2z2mzLQZfVZUHVOKmEGp40zgmL0lf8AUXxgvcl6KpBqGlnJhke/mIj/AMpiC0RyABun5T7oRsqGGb8TGCXDOryPwKubEWSWsycSMQSQ74T1h1ATkDvgZMnkkk61PKnZF/m3QsqbaGl+zOss4qBpXCa09YzzEKnPfFjgeHz4KWlsrD4ZzpJGtAvd6sqOWXWM+sKTZrSAwLoHX7S1piHAmmkSLXbZTMxly+iXLClaqKcSaU7hEAU41ifb7IirJZa9eXibf1gzLl2dURBD9L61quggDg+s9Ls9ul14JqR9IyoaAFl011pFgm3f0UhGxlhMZ8qUHUIwk9tCYrSy2BBAzB4cItU+YWsVmJ1xTfVYtgnljDgDw/ZJ44BpZ0ZFE0QOx37IdZDjZV0BIHE574nWuy9GQA1QcxlTIgEZd8C7qmUmp+IDxakFLdMq+H7oA/lFBGri8NE2HeY2jlz50qJm08VpV+KjzmorHsMTdmXPTYgSDgwmhyw4gQCOZiDavYbkYkbKP9LStMSkejf7YjZoHRPNfAELmAwPsfApVqpjbmecEbI6FTRFpkTkD3174F2hqs3P3CC+zgqCOKN7oHDsAkky0PqUpKAI7PClzHLGVF8oJWNJTqVKrnoaRW8OZ5mJNktBQjhBNnic7c49iCWAOFNOaj3/AHUwIwmmGpWuhqMwfLOJV1u6WWUSf1iWHKjReFO6kGL1Im2ct9pR7jA2YtLNY14WdfQRnT4VjZC6vlqpshexrXc6PcCVAtT0QnuHM5e+CNzoVlu+lFpXtOQgPbm9heLV8P7kQXtU4yrESBVmY0HELQt5LGRivrmAHAeJy9VM90GjiR5/siykz7K66vLow45V91RGcbXJMlgWiWTQUWYBw+y45HI8xwi73Bb8Lq1eq2TcjviFe1kCTHlkVXMUOhVt3gaQ5s3Fua0EHMZHr+DyKUfhmTB8EgyP1DqPH7FCNhL+WcrWec3VcdU/dO4xPtEsozKdVJB7ozOYjWK0lDXDWqnipPVPqD2gxfbytcyfYXtEg1nSlAfiU3Of2lFQeIEegxMIxLBKzXL53rD2fijs+Z0Eg+nPty5fPIKr39eTTrQJEsnBKPXocmmcO0L614RcLumNJlLn1j6/CKpsldeFS7ZjUknMnUmp3xaJjVOf/HZFszhg8OGN19efchw8J2rjTI8fSNezgO8+FlcrHoRij0eesr24JGQ8ll13e33RdLO/1OZ2vTyr8YpV3Hr93wizSpR6Evn1WApuoQST5CN7B/kRQgFmfMeBtBFsTFzlQVOfZWLRYppRXI3oV8aV8q+MCVniDVgaXMAQ9Vq5EbzuDA5H3xZBE2O6Vwa1jTx5/O1Ve8G+kbuHln8O6IMs/WB+ADzMFr9kFZrEihLHENwbeRXjmac4Dyv1jkq+sY+Ia4Ofva5rF2uScM6+r3+fdaFdZIlnM0pn/eK1YW+sof2wf54tFgH0DN2U8QIqdiP06fmKe7EDCOGGf28ysH/DAJfiCeoeaut+H6/N/Ks/+kImhSbOx3YhyyB+IgftA1LdM/Ls/wDpLD62o9GEFKEljlqdN+7KFcVQmcT8yXroml0LK6lSE4RYtnrO64mIIBoADqe2kTpSKvsgDkAPSJlrlmQQWIAoHVh7JBzBBMRNiTK0ta3L7pmwMuKNNMyKVzl2edip+W3xjOgc4s9w3gZhtVPZWzzaHeSUep8hFUUw9ECIxfzSvAKjDs3XOb2ep9Up90H70A6Cxtv6Jh4MR8YAP8YLWivQWav3ZlOXSGO4n5xC0Xi4WHkXfpcm0guG+o2fsmTRAZDBZD9Qk/nTfWDH5T2LPmH1N7fQoLIPXp2++Cl42gLPcsaVz8uznAmQfpR+IesLtDOjkN7YOdd51ryj0JY2WHcJ1A9CnHN3iOz1Clz7ahVgCakEDI/CJGzv6ZKdvoYDmdU1gzs6azR30HcYLD4dkIcGnVQ9m5C/sPkpkzJ3Hb7hBnZwbuwjygNaXrMmfigrs3M63eR6wlH/AFpe5Z89mJ3Z6KLaRRmHaYbfSHLb7ZhiY2R5RnPsTGv7vVS3gVYbp60thxWvhEa9FAl2cDQSlHdUx26zhlsf2aeMJvU9WR+SPNmh3G6JMtAmy5n9JQRmxTqfdFO85+lIL3kSOiln7KYiO1zX09IC3P15pIFasSO0CtPIQUtVoR3LuDiyFMRFKbv87Y8sZg2YyO5+XwIpL6QdXwKFdb4S8r7py/Cc18Aad0H72kmZKSeKZDA/MaH0HhAhGlA1pnlnXPx4QeuYCbLmySfaFV7CN/p4R2GkacRlofPX3HeqJn7pEnI+Gh8FQNqrlFpSoymIGK/tZeyfAU7Yrexd8upaWM1dXltnkQwIPrXnF+fI0OtaHnGYbIIOmYbgz+pj1my3lxLDosr/ABBE1rWyAZ3r9gtK+Z9Cqy8qYQ3OtfDMQgmJt5NXoz/20/3RAJhXHyOdMQ7h/K0tiRMZg2lo1sn7keQXqx6EVjsJLXWYXd7fdF1VfqTEf9QDyHxik3cetFkS2/Q9FuLYq76gUpG9hP6aiEbzKHMKtz1IdgRQhiD4wduBm6v4hTxEIaQpJJAJOZJGZiXKIWIgw5jfvWr4YSw2Sntt3UzWw6gLi/F/xTzirWMVtDfhX0ifedoxGlakmpgfYf1hj2KPJYRxzgS6uSxNsgMwu4OFDwK0GRM+rle2vZTCwPuio2P9Kv5i/wBQi2y1pILZ+yR30+EVCQ30in9tf6hGbhuPd6rH/wAL2fxBPMD9Sum0P6835Vn/ANJYJzm+pk5YhN13jFLJOfdAu/P15/y5H+jLgu8j6k7jXGD4Cnv8oXxFmZ1cvZeqYQIY7/8AVVq47xLsUaldRTzHp5xbyotNlaQ3tIOof2a5fwth7jGaWSeUZXG4158R3iNAuS2Kro+qHXtVhQ+Rr3R0rehmDhkDl88/urJml8eWozHd76IRsmCFtoIIIs8wEbwcMwEGAIMXy2XZ0BtzbnkMa8TRs+8Ed9YoIMPX9Ivr81GHkD3OcONeSdc6QdtlDZLKeHSL4NAAnSCs0n5tJ4Y5lO8J7/WKic/nMLSLbhaeRP6XJpDBSztWwp2WiaPWA6NBSxP/AOnjstU3/f8ACLG8UhNq3tCDp7R5n1gveoVrQxIqCiH+VYFShVz+L3wbvUATst6CvjT3RuSf7W+r2V8nDsPm1RXkJQ9VdDuEduKZhnIa7xXvMdJyhm5M5i1/zI084o2W4nfs/KKiPNj75ehRSe30szmPfBPZl/pCP2j74FWvKa/MekOXWDiagNScvARzKGJkB5eyWe0OjcDxCn3oOuaaVPqYYlyGYiooPWHntNMj7o7Z7WoOZguiiD9/j2oQC1uWqlXla+ikPh1CM3eASB5QxfcwrIkHeLKhHPrU86QOvy01lzCNBLmHmcBiftHLLS7Oo1+bydewk0hHFS797vD3VIYA5vafJN7KKEOLciMfBaCGWlAklgCSSTXPM6xI2elEy7QXoAmEZZk4sJ94ERcUZeHhLR9Q+fAELQDK89g8L9V4yl+6PARKua2mWwNc1ND20+PviHihvDnUEg9kdiYC8As1CtfGHCijG0EnDOxD2ZlHH72vnGRbMH6ckffeveaxpcy0u1AzFsOld0UC4btnLainRsWd2wgCgIqftNQaZxtbKcGvJfksDbUMhwzGAWcxlny9Fo96n9H+UvqYGlokWufiCDQquEg6gqd/+bohMYpxpHTur5kAtLY4IwUditf1H0zSsUehvFHoUtaazKzzMJrFlvuSLOlnbMmbKEynCvHhFUBi3bduCtip/wDFX+o/CNGOVzWkBJdK5rgBx9kF/wDEjw8/7QprwY7gPOI1hscyc+CUuJqVoCBlxqSBSCR2atYYp0DEimhXD/FWkAcS693ez7Rau6Zw1chwPGOypZD4lNCxUZio1AiwSNi7XkXCS1OpLqxA5KTXxhy9bgFneW6zQ0sMhYuQpBDg0G5sgTlnkYVMjN/o+NfL5dSpeIZm7rqcPZENp5xsrfN1Yt1VJxaDEikEUOZzYdw4xVrOaMv4l9RFj22s8ybai8qW8xTLlYWRGdSOjXMMoIMDrHcFrZhSzzBmM2XCNd+KkEIw0/SKVeEhw+HjtgAvM5/v1o5tLaBLtswt/wBOT5SEg3brUJVlSXMIXpAJqknPDpQiB20WytotM95iGWFZJajExrVZaqclU7wYmbaXRMmS5LjCFkScL1JxEg/YAGY50it+GD3OdeZ8kTcXHUbbGWvUQMvFUFTB+5LzVVwO1KHq8ju8fWA9msjTCAmZ50p28hDxu2cHwdGzNlkoLa6ezHTQiRu65aDJBwKvk+9xPsk0KQxlyWVmr9g6V7RlFCrFpuu6J8izWtZkshnRAgFGxZrULhJqRw7ICyrltLaSX/eGH+qkcGFoAslUwSRNLiCKvn3+qhuTqN2cWO/bt+bpIXpC4eWJlCMlLe1h8BDUjZG0sM8C5b2JP8oI84sl93UbQtnXGFMqUEYkFqnLMZjLXWC6OxmpftFjXNaHjdzvjwy4HwVJBgpYT9QbstZ8xMgiLis8tgsyd1joKqpO7TM0zG+Cq3dZpadGFGEvjIZiavnn1j2nLTOODCLtLy4+Ilu6Cc+Xuqdd9kMyciD/ANx8PKoJ90Trwr0jKxqyEoTuopI784sduu5JWCaiqrBgVIGYy1GWufnEO0WCU4LuXSYzE1HWBJzJK5U7qCGTPKYujvL0VjMeJKNHd00s3fl7IErQ/dFhJM1lbD0KK4yrWpbLXL2fOFW67ZkrrMKodHWpU8z9k9hpD9wHK1/kL6zIqgkkid9Jr+Cr3TVGXRnly5hMu5JLHU6xLuJvrcjtLj+Qn3QNBiTdloCWmzsdA713mnQzdBvOWkVh5c/ecbKCcf5Th1HyTk8YWZeDEeBpCQ0ctb1mOaEVZjQ5EAkkAjcYbDQB1RDQFcvNvoZv5b/0mD+0BoZX/wBeV74rV5v9DM/A/oYsO0rUmIOEqX6RI0PcgePqb/8AXkEq6P1e2H9qV6S4GloI3IMVntSj2meWFHEhUaleNAdYEzAQSCKEZEcIJ2g7EERBe8df/UJzHCS0NF45igFfScLRMuI1tUj8Z/paB7KeB8DBK5rHNW0SGZCFEzMnQVVhnwzgmfmCpncBG4EjMHj1KJef6WZ+N/6jENmiZeiMZ02ik/SPSgP3jCrLc81mGJCF1Oa+GRrnFbnAGuOeXE9g1RdIxjAXHghmOPQYaxSfusO/+0ehP8dHyP2Huo/EN5H53qpW3ZWz0J6SYSNAvR1z0BokHrbdcmeZJwhyiKi4jl0Y/ZORNTWpG/lC7ZLVUqqgFiBXWnbnDF0yS00VavGudfOH3Nkc5p3qrUDQpCMW0uB05otLsiWZBhUAD7ooPAQPmXhP6RejUdan2cszTrngNdeUWMygWwnMA0zAPfzglZ7EtKHOvECFmSh872saN4ZF3Xwy5d6oEzWNt4sn1QHFNZyQqmXULVhRv2mWmRGYHNT2RC2g2dLymRGP01ASfskZhgANPfSLWtlVK03DKu6HOhBCk51p3coKEYnoyCRvcPLM8eaFuI6N306IHdl0zFAPVAUewo6uW5eG+DL2atKcc4mWdQRw1iUkkQ9ECWAuNn1Ss0znusoe0rCK0ygDYtr7LOnmzrixAkBiBhJHfUA5U5iLBbq4sNTQxl10WKWltBwk47QwNSMiWr1aDIVoadgzgWyh0hjHAA/e1bFCHMLnLQTYpeZCKK6kAZ11rxgZecx5anAyoTkpOg4mnYPOkHGswA17ucZZt5b5sq0IockNQLWnUFSSFy1NNYUfuzYjont0pwz17ldhW5WTfUrRdFttpmtKmsHC5q4C0ZSMuBUVFNMvAm0NIcUqQOX94FbHW0T5dTLVSKCq1H2VNeecR/lBvebZZamWRid8FWFaZagaV5xdimvczdZdnka8eSjJ8u6Ggd3sj85cK1zPKI8u2SScFasajv7O2BOx18TJ8ikyhINKjKvdB27bAktmYZk01plyyiOmG90QP1Acc/5QdE1odv8ADSkHkbNWZJpnsTSrMVb2cTZ1IpU9gzAypugpaTZmwmte1RD15yFIzFaGJFgu6Uy5roeMDh8UXSdC/wDNV5aUitrWiQud4J8WJSmGgK0y5QJtF3KTVKqfEc4siKB1QKAZR35uvtUzhjERzOAEJA59nV2JWOcsJNoVZpdFwkUypzgJePzKzsQxWUZ6lWoGoVTXJckpj1y1i3OIru093y3CsyglGVlqNGBFG5iJYxzGAPNnnoiidb+IvkUqXYLO8ugCNLIFCp1poQwz451gObtkGYAq5q1QSK0YVFRU147oMXVNZwVc17dDqOEcvC61lAzQSSATnTt3jOCoDNMsJie5j3H75d6ROu/GoSYgamjZg9xGkDr1uiVKltMwzKKpagYZ0FadYQF2XvidNtaSmbJgzVA+6a07QY0C2qMGYBrka9sVCFwe5znWDoKGXqoke+AhrXfaws1um88TKpXCswkDFrociKA50pSmtItNsu8T2xsSKIq5UHsilcx/lYn2XZqyyjilylUpULSvVB1CivVB4CJL5ZQpjpJGxncyaKN8ewD91Z+J3nbzbBQex2UyVYLio1C+VakDI07hkIq6bQs1qYzJQEquHD0QMw8HcnRiaZaU7ddHs8mtKmAu2ezsiYJTuoJBy1HcaHMdhhjDHpQJbNEZDkgY/ek3XDM8bzXbvl2eamKWq88IgTfRtiTB0IUS6Z0wDMccQrnlpE61Tvm9kLSgFIXmfaArVq1OdamsK2MvVraJkueqsVFQwFKg1FCNK9opyhoAWq3Nq3nNoNZ5p+xzWdQcsVBiC1oGpnTfSsCdoZ9pltKdFYhSSQgcgginWVQa09+UWq87IqSmKdU8RrEO4LP1mqxI4e+KjE8yhwea5cD6qWbm457QMuevgolunOkozAmYWoDZ0NMg1Dn3Hvio7LbT2ifPwTDhU6ABaVod6jLOmVTzjTbRKU9QioMC7s2Ws0psaKa1qMTMwBqVqATlkPMxY2Ju9dZ8+P31VTJWtaQR2JfzJd4Eegt0Qj0FuqneX//Z",
                                  height: 55, width: 55, fit: BoxFit.cover,),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("person 11", style: TextStyle(fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  ),
                                  SizedBox(height: 8,),
                                  Text("6.26 am", style: TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black45),
                                  )
                                ],
                              ),
                            ),
                          ]
                          )
                      )
                    ]
                )
            )
        )
    );
  }
}