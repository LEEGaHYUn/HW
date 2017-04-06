
require('open-uri')
require('json')
require('awesome_print')
lotto_hash = JSON.parse(open("http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=748").read)


drw_numbers = []

lotto_hash.each do |k, v|
    if(k.include?('drwtNo'))		 
        drw_numbers << v    	
    end
end

drw_numbers.sort!        			
bonus_number = lotto_hash["bnusNo"]
a = [*1..45].sample(6).sort
match_numbers = a & drw_numbers
match_cnt = match_numbers.count

print "이번주 로또 번호는 #{drw_numbers}이고, 보너스 번호는 #{bonus_number} 입니다."
print "추첨한 로또 번호는 #{a}입니다."
print "겹치는 번호는 #{match_numbers} 입니다."
print "결과는"
if match_cnt == 6
    print "1등"
elsif ((match_cnt == 5) && a.include?(bonus_number))
    print "2등"
elsif match_cnt == 5 
    print "3등"
elsif match_cnt == 4
    print "4등"
elsif match_cnt == 3
    print "5등"
else
    print "꽝"
end
puts "입니다"