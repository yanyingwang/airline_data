require "airline_data/version"

module AirlineData
  extend self
  def gen_ars
    ars = []
    f = File.open('airline.txt', 'r')

    f.lines.each do |l|
      ar = l.strip.split("\t")
      name = ar.first
      iata = ar.select { |e| e.size == 2 }.first
      icao = ar.select { |e| e.size == 3 }.first
      en_name = ar.select { |e| e != name && e != iata && e!= icao }.first
      ars << { name: name, iata: iata, icao: icao, en_name: en_name, country: "china" }
    end
  end
  def gen_arss
    arss = []
    f1 = File.open('airline1.txt', 'r')

    f1.lines.each do |l|
      ar = l.strip.split("\t")
      name = ar.first
      iata = ar.select { |e| e.size == 2 }.first
      icao = ar.select { |e| e.size == 3 }.first
      en_name = ar.select { |e| e != name && e != iata && e!= icao }.first
      arss << { name: name, iata: iata, icao: icao, en_name: en_name }
    end
  end

  ARS = [{:name=>"中国国际航空公司", :iata=>"CA", :icao=>"CCA", :en_name=>"Air China", :country=>"china"},
         {:name=>"中国北方航空公司", :iata=>"CJ", :icao=>"CBF", :en_name=>"China Northern Airlines", :country=>"china"},
         {:name=>"中国南方航空公司", :iata=>"CZ", :icao=>"CSN", :en_name=>"China Southern Airlines", :country=>"china"},
         {:name=>"中国西南航空公司", :iata=>"SZ", :icao=>"CXN", :en_name=>"China Southwest Airlines", :country=>"china"},
         {:name=>"中国西北航空公司", :iata=>"WH", :icao=>"CWN", :en_name=>"China Northwest Airlines", :country=>"china"},
         {:name=>"东方航空公司", :iata=>"MU", :icao=>"CES", :en_name=>"China Eastern Airlines", :country=>"china"},
         {:name=>"厦门航空公司", :iata=>"MF", :icao=>"CXA", :en_name=>"Xiamen Airlines", :country=>"china"},
         {:name=>"山东航空公司", :iata=>"SC", :icao=>"CDG", :en_name=>"Shandong Airlines", :country=>"china"},
         {:name=>"上海航空公司", :iata=>"FM", :icao=>"CSF", :en_name=>"Shanghai Airlines", :country=>"china"},
         {:name=>"深圳航空公司", :iata=>"4G", :icao=>"CSJ", :en_name=>"Shenzhen Airlines", :country=>"china"},
         {:name=>"中国新华航空公司", :iata=>"X2", :icao=>"CXH", :en_name=>"Chinaxinhua Airlines", :country=>"china"},
         {:name=>"中国航空股份公司", :iata=>"F6", :icao=>"CAG", :en_name=>" ", :country=>"china"},
         {:name=>"云南航空公司", :iata=>"3Q", :icao=>"CYH", :en_name=>"Yunnan Airlines", :country=>"china"},
         {:name=>"新疆航空公司", :iata=>"XO", :icao=>"CXJ", :en_name=>"Xinjiang Airlines", :country=>"china"},
         {:name=>"四川航空公司", :iata=>"3U", :icao=>"CSC", :en_name=>"Sichuan Airlines", :country=>"china"},
         {:name=>"中原航空公司", :iata=>"Z2", :icao=>"CYN", :en_name=>" ", :country=>"china"},
         {:name=>"武汉航空公司", :iata=>"WU", :icao=>"CWU", :en_name=>"Wuhan Airlines", :country=>"china"},
         {:name=>"贵州航空公司", :iata=>"G4", :icao=>"CGH", :en_name=>"Guizhou Airlines", :country=>"china"},
         {:name=>"海南航空公司", :iata=>"H4", :icao=>"CHH", :en_name=>"Hainan Airlines", :country=>"china"},
         {:name=>"中国通用航空公司", :iata=>"GP", :icao=>"CTH", :en_name=>" ", :country=>"china"},
         {:name=>"南京航空公司", :iata=>"3W", :icao=>"CNJ", :en_name=>" ", :country=>"china"},
         {:name=>"浙江航空公司", :iata=>"ZJ", :icao=>"CJG", :en_name=>" ", :country=>"china"},
         {:name=>"长城航空公司", :iata=>"GW", :icao=>"CGW", :en_name=>" ", :country=>"china"},
         {:name=>"福建航空公司", :iata=>"FJ", :icao=>"CFJ", :en_name=>"Fujian Airlines", :country=>"china"},
         {:name=>"长安航空公司", :iata=>"2Z", :icao=>"CGN", :en_name=>" ", :country=>"china"}]
    
  ARSS = [{:name=>"港龙航空公司", :iata=>"KA", :icao=>"KDA", :en_name=>"Dragon Air"},
          {:name=>"大韩航空公司", :iata=>"KE", :icao=>"AKA", :en_name=>"Korean Air"},
          {:name=>"韩亚航空公司", :iata=>"OZ", :icao=>"AAR", :en_name=>"Asiana Airways"},
          {:name=>"日本航空公司", :iata=>"JL", :icao=>"JAL", :en_name=>"Japan Airlines"},
          {:name=>"全日空公司", :iata=>"NH", :icao=>"ANA", :en_name=>"All Nippon Airways"},
          {:name=>"新加坡航空公司", :iata=>"SQ", :icao=>"SIA", :en_name=>"Singapore Airlines"},
          {:name=>"泰国国际航空公司", :iata=>"TG", :icao=>"THA", :en_name=>"Thai Airways International"},
          {:name=>"美国西北航空公司", :iata=>"NW", :icao=>"NWA", :en_name=>"Northwest Airlines"},
          {:name=>"加拿大国际航空公司", :iata=>"AC", :icao=>nil, :en_name=>"Canadian Airlines International"},
          {:name=>"美国联合航空公司", :iata=>"UA", :icao=>"UAL", :en_name=>"United Airlines"},
          {:name=>"英国航空公司", :iata=>"BA", :icao=>"BAW", :en_name=>"British Airways"},
          {:name=>"荷兰皇家航空公司", :iata=>"KL", :icao=>nil, :en_name=>"Klm Royal Dutch Airlines"},
          {:name=>"德国汉莎航空公司", :iata=>"LH", :icao=>"DLH", :en_name=>"Lufthansa German Airlines"},
          {:name=>"法国航空公司", :iata=>"AF", :icao=>"AFR", :en_name=>"Air France"},
          {:name=>"瑞士航空公司", :iata=>"SR", :icao=>"SWR", :en_name=>"Swissair"},
          {:name=>"奥地利航空公司", :iata=>"OS", :icao=>"AUA", :en_name=>"Austrian Airlines"},
          {:name=>"俄罗斯国际航空公司", :iata=>"SU", :icao=>"AFL", :en_name=>"Aeroflot Russian International"},
          {:name=>"澳洲航空公司", :iata=>"QF", :icao=>"QFA", :en_name=>"Qantas Airways"},
          {:name=>"芬兰航空公司", :iata=>"AY", :icao=>"FIN", :en_name=>"Finnair Airlines"},
          {:name=>"意大利航空公司", :iata=>"AZ", :icao=>"AZA", :en_name=>"Italia Airlines"},
          {:name=>"斯堪的纳维亚（北欧）航空公司", :iata=>"SK", :icao=>"SAS", :en_name=>"Scandinavian Airlines"},
          {:name=>"文莱皇家航空公司", :iata=>"BI", :icao=>"RBA", :en_name=>"Royal Brunei Airlines"},
          {:name=>"印度尼西亚鹰航空公司", :iata=>"GA", :icao=>"GIA", :en_name=>"Garuda Indonesia Airlines"},
          {:name=>"新加坡胜安航空公司", :iata=>"MI", :icao=>"MMP", :en_name=>"Singapore Silk Air"},
          {:name=>"马来西亚航空公司", :iata=>"MH", :icao=>"MAS", :en_name=>"Malaysian Airlines"},
          {:name=>"埃塞俄比亚航空公司", :iata=>"ET", :icao=>"RTH", :en_name=>"Ethiopian Airlines"},
          {:name=>"美国长青国际航空公司", :iata=>"EZ", :icao=>"EIA", :en_name=>"Evergeen Int Airlines"},
          {:name=>"波兰航空公司", :iata=>"LO", :icao=>"LOT", :en_name=>"Lot-Polish Airlines"},
          {:name=>"罗马尼亚航空公司", :iata=>"RO", :icao=>"ROT", :en_name=>"Torom Romanian Air Transport"},
          {:name=>"乌兹别克斯坦航空公司", :iata=>"HY", :icao=>"UZB", :en_name=>"Uzbekstan Airlines"},
          {:name=>"伏尔加第聂伯航空公司", :iata=>"VI", :icao=>"VDA", :en_name=>"Volga-Dnepr Airlines"},
          {:name=>"乌克兰航空公司", :iata=>nil, :icao=>"UKR", :en_name=>"Air Ukraine"},
          {:name=>"哈萨克斯坦航空公司", :iata=>"K4", :icao=>"KXA", :en_name=>"Kazakhstan Airlines"},
          {:name=>"蒙古航空公司", :iata=>"OM", :icao=>"MGL", :en_name=>"Miat Mongolian Airlines"},
          {:name=>"巴基斯坦国际航空公司", :iata=>"PK", :icao=>"PIA", :en_name=>"Pakistan International Airlines"},
          {:name=>"菲律宾航空公司", :iata=>"PR", :icao=>"PAL", :en_name=>"Philippine Airlines"},
          {:name=>"尼泊尔王家航空公司", :iata=>"RA", :icao=>"RNA", :en_name=>"Royal Nepal Airlines"},
          {:name=>"伊朗航空公司", :iata=>"IR", :icao=>"IRA", :en_name=>"Iran Air-The Airlines Of Isamic"},
          {:name=>"日本航空系统株氏会航空公司", :iata=>"JD", :icao=>"JAS", :en_name=>"Japan Air System"},
          {:name=>"朝鲜航空公司", :iata=>"JS", :icao=>"KOR", :en_name=>"Air Koryo"},
          {:name=>"以色列航空公司", :iata=>"LY", :icao=>"ELY", :en_name=>"Ei Ai Israel Airlines"},
          {:name=>"澳门航空公司", :iata=>"NX", :icao=>"AMU", :en_name=>"Air Macau"},
          {:name=>"缅甸国际航空公司", :iata=>"UB", :icao=>"UBA", :en_name=>"Myanmar Airways"},
          {:name=>"越南航空公司", :iata=>"VN", :icao=>"HVN", :en_name=>"Vientnam Airlines"}]
end
