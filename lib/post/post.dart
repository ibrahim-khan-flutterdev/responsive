import 'package:flutter/material.dart';
import 'package:responsive/responsive/responsive.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(22)),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJAAeQMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAEBQECAwYHAP/EAEYQAAIBAgQEAgcEBgcHBQAAAAECAwQRAAUSIRMxQVEiYQYUMnGBkaEjscHRFVJTVOHwFjNikpOU8SRCcoKz0tNVVmSio//EABoBAAMBAQEBAAAAAAAAAAAAAAABAgMEBQb/xAAiEQACAgICAwADAQAAAAAAAAAAAQIREiEDQTFRYRMycQT/2gAMAwEAAhEDEQA/ANmaJiVSUatI31bi/QjAzSuGhjbWpC3Oi68rC/xv8sRCWrooGaMa2S2lVsdXUefbG2UUlRV1NSJ5IoZAxA1uSbL4QPdsT8cew5x1meL+OTv8fkf09K1JEiTJYILs4QDTz529rpjSSCmkkJlgdYyFHEbuR5i/8nF6gxFIRVVLBmXaxurcgd/v9+AKqPiiQiSRFRABpva/v6G3348Z8jUrR9JDgi4U+0BPVQrUvwVXgFgEJPiBsTyHM7ffhxlMrTrPFBFwkjOwK7XP8b/DCPJ44WqCKVXLxx21xsNLnfue55+WHcCFqmacskLMtpjE19Y2IKjtbr/HFz5co03bFx8ChK4qkYQx8XMH47azApZjKehvb64zqVleCQVNReKYkQ06tbX21N28sZx5nDT5q1PSCSHiJZywLkqBYMt/O/z6YpRtFURho2kChipJWwJsLEr0NmHLGUHRtyQUmaUaI5ggdNK6lZhGhOsqbjb322xfO56upZaeCTgKy2DlN97i9/553wcYalG4EMkMVOsYNySDquNiPcPrjGAq+bs0bIUjQxoFU3Bvv7red8HI7fwy4YUnZ8tMlNFC8MzAxIZH2/rLC2+99jc7YR1uZVUWcjLoY9VTJGqEE6j42uWtbYKF5k9bYciOOPivO6oEW7GRzpDNvzHXblgKNoqSWpqEmkkeYJEJ3GltQ2Fu4v8Aeb+Sj9NJW/Awq8tyunRVaJk1QgSHYszAc7972wvpsrqZc5Q0sAkjSnLOZOUkm1vx+mM5q8yFhI8c8SI1yBYggcx33wTTV1SMuRixSRD9mTcsTcWA23O389G7FilpMNdYYan1uVCzrKda8luQNzf/AJsZcX0f/wDU6H/BX88Ioj6/FalR5pQLvMDqQP1AN7G3XrueWMP6O1371T/4P8cUuNsynyccXTZ0eWZS1IspCU8shkLBmcaUG17dtyefljSBuHU2aBYdisbpEtlbe9zfr54CoS00UTQ1KLTBSjFFDFbG2k79+vbB88U7U9NHTIJXT2yh0WBJO7Hnz5eeHzt5ux/5YwfGmkL83kgSLhinjNQhHDTU4Uk3uRcWFt9xfp8ZUzyyypEokgjj0SFluovvY35nz7WwRGJJKqp4CO8kb6dUcY0g37nbt2wvgjnpi0lWrGnR24qU9nctp28wBc8up7b4zSOiUki0sRlpJY/VTxHH2YQaQTv022PfBP6Iq6+X1p6hI5h9lLABq0rpBt/a6beZ32xhHNFVIfVqWqWYEGYyjxR3Fxt293zw2p/sqaGCikJWoNzOLXA8hfbt8MNibfQTLFAY40mJYI1nAAAIU9R225DC6jPrle/AcrGi3uzHwsGuCbb8r7X7YHy6ZlmmjrQXAlCHUOdyQpve3y8sTVVfCp5kpImaJRdqhifE5I8IHxPLbEqyrDM5jjKGYSRGq1XVQ1r7bALf+dsJo+DpR6dxNLKT/VOVtz57Ag/DA3H9dqbRhAy24qsDfSBt8LHfn+BpMyUNRJVTycSm1IZEAtxENgWA6MBvte9vlaWjJy9Bma1ZZloqeOKX1qVQE1c9uRtvtYm+/K+NEy6aqikV2AMMY0KJCqi2w5c+vTnhZlsBkraqraIFYYNEUellCyPa4uDYWTQLjqWPPDejleGdSNCyTNphppG9kX579d/jtgqjP9tsweoLItHII2W1tDEKxW5IbuByxWpkeZoklduEYn2ILFDYXUg9BvcdfdzZQZZQOKqoeWaUxzMJpQ2gqCA2i36o292NHFKlUs44bPFaz6LqgNitumwwr2aJuiscdBHSceGUJG1o13OxXkQoPPH3Gh/fqj6/ngSc6K+aZhHJMUDhWU7Huq9DYD54W65v2cn+XOLyYkoDWiihysuFhhinnP2kjXAdgOYXyBt8vLBsuYqsShS6xgg6Xstz0uLfzthTUTyRGGqqqbW6LqjHE/q2NwSATf6YGikjr6GneZIoyv2fDVr6Cdj+WE4PyKE0tIbwTztHMWqZpopH08OKM/Z+erz3wFMgaY+Hi7GzBiLC9vF59cYsskc0YRWaJymtIwTrsSdVx8eeD6w8Gd1SmjvcApqsWIFx79h9+GliUpOSaQszGKqnpURuIk5e0brLpK35HzHWxvffDOokqoZ6eqgZJY44SFhjW8YFiALmxH+6b7jyx9rhiDvURo7i+0Dl2DdUUc9zcfzbC2hH6QppZ6QTSLC+lvWZREoO3kDt37+7DaEkqqwmRZfUNVQqxyonEmUMNmPMg25b28r8sbZrBBS0NlqHOtRuxFgLcuW19hjKOW1c0jtDWFT9oEXU2k8wedhe3cYWVcqNnH+1yThZBxVOnYE6QLLbpvz3xKjsqU66KZRAwqgVmL6h4nX2upIXY8jf6Yw9LYq+myijWiiAkjkihBUk3YkC7fGw6cxzwwpMyCVkKmFxCoMQDLp1Hva+3Lci97jtiua5hXLUUkFCjvA0qsVjiIRhY9bbW259rdcaUcqd6MKMRZbFFTTPxKbQDLPG5vzuzMG28Vibi+GdVRxzGnjmqi7SMj08YiKvpHitvuLjbywJFUsJA08ScSneSSRpSGKnV4Nr7+EfXGdPWz1tJUZhmtTHCVQtIJFvwUIvYm3UWvbrYdN00W39CmkzFq2aCORVpdJZjUWUE9WFjsetrdelsaUatSpJSSz0WsKBFJGGKybWAYkWBv8AeMKZvXqzKnqJA9JBVRlFiJ0tpsb3Xp1It2F+dsMMlEMmVLVxxNrEQ1cVggLXA2F/Cb98FCvo3yqeuL8Sqp1ZXGtJk28I2sTbbl3tvgv1iT/5X9xfzwIc01IqR0TpRhVUlnIVSD/Pv2xX1s/tpf8AEOCjWFVsXV9XFqkZhuI14ayDZ01WJHY2H8cb8OIUVKWdylwxjNyzi/lz3+gOBIYaR8w0SSv6vpJgDj221Hbny5EA9Ce2N1roqWBBG2icOGY6RYILkJpB22/DnijkjIY1VNTnXLUxO6Uzhg0cz2G9/O557Y0iWSvmSRKcrAt7cSTw+XI77eflhVJUz1UccMimnp3GuOJUUBRbnbmT1v8ATFqOR1WSOKV5IomdNOoBb9jilBtWypcyWgzNqqSCaBkmgmql53YIAbWBNt+9vfgVc4pqylimrZIAhj0vFIdQJ2vv0xjEiVaCtngeNFuQY3PPsLb2vb343psqqMwpokCyU86hpZJbXWMc1AQ7cwv4HEyQ4zXhMCpKOiNOrmIpEzkpaWwQjqCNxy5/wwBRS1MeeUsjkz0up42LxFnjujW8QG66l3vv3wVnFOPR2Ro5DxaapIDwhvFDKQTcjkAbj3Wv75m4tPl2Y12Wxv6tFGHKh2CFlPjsR7R3F78tsL6DW6Y3ymgpVeaalrCZKhHlgVVOmFAw9ok7C5tbbY25Y2zChqpJYFp4QtMGRqsOdBBIN1B2BAsGuPhzGEc+atSFDx5mjESOwSEkuh2B+/ngTOc3r6zNqChMoglh+1SPTqu/sqBbmO/uPa2B2yo4xHNbSyfY5UyRPPJMGULKCwTmW813tv3HfAeU0z1k80yVgp6Tj2icqWNQyDSSyfqDpa17YmSvqI8zjlWOCWrzFG1cZmRoYE2BLAXAJF7efPDLJA8NTEs2a08qCHSsFJRlBsQBdixJtvhxToiU1kVmiEk7PW0L1jvpJC7xi223I3O+9tsW4iQ15iajqqmmmGqBuJwrFGN0szDYbW333254q2iGvnZaifWo5Iw72Hh2G1+2NIqN81MkKTC9NOJELEgq29j2tsdhzud8DTSHnF6fkLjlcM00ixLTsoSOllcSNIQCSSQT0H03HXFv6QQ/ulT/AJVsYrJDUUEEqqFeRRdUUlr3PhHTmDv5Yr+kqz9on/1/PAq7LekqVnNz1eqo9Rq1jjj4jJxFW5Zhc8+Y94tgPK3cz1JEcT6HD8SVTdhuByvb8DbGGdZvPFnWYQerKJKGZ2TW3tXbYntsb4Beql9SopwkatWsSbDkysxG9+WKqjkOpy0zF1kOlXkiL8Qrfw6rADfy52wXRRySPJE8jIFlYEeGxsRvy88cAPSypphpp1jEkY4akoT4Qdv9630xH9IcxmhDwSGmWMlqlqYAFixO4+AHyONUtEtNvZ6Pky+vUkdRKy+K9yCxXY9AWPljOkzOoj9G2kjs0zk6iigEgXHIcxY4849fqXoFnpsxzJIYntMnH07G3shdr79cNfRGZzUS1kUlVURxxMhhqJblm57dALDBKNqghLF2mOp62rzDMo0nhnRKincRRSlTqOnlsB1JwT6NUmYSpmOXVSaKNEKiKMhQX3B1W5m1rnAUtXJmZMkNMBJRUmqnYt7T7MG8un1wx9Gc7kra3MuFSovgE8Y4nNiOX154wrpGltu2zHK4p5Ey85hOZoabiAxX2dYLx8uviKWv5YDr4mpvSKL17SoEchC6gdLMqqpJ56QCN/7JOJ9Fcyq6rOzTzwxmEzyO522LFnt2Pisf+UHC+WeuzeooaReE0s9CqTtItiIgEba3K4sL89zgeV0CaOzyvLI82pErfFGkoUQhuYiQWXqQLkE7dCOtzhhFlHqlRFNGFMliAzKSFubnlgSurcyhy2iNC9NE5UCQMt1Gw2A6Y+yCuzebNFhzCogkhaNmCxRgeIED6YdOh3G7GAyanqZZnmhLLISGMl7kXBtbtsMMoKWKlZzGDuNyST3/ADOOTzuqzqHMJuFmqRU5fwI0a+EbC19N8MPR6TMFqKtMwrfWCAhUW9keLfl1sPlgadCuLf009Xlhzd0cL6tVFWhctpKuB4l73sobz8QOHHqad5fmPyxw+bxVUFaJqrNqv1cu7cAtzsWPh6ggKSD5YU/pHL//AHvmXyf8sTiy1ydIP9PaKGuz2Wpp5A3+xALZhplKlvCO5HX3jHPQUciZZl0ckUiyRGQhCtjclvzw+zLL71EtTFPMZFfwJdRbZNxt3J+uMM8q4PWo0E0nESInUwPiPMEbbcyPhi340ZWcKMlzJEKvRyA2HtWHX+ODKHLayKjq4ZKZ9UzKqqCL7aiTi8VfI8jiV2LkggDe3L64wfMGHDdluxGjWDbmLm5tvvf4Yu5E22WjpKmHLJ6YxEGVhYMwFuVr7+fTDr0VhahYJWDha1PjJFr7i33YSR1lSZDHEA236xuLnub9bYg5mkaqftiTbUGYHcD3crHpblhtyFidhlxpKAcM1IMawcPiG3a24HXAno/VUGU1lSprZA8hMcISMeMWBvvjm6SRGiIBcpa5Vk2T7sM6TLZ6iSWKomSHgSAXnsdyD4dj5Yhpj7oYZBIIMwnMdUImu0kRspvbUNydgdwfccRkwFHmK+szsk8cCwo0Oli1jYgXBBFh0xg/oxWTuTS1+Xsp3Cifc78uXL8sGP6M+kSodEUEgIsGSYXt03NsTtlYyXQ0zGcyZd9lm08bxm7mSNdKi/8Aw/XGdFmVItfDJDn0kqklSsMd5PEQb+yflhKmQ+k0kckU+XS8GXa5dWVvPZicRBktdRm75PWprADEQMeVu1x3wJyqmS/Z0NdHJWV5SLNJnikN+HMpBXqGtpHM2AtvvjXLqxaapPrOZO2uNhzPtC1ufTc/LHN1Mk1GwDUNWF1nV9i5AX4Y3qhGiwl0MVrSSalFybeze5226Wt3wrl2JPuhxX1DVphaZozG7EI7SkLYo6357m5G3be3XB2n0X7x/wCGPzxxRzKnUywimfjX229kjflf48vjiP0zS/sx/c/jgbmyk62egVXovljlphBMs7WOuwkA2t3B+mFGceirZhMpgqadWC20tcHt7Lch7sdRJmqReEIqO5tHxGIDDbxXF7DfrgGfNKuSnB9VTmblirC3e19h5nBckVjZ57V+iWfUQcmhmfexeIkj38/wwmaiq401T0syLexLR7fG4GPUGzSoVWSmdoHv7UZJ1beRtz7DGVXIzytJ65LPIDvJLpew6gbm1/f88XmwwPMpE4sjy8FepayMFA7CxIA+GBxHDJZLqQXJ8E69uzAffj0h46E1EdQ1NTHSpIBTSAdwDt26c8C1dBlc5EzUVa4dNBNwIy1z4hqB38uWHkgqjjKWkl4MiRpUrqFxqpyVPxF7/wAMGwtJlNKI5WkjZ3LXB4fIAdSt+vXDsUDUte1LROXGjUgTwE3YbbX3tfa4v9MfVNRm1AICRI6ytpEYYyNyuNiu/LoTgewWnYAmZxhQOPUOCAburSefUvgqgzCKGoj0y0moMp0KqKed/wBRD9+NTUw1MnDrslglcAXJpmWS3L2vh2xpCno0spWairaaZRpIiqNQX3q1gMTiVnYVRZhU2V46mqNhcKkkoHySVh9MHJ6QZtEx1VskadS89v8AqQ2+uFEeTZHOb0uaurBQqrUQ6hYX5lR598Z1Po/mqytLlOd0sqk7RwVRUgf8O+Jp+ylj6OlpvSvMWiJjrTVL3QU8g5/2WTzxzHp/nk4zLLtZjdlpy0q8IKrMzG11u1vZHU4XZjXZ9QlVrmQqBa8ixSBvmb4U5wr5jXU2hoi7QxIFXZdRHIW2G/TFxT7M5U2iYswZppaiKKFYgRqAiQEbdLC/Q98a/pqs/XX+6MKPUZrXXQ1+VpF3+ZxPqVb+yf5Y0pEuCPUBVqmpYdGmRw2m1wD2vbmPlviOKJFOiZ1Nt1ckBu+9u464JWlRQWcqipuXbxH4gG31ONZYIZTEVkRkkKpHHHJy8yBcjz8+mMmi7BoqllAKqqX3KkWIP9k3J+VsSLTI5milLIDuzEXF9rX9/XFpqid5GlVY7kBSwFytuQ393PfGIeQnhyT2I9llXVp67G+Ch2ZVDpGoWn1W0nUTuOXv/DFwxcKsAlnRfEAQfHvbw8rWFvlilVMfWJGSYvr2ZgmjUOt1HniiSzOnAjdpVuSIzuBbfbt15WwUF0yuYR1lLmXHrYUYOio6tKNRsb7gG5NgN7jtbGMq070iyyQSrCJlIfWurbuoYWXrzPM42mEDyl4omXUw1BHNrd+V/rixQxniwMWXUDoRrOov7rn4XwJexN70LYamvaampcumVmJ4igBrpYauZUnnyAU9cTD6pmLxrW0keosHjmN7SAqACLKoIHvANgL9yqqleeulSoiillDEsJRq3B3uTuLb9OmJepkrNEUgMcAGm0KorRpe5Cm22/f3Yom2J8uyx0pxNDEwEc8iqFW50KxPhJ2a9+Z225gYlqaqAcR1UasBqKTTKWUbW8IuCPj+WHS0UVNWNMamr4QXTCzR6/CRZydTWBNzvYnfGlVUUlRXXqcwqlgY6HjjQAFD01KTcD9UiwvvywWPTOTraKrnZpELhoYV4oiNu/Sw/wBcKIGlhmcB0vG3i4yde217dRzx3eXjiZlU0uXqa8OV0xCUq7qA/i3tcb7/AHY0/R9XTekFLN6uZhOjQKhnTiMLk72Y3B7k++2KsleDg4oXq30eqxyD9aOfYefM4t+iT+4Vf94/+PHoNXlOrhMiQq5TVURgqJIxfa1hc8+3Qb4H49H+7L/ln/LBZX8DZEpy1kiIJ5hiWxDndQwUAdFH164opE6a0uTzNxYY+QNrsoD2HMG4H0xAj6YWJZQQhJsGcE/G2IYF7m6oN9ug8hj6Yu7XfZuXhGkHbGf2JMcaIoYtZnLcweXuHzwAWPgRwryGJ7DYWDW3+/EywPwEZ4ktbVrW5Om9t99viMQXlZmRHEqxEqLyi1u4JO/LpiJoZFERljPjj1Lv7Y33Hbly8sAzRIoBApVJJpG1XSMg6RtY7XPfYgYHdAsIIYpKDYxlTc98b0svq0n2dkcDe4vp8/8AXGUUXHns0kcerdne56dTb8MAEU7+r8J42vMSQyuOS+XyxZ2H2oZPGWv9mRpX8LeeJSmKIWJUEDVa9i3Ta/PESMImsx8Y3VFO588AiqxyT6WlZ9RICgknyuL7Afnj5QpqSrtaxKuIwGbbnirSkyDX5+Eb3xu0bUrl5lEckVvA2zKfd1+GAZVI4IJVq44jT1Hs8aInzOy8gfdba/O+L0oeJWrEqGWeGU7awTKG57Eb+f3YiqtSVrkvdwFJeNR4SQCLWNjzA+J2xWkr+DOZXghl4gtIs66lN/rfr'
                      'cYWw0FDMK+aFYIUgkDghaaGBLoPKy3Hz3+mCv6PVv7tlv8A+n/bhXUVL1LIEluqAKlmPgHYX8/5ODPWcy/fqr/PP/3YQz//2Q=='),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Ibrahim Khan'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    child: Row(
                      children: [
                        Text(
                          '12h',
                          style: TextStyle(fontSize: 10),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Icon(
                            Icons.public,
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Responsive.isDesktop(context)
                    ? PreferredSize(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 1390),
                          child: Icon(
                            Icons.more_horiz,
                          ),
                        ),
                        preferredSize: Size(screenSize.width, 1200))
                    : Padding(
                        padding: const EdgeInsets.only(left: 310),
                        child: Icon(
                          Icons.more_horiz,
                        ),
                      ),
              ),
            ],
          ),
          SizedBox(
            height: 29,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text('today my post'),
          ),
          Container(
            height: 500,
            width: 1700,
            decoration: BoxDecoration(color: Colors.white),
            child: Image.asset(
              'assets/images/beautiful.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 15,
                    ),
                  )),
              Text('1k', style: TextStyle(color: Colors.grey)),
              SizedBox(
                width: 110,
              ),
              Text(
                ' 155k Comment ',
                style: TextStyle(color: Colors.grey),
              ),
              Text(' 15.5k Share ', style: TextStyle(color: Colors.grey)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.grey,
              ),
              Text('like'),
              Icon(
                Icons.mode_comment_outlined,
                color: Colors.grey,
              ),
              Text('comment'),
              Icon(
                Icons.share_outlined,
                color: Colors.grey,
              ),
              Text('share'),
            ],
          )
        ],
      ),
    );
  }
}
