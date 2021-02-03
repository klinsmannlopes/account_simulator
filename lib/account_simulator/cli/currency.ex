# Este módulo possui listas com informações sobre as moedas.

defmodule AccountSimulator.CLI.Currency do
  # Lista as informações das moedas, de acordo com o compliance ISO 4217.
  def info do
    [
      AED: %{
        name: "UAE Dirham",
        symbol: "د.إ",
        weight: 2,
        exponent: 2
      },
      AFN: %{
        name: "Afghani",
        symbol: "؋",
        weight: 1,
        exponent: 2
      },
      ALL: %{
        name: "Lek",
        symbol: "Lek",
        weight: 1,
        exponent: 2
      },
      AMD: %{
        name: "Armenian Dram",
        symbol: "AMD",
        weight: 1,
        exponent: 2
      },
      ANG: %{
        name: "Netherlands Antillian Guilder",
        symbol: "ƒ",
        weight: 1,
        exponent: 2
      },
      AOA: %{
        name: "Kwanza",
        symbol: "Kz",
        weight: 1,
        exponent: 2
      },
      ARS: %{
        name: "Argentine weight",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      AUD: %{
        name: "Australian Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      AWG: %{
        name: "Aruban Guilder",
        symbol: "ƒ",
        weight: 1,
        exponent: 2
      },
      AZN: %{
        name: "Azerbaijanian Manat",
        symbol: "ман",
        weight: 1,
        exponent: 2
      },
      BAM: %{
        name: "Convertible Marks",
        symbol: "KM",
        weight: 1,
        exponent: 2
      },
      BBD: %{
        name: "Barbados Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      BDT: %{
        name: "Taka",
        symbol: "৳",
        weight: 1,
        exponent: 2
      },
      BGN: %{
        name: "Bulgarian Lev",
        symbol: "лв",
        weight: 1,
        exponent: 2
      },
      BHD: %{
        name: "Bahraini Dinar",
        symbol: ".د.ب",
        weight: 1,
        exponent: 3
      },
      BIF: %{
        name: "Burundi Franc",
        symbol: "FBu",
        weight: 1,
        exponent: 0
      },
      BMD: %{
        name: "Bermudian Dollar (customarily known as Bermuda Dollar)",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      BND: %{
        name: "Brunei Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      BOB: %{
        name: "Boliviano Mvdol",
        symbol: "$b",
        weight: 1,
        exponent: 2
      },
      BOV: %{
        name: "Boliviano Mvdol",
        symbol: "$b",
        weight: 1,
        exponent: 2
      },
      BRL: %{
        name: "Brazilian Real",
        symbol: "R$",
        weight: 5,
        exponent: 2
      },
      BSD: %{
        name: "Bahamian Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      BTN: %{
        name: "Indian Rupee Ngultrum",
        symbol: "Nu.",
        weight: 1,
        exponent: 2
      },
      BWP: %{
        name: "Pula",
        symbol: "P",
        weight: 1,
        exponent: 2
      },
      BYR: %{
        name: "Belarussian Ruble",
        symbol: "p.",
        weight: 1,
        exponent: 0
      },
      BZD: %{
        name: "Belize Dollar",
        symbol: "BZ$",
        weight: 1,
        exponent: 2
      },
      CAD: %{
        name: "Canadian Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      CDF: %{
        name: "Congolese Franc",
        symbol: "CF",
        weight: 1,
        exponent: 2
      },
      CHF: %{
        name: "Swiss Franc",
        symbol: "CHF",
        weight: 1,
        exponent: 2
      },
      CLF: %{
        name: "Chilean weight Unidades de fomento",
        symbol: "$",
        weight: 1,
        exponent: 4
      },
      CLP: %{
        name: "Chilean weight Unidades de fomento",
        symbol: "$",
        weight: 1,
        exponent: 0
      },
      CNY: %{
        name: "Yuan Renminbi",
        symbol: "¥",
        weight: 1,
        exponent: 2
      },
      COP: %{
        name: "Colombian weight",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      COU: %{
        name: "Colombian weight Unidad de Valor Real",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      CRC: %{
        name: "Costa Rican Colon",
        symbol: "₡",
        weight: 1,
        exponent: 2
      },
      CUC: %{
        name: "Cuban weight weight Convertible",
        symbol: "₱",
        weight: 1,
        exponent: 2
      },
      CUP: %{
        name: "Cuban weight weight Convertible",
        symbol: "₱",
        weight: 1,
        exponent: 2
      },
      CVE: %{
        name: "Cape Verde Escudo",
        symbol: "$",
        weight: 1,
        exponent: 0
      },
      CZK: %{
        name: "Czech Koruna",
        symbol: "Kč",
        weight: 1,
        exponent: 2
      },
      DJF: %{
        name: "Djibouti Franc",
        symbol: "Fdj",
        weight: 1,
        exponent: 0
      },
      DKK: %{
        name: "Danish Krone",
        symbol: "kr",
        weight: 1,
        exponent: 2
      },
      DOP: %{
        name: "Dominican weight",
        symbol: "RD$",
        weight: 1,
        exponent: 2
      },
      DZD: %{
        name: "Algerian Dinar",
        symbol: "دج",
        weight: 1,
        exponent: 2
      },
      EEK: %{
        name: "Kroon",
        symbol: "KR",
        weight: 1,
        exponent: 2
      },
      EGP: %{
        name: "Egyptian Pound",
        symbol: "£",
        weight: 1,
        exponent: 2
      },
      ERN: %{
        name: "Nakfa",
        symbol: "Nfk",
        weight: 1,
        exponent: 2
      },
      ETB: %{
        name: "Ethiopian Birr",
        symbol: "Br",
        weight: 1,
        exponent: 2
      },
      EUR: %{
        name: "Euro",
        symbol: "€",
        weight: 1,
        exponent: 2
      },
      FJD: %{
        name: "Fiji Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      FKP: %{
        name: "Falkland Islands Pound",
        symbol: "£",
        weight: 1,
        exponent: 2
      },
      GBP: %{
        name: "Pound Sterling",
        symbol: "£",
        weight: 1,
        exponent: 2
      },
      GEL: %{
        name: "Lari",
        symbol: "₾",
        weight: 1,
        exponent: 2
      },
      GHS: %{
        name: "Cedi",
        symbol: "GH₵",
        weight: 1,
        exponent: 2
      },
      GIP: %{
        name: "Gibraltar Pound",
        symbol: "£",
        weight: 1,
        exponent: 2
      },
      GMD: %{
        name: "Dalasi",
        symbol: "D",
        weight: 1,
        exponent: 2
      },
      GNF: %{
        name: "Guinea Franc",
        symbol: "FG",
        weight: 1,
        exponent: 0
      },
      GTQ: %{
        name: "Quetzal",
        symbol: "Q",
        weight: 1,
        exponent: 2
      },
      GYD: %{
        name: "Guyana Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      HKD: %{
        name: "Hong Kong Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      HNL: %{
        name: "Lempira",
        symbol: "L",
        weight: 1,
        exponent: 2
      },
      HRK: %{
        name: "Croatian Kuna",
        symbol: "kn",
        weight: 1,
        exponent: 2
      },
      HTG: %{
        name: "Gourde US Dollar",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      HUF: %{
        name: "Forint",
        symbol: "Ft",
        weight: 1,
        exponent: 2
      },
      IDR: %{
        name: "Rupiah",
        symbol: "Rp",
        weight: 1,
        exponent: 2
      },
      ILS: %{
        name: "New Israeli Sheqel",
        symbol: "₪",
        weight: 1,
        exponent: 2
      },
      INR: %{
        name: "Indian Rupee",
        symbol: "₹",
        weight: 1,
        exponent: 2
      },
      IQD: %{
        name: "Iraqi Dinar",
        symbol: "‎ع.د",
        weight: 1,
        exponent: 3
      },
      IRR: %{
        name: "Iranian Rial",
        symbol: "﷼",
        weight: 1,
        exponent: 2
      },
      ISK: %{
        name: "Iceland Krona",
        symbol: "kr",
        weight: 1,
        exponent: 0
      },
      JMD: %{
        name: "Jamaican Dollar",
        symbol: "J$",
        weight: 1,
        exponent: 2
      },
      JOD: %{
        name: "Jordanian Dinar",
        symbol: "JOD",
        weight: 1,
        exponent: 3
      },
      JPY: %{
        name: "Yen",
        symbol: "¥",
        weight: 1,
        exponent: 0
      },
      KES: %{
        name: "Kenyan Shilling",
        symbol: "KSh",
        weight: 1,
        exponent: 2
      },
      KGS: %{
        name: "Som",
        symbol: "лв",
        weight: 1,
        exponent: 2
      },
      KHR: %{
        name: "Riel",
        symbol: "៛",
        weight: 1,
        exponent: 2
      },
      KMF: %{
        name: "Comoro Franc",
        symbol: "CF",
        weight: 1,
        exponent: 0
      },
      KPW: %{
        name: "North Korean Won",
        symbol: "₩",
        weight: 1,
        exponent: 2
      },
      KRW: %{
        name: "Won",
        symbol: "₩",
        weight: 1,
        exponent: 0
      },
      KWD: %{
        name: "Kuwaiti Dinar",
        symbol: "د.ك",
        weight: 1,
        exponent: 3
      },
      KYD: %{
        name: "Cayman Islands Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      KZT: %{
        name: "Tenge",
        symbol: "лв",
        weight: 1,
        exponent: 2
      },
      LAK: %{
        name: "Kip",
        symbol: "₭",
        weight: 1,
        exponent: 2
      },
      LBP: %{
        name: "Lebanese Pound",
        symbol: "£",
        weight: 1,
        exponent: 2
      },
      LKR: %{
        name: "Sri Lanka Rupee",
        symbol: "₨",
        weight: 1,
        exponent: 2
      },
      LRD: %{
        name: "Liberian Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      LSL: %{
        name: "Rand Loti",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      LTL: %{
        name: "Lithuanian Litas",
        symbol: "Lt",
        weight: 1,
        exponent: 2
      },
      LVL: %{
        name: "Latvian Lats",
        symbol: "Ls",
        weight: 1,
        exponent: 2
      },
      LYD: %{
        name: "Libyan Dinar",
        symbol: "ل.د",
        weight: 1,
        exponent: 3
      },
      MAD: %{
        name: "Moroccan Dirham",
        symbol: "د.م.",
        weight: 1,
        exponent: 2
      },
      MDL: %{
        name: "Moldovan Leu",
        symbol: "MDL",
        weight: 1,
        exponent: 2
      },
      MGA: %{
        name: "Malagasy Ariary",
        symbol: "Ar",
        weight: 1,
        exponent: 2
      },
      MKD: %{
        name: "Denar",
        symbol: "ден",
        weight: 1,
        exponent: 2
      },
      MMK: %{
        name: "Kyat",
        symbol: "K",
        weight: 1,
        exponent: 2
      },
      MNT: %{
        name: "Tugrik",
        symbol: "₮",
        weight: 1,
        exponent: 2
      },
      MOP: %{
        name: "Pataca",
        symbol: "MOP$",
        weight: 1,
        exponent: 2
      },
      MRO: %{
        name: "Ouguiya",
        symbol: "UM",
        weight: 1,
        exponent: 2
      },
      MUR: %{
        name: "Mauritius Rupee",
        symbol: "₨",
        weight: 1,
        exponent: 2
      },
      MVR: %{
        name: "Rufiyaa",
        symbol: "Rf",
        weight: 1,
        exponent: 2
      },
      MWK: %{
        name: "Kwacha",
        symbol: "MK",
        weight: 1,
        exponent: 2
      },
      MXN: %{
        name: "Mexican weight",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      MXV: %{
        name: "Mexican weight Mexican Unidad de Inversion (UDI)",
        symbol: "UDI",
        weight: 1,
        exponent: 2
      },
      MYR: %{
        name: "Malaysian Ringgit",
        symbol: "RM",
        weight: 1,
        exponent: 2
      },
      MZN: %{
        name: "Metical",
        symbol: "MT",
        weight: 1,
        exponent: 2
      },
      NAD: %{
        name: "Rand Namibia Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      NGN: %{
        name: "Naira",
        symbol: "₦",
        weight: 1,
        exponent: 2
      },
      NIO: %{
        name: "Cordoba Oro",
        symbol: "C$",
        weight: 1,
        exponent: 2
      },
      NOK: %{
        name: "Norwegian Krone",
        symbol: "kr",
        weight: 1,
        exponent: 2
      },
      NPR: %{
        name: "Nepalese Rupee",
        symbol: "₨",
        weight: 1,
        exponent: 2
      },
      NZD: %{
        name: "New Zealand Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      OMR: %{
        name: "Rial Omani",
        symbol: "﷼",
        weight: 1,
        exponent: 3
      },
      PAB: %{
        name: "Balboa US Dollar",
        symbol: "B/.",
        weight: 1,
        exponent: 2
      },
      PEN: %{
        name: "Nuevo Sol",
        symbol: "S/.",
        weight: 1,
        exponent: 2
      },
      PGK: %{
        name: "Kina",
        symbol: "K",
        weight: 1,
        exponent: 2
      },
      PHP: %{
        name: "Philippine weight",
        symbol: "Php",
        weight: 1,
        exponent: 2
      },
      PKR: %{
        name: "Pakistan Rupee",
        symbol: "₨",
        weight: 1,
        exponent: 2
      },
      PLN: %{
        name: "Zloty",
        symbol: "zł",
        weight: 1,
        exponent: 2
      },
      PYG: %{
        name: "Guarani",
        symbol: "Gs",
        weight: 1,
        exponent: 0
      },
      QAR: %{
        name: "Qatari Rial",
        symbol: "﷼",
        weight: 1,
        exponent: 2
      },
      RON: %{
        name: "New Leu",
        symbol: "lei",
        weight: 1,
        exponent: 2
      },
      RSD: %{
        name: "Serbian Dinar",
        symbol: "Дин.",
        weight: 1,
        exponent: 2
      },
      RUB: %{
        name: "Russian Ruble",
        symbol: "₽",
        weight: 1,
        exponent: 2
      },
      RWF: %{
        name: "Rwanda Franc",
        symbol: " ",
        weight: 1,
        exponent: 0
      },
      SAR: %{
        name: "Saudi Riyal",
        symbol: "﷼",
        weight: 1,
        exponent: 2
      },
      SBD: %{
        name: "Solomon Islands Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      SCR: %{
        name: "Seychelles Rupee",
        symbol: "₨",
        weight: 1,
        exponent: 2
      },
      SDG: %{
        name: "Sudanese Pound",
        symbol: "SDG",
        weight: 1,
        exponent: 2
      },
      SEK: %{
        name: "Swedish Krona",
        symbol: "kr",
        weight: 1,
        exponent: 2
      },
      SGD: %{
        name: "Singapore Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      SHP: %{
        name: "Saint Helena Pound",
        symbol: "£",
        weight: 1,
        exponent: 2
      },
      SLL: %{
        name: "Leone",
        symbol: "Le",
        weight: 1,
        exponent: 2
      },
      SOS: %{
        name: "Somali Shilling",
        symbol: "S",
        weight: 1,
        exponent: 2
      },
      SRD: %{
        name: "Surinam Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      STD: %{
        name: "Dobra",
        symbol: "Db",
        weight: 1,
        exponent: 2
      },
      SVC: %{
        name: "El Salvador Colon US Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      SYP: %{
        name: "Syrian Pound",
        symbol: "£",
        weight: 1,
        exponent: 2
      },
      SZL: %{
        name: "Lilangeni",
        symbol: "E",
        weight: 1,
        exponent: 2
      },
      THB: %{
        name: "Baht",
        symbol: "฿",
        weight: 1,
        exponent: 2
      },
      TJS: %{
        name: "Somoni",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      TMT: %{
        name: "Manat",
        symbol: "₼",
        weight: 1,
        exponent: 2
      },
      TND: %{
        name: "Tunisian Dinar",
        symbol: "د.ت",
        weight: 1,
        exponent: 2
      },
      TOP: %{
        name: "Pa'anga",
        symbol: "T$",
        weight: 1,
        exponent: 2
      },
      TRY: %{
        name: "Turkish Lira",
        symbol: "TL",
        weight: 1,
        exponent: 2
      },
      TTD: %{
        name: "Trinidad and Tobago Dollar",
        symbol: "TT$",
        weight: 1,
        exponent: 2
      },
      TWD: %{
        name: "New Taiwan Dollar",
        symbol: "NT$",
        weight: 1,
        exponent: 2
      },
      TZS: %{
        name: "Tanzanian Shilling",
        symbol: "Tsh",
        weight: 1,
        exponent: 2
      },
      UAH: %{
        name: "Hryvnia",
        symbol: "₴",
        weight: 1,
        exponent: 2
      },
      UGX: %{
        name: "Uganda Shilling",
        symbol: "Ush",
        weight: 1,
        exponent: 0
      },
      USD: %{
        name: "US Dollar",
        symbol: "$",
        weight: 10,
        exponent: 2
      },
      UYI: %{
        name: "weight Uruguayo Uruguay weight en Unidades Indexadas",
        symbol: "$U",
        weight: 1,
        exponent: 0
      },
      UYU: %{
        name: "weight Uruguayo Uruguay weight en Unidades Indexadas",
        symbol: "$U",
        weight: 1,
        exponent: 2
      },
      UZS: %{
        name: "Uzbekistan Sum",
        symbol: "лв",
        weight: 1,
        exponent: 2
      },
      VEF: %{
        name: "Bolivar Fuerte",
        symbol: "Bs",
        weight: 1,
        exponent: 2
      },
      VND: %{
        name: "Dong",
        symbol: "₫",
        weight: 1,
        exponent: 0
      },
      VUV: %{
        name: "Vatu",
        symbol: "VT",
        weight: 1,
        exponent: 0
      },
      WST: %{
        name: "Tala",
        symbol: "WS$",
        weight: 1,
        exponent: 2
      },
      XAF: %{
        name: "CFA Franc BEAC",
        symbol: "FCFA",
        weight: 1,
        exponent: 0
      },
      XAG: %{
        name: "Silver",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      XAU: %{
        name: "Gold",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      XBA: %{
        name: "Bond Markets Units European Composite Unit (EURCO)",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      XBB: %{
        name: "European Monetary Unit (E.M.U.-6)",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      XBC: %{
        name: "European Unit of Account 9(E.U.A.-9)",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      XBD: %{
        name: "European Unit of Account 17(E.U.A.-17)",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      XCD: %{
        name: "East Caribbean Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      },
      XDR: %{
        name: "SDR",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      XFU: %{
        name: "UIC-Franc",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      XOF: %{
        name: "CFA Franc BCEAO",
        symbol: " ",
        weight: 1,
        exponent: 0
      },
      XPD: %{
        name: "Palladium",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      XPF: %{
        name: "CFP Franc",
        symbol: " ",
        weight: 1,
        exponent: 0
      },
      XPT: %{
        name: "Platinum",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      XTS: %{
        name: "Codes specifically reserved for testing purposes",
        symbol: " ",
        weight: 1,
        exponent: 2
      },
      YER: %{
        name: "Yemeni Rial",
        symbol: "﷼",
        weight: 1,
        exponent: 2
      },
      ZAR: %{
        name: "Rand",
        symbol: "R",
        weight: 1,
        exponent: 2
      },
      ZMK: %{
        name: "Zambian Kwacha",
        symbol: "ZK",
        weight: 1,
        exponent: 2
      },
      ZWL: %{
        name: "Zimbabwe Dollar",
        symbol: "$",
        weight: 1,
        exponent: 2
      }
    ]
  end

  @doc """
  Lista com as moedas para a criação de novos usuários no sistema.

  Todas moedas começam com valor 0.

  ## Exemplo

      iex> usuario[Pedro: Moeda.novo()]
      [AED: 0, AFN: 0, ALL: 0, AMD: 0, ANG: 0, AOA: 0, ARS: 0, AUD: 0, AWG: 0, AZN: 0,
      BAM: 0, BBD: 0, BDT: 0, BGN: 0, BHD: 0, BIF: 0, BMD: 0, BND: 0, BOB: 0, BOV: 0,...

  """
  def new do
    [
      AED: 0,
      AFN: 0,
      ALL: 0,
      AMD: 0,
      ANG: 0,
      AOA: 0,
      ARS: 0,
      AUD: 0,
      AWG: 0,
      AZN: 0,
      BAM: 0,
      BBD: 0,
      BDT: 0,
      BGN: 0,
      BHD: 0,
      BIF: 0,
      BMD: 0,
      BND: 0,
      BOB: 0,
      BOV: 0,
      BRL: 0,
      BSD: 0,
      BTN: 0,
      BWP: 0,
      BYR: 0,
      BZD: 0,
      CAD: 0,
      CDF: 0,
      CHF: 0,
      CLF: 0,
      CLP: 0,
      CNY: 0,
      COP: 0,
      COU: 0,
      CRC: 0,
      CUC: 0,
      CUP: 0,
      CVE: 0,
      CZK: 0,
      DJF: 0,
      DKK: 0,
      DOP: 0,
      DZD: 0,
      EEK: 0,
      EGP: 0,
      ERN: 0,
      ETB: 0,
      EUR: 0,
      FJD: 0,
      FKP: 0,
      GBP: 0,
      GEL: 0,
      GHS: 0,
      GIP: 0,
      GMD: 0,
      GNF: 0,
      GTQ: 0,
      GYD: 0,
      HKD: 0,
      HNL: 0,
      HRK: 0,
      HTG: 0,
      HUF: 0,
      IDR: 0,
      ILS: 0,
      INR: 0,
      IQD: 0,
      IRR: 0,
      ISK: 0,
      JMD: 0,
      JOD: 0,
      JPY: 0,
      KES: 0,
      KGS: 0,
      KHR: 0,
      KMF: 0,
      KPW: 0,
      KRW: 0,
      KWD: 0,
      KYD: 0,
      KZT: 0,
      LAK: 0,
      LBP: 0,
      LKR: 0,
      LRD: 0,
      LSL: 0,
      LTL: 0,
      LVL: 0,
      LYD: 0,
      MAD: 0,
      MDL: 0,
      MGA: 0,
      MKD: 0,
      MMK: 0,
      MNT: 0,
      MOP: 0,
      MRO: 0,
      MUR: 0,
      MVR: 0,
      MWK: 0,
      MXN: 0,
      MXV: 0,
      MYR: 0,
      MZN: 0,
      NAD: 0,
      NGN: 0,
      NIO: 0,
      NOK: 0,
      NPR: 0,
      NZD: 0,
      OMR: 0,
      PAB: 0,
      PEN: 0,
      PGK: 0,
      PHP: 0,
      PKR: 0,
      PLN: 0,
      PYG: 0,
      QAR: 0,
      RON: 0,
      RSD: 0,
      RUB: 0,
      RWF: 0,
      SAR: 0,
      SBD: 0,
      SCR: 0,
      SDG: 0,
      SEK: 0,
      SGD: 0,
      SHP: 0,
      SLL: 0,
      SOS: 0,
      SRD: 0,
      STD: 0,
      SVC: 0,
      SYP: 0,
      SZL: 0,
      THB: 0,
      TJS: 0,
      TMT: 0,
      TND: 0,
      TOP: 0,
      TRY: 0,
      TTD: 0,
      TWD: 0,
      TZS: 0,
      UAH: 0,
      UGX: 0,
      USD: 0,
      UYI: 0,
      UYU: 0,
      UZS: 0,
      VEF: 0,
      VND: 0,
      VUV: 0,
      WST: 0,
      XAF: 0,
      XAG: 0,
      XAU: 0,
      XBA: 0,
      XBB: 0,
      XBC: 0,
      XBD: 0,
      XCD: 0,
      XDR: 0,
      XFU: 0,
      XOF: 0,
      XPD: 0,
      XPF: 0,
      XPT: 0,
      XTS: 0,
      YER: 0,
      ZAR: 0,
      ZMK: 0,
      ZWL: 0
    ]
  end
end
