create table customer(
cid varchar(40) primary key,
name varchar(40) not null,
pw varchar(200) not null,
phone varchar(20) not null,
birth varchar(40) not null,
regdate varchar(40) not null,
visited varchar(40) not null,
address varchar(200) not null);

insert into customer(cid,name,pw,phone,birth,regdate,visited,address)values('관리자','admin','1234','010-1234-1111','1965-08-08','2013-07-07','1','경기도 고양시 성사동 444');
insert into customer(cid,name,pw,phone,birth,regdate,visited,address)values('이민환','lmh','7777','010-7777-8888','1975-05-05','2014-04-04','2','경기도 남양주시 다산동 333');
insert into customer(cid,name,pw,phone,birth,regdate,visited,address)values('김수현','ksh','3456','010-4567-8901','1985-07-07','2017-07-07','7','경기도 고양시 행신동');
insert into customer(cid,name,pw,phone,birth,regdate,visited,address)values('박태환','pth','5555','010-1111-0000','1966-06-06','2016-06-06','6','경기도 고양시 마두동 555');
insert into customer(cid,name,pw,phone,birth,regdate,visited,address)values('김동현','kdh','1010','010-3030-3030','1993-03-03','2012-02-02','4','경기도 고양시 정발산동 444');
insert into customer(cid,name,pw,phone,birth,regdate,visited,address)values('박지성','pjs','4040','010-4040-4040','1977-12-00','2019-09-09','9','경기도 고양시 백석동 666');
insert into customer(cid,name,pw,phone,birth,regdate,visited,address)values('손흥민','shm','5050','010-5050-5050','1997-01-22','2012-12-12','8','경기도 고양시 화정동 777');
insert into customer(cid,name,pw,phone,birth,regdate,visited,address)values('차두리','cdr','6060','010-6060-6060','1918-08-18','2020-09-26','12','경기도 고양시 고양동 888');


create table tourlist(pid varchar(10) primary key,
pno number(11) not null,
pname varchar2(40) not null,
ptype varchar2(40) not null,
pcoment varchar2(600) not null,
pimg1 varchar2(50),
pimg2 varchar2(50),
pimg3 varchar2(50),
pimg4 varchar2(50));
drop table tourilst;
select * from PLACE;
create sequence scott.tour_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;

--pid 첫 번째 문자 설명 : A관광명소, B축제이벤트, C숙박업소, D음식, F축제및이벤트. G레저,체험,교통 H추천여행기타
--pid 두 번째 구분코드 설명 A- 11:산, 12:바다, 13:섬, 14:도시, 15:문화재및유적, 16:전시장, 17:기타
--pid 두 번째 구분코드 설명 B- 11:축제, 12:체험관광, 13:박물관/기념관, 14:전시/미술관/ 15:휴양관광 16:역사문화, 17:기타문화축제
--pid 두 번째 구분코드 설명 C- 11:호텔, 12:모텔, 13:리조트, 14:콘도, 15:게스트하우스, 16:캠핑, 17:기타숙소 
--pid 두 번째 구분코드 설명 D- 11:음식문화거리, 12:한식, 13:양식, 14:일식, 15:중식, 16:아시아식, 17:바/카페, 18:기타음식업소
--pid 두 번재 구분코드 설명 F- 11:빛축제, 12:음악축제, 13:박람회, 14:공연, 15:낭만시장, 16:문화재야행축제, 17:기타축제
--pid 두 번째 구분코드 설명 G- 11:캠핑, 12:낚시, 13:걷기길, 14:레일바이크, 15:생태탐방로 16:기타체험
--                              21:공항철도, 22:도시철도, 23:수도권전철, 24:종합터미널
--                              31:유람선, 32:보트하우스, 33:시티투어, 34:이야기투어, 35:바다열차
--pid 두 번재 구분코드 설명 H- 11:추천여행
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'A110001','문학산','place','인천의 해발 217m의 문학산은 인천광역시 미추홀구와 연수구의 경계가 되는 산이다. 산세가 학이 날개를 펼친 모양이라는 의미에서 ‘학산’, 산 정상의 봉수대가 볼록하게 올라온 배꼽처럼 생겼다고 하여 ‘배꼽산’이라 불리기도 했다.',
'./img/munhaksan.jpg','./img/munhaksan2.jpg','./img/munhaksan3.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'A120001','백령도앞바다','sea','백령도는 서해 최북단 섬이자 대한민국에서 여덟 번째로 큰 섬이다. 맑은 날이면 황해도 장산곶이 보일 만큼 북녘과 가깝다.',
'./img/baek.jpg','./img/baek1.jpg','./img/baek2.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'A130001','선제도','island','목섬은 선재도 남쪽에 있는 작은 무인도이다. 대부도에서 선재대교를 건널 때 왼쪽에 보이는 동그란 섬으로 선재도를 대표하는 관광지다. 목섬은 CNN이 선정한 ‘한국의 아름다운 섬 33선’ 중 영예롭게 1위를 차지한 섬이기도 하다.',
'./img/island.jpg','./img/island1.jpg','./img/island2.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'A140001','트리플스트리트','city','새로운 스트리트형 복합문화공간으로 ‘한국을 대표하는 걷고 싶은 거리’ 조성을 테마로 ‘세 가지의 걷고 싶은 거리’가 담긴 트리플 스트리트. 해외유명브랜드는 물론, 국내 대표적인 내셔널 브랜드도 입점해 있다.',
'./img/city.jpg','./img/city1.jpg','./img/city2.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'A150001','보문사','cultural assets','석모도 낙가산에 있는 삼국시대 창건된 사찰 보문사는 우리나라에서 관세음보살이 상주한다고 알려진 성스러운 관음영지 3곳 중 하나다. 신라 선덕여왕 4년(635) 회정대사가 금강산에서 수행하던 중 관세음보살을 친견하고 강화도로 내려와 창건하였다고 전해진다.',
'./img/bomunsa.jpg','./img/bomunsa1.jpg','./img/bomunsa2.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'A160001','인천아트플랫폼','Exhibition','인천아트플랫폼이 위치한 인천광역시 중구 해안동 일대는 1883년 개항 이후 건립된 건축 문화재 및 1930~1940년대에 지어진 건축물이 잘 보존되어 있다.',
'./img/jusijang.jpg','./img/jusijang2.jpg','./img/jusijang3.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'A170001','기타관광지','subplace','차이나타운 거리는 ‘한국 속 중국’이란 별명처럼 중국풍 문화가 가득하다. 우뚝 솟은 패루를 지나 경사진 길을 300m 걸으면 길이 T자형으로 나뉘는데, 주변 상가는 중국을 고스란히 옮겨놓은 듯하다. 120년 넘는 세월 동안 아직도 화교 고유의 문화와 풍습을 간직하고 있다. 중국 전통 의상인 치파오를 입은 화교 상인들, 거리에 내걸린 홍등, 최근 복원된 중국식 근대건축물 등이 시선을 사로잡는다.',
'./img/china.jpg','./img/china2.jpg','./img/china1.jpg');



select * from tourlist;

insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'B110002','인천음악축제','festival','인천펜타포트 음악축제는 2006년부터 매년 8월 초 인천에서 개최하는 역사와 전통이 있는 대한민국 대표 아웃도어 락 페스티벌이다.',
'./img/musicfestival.jpg','./img/musicfestival2.jpg','./img/musicfestival3.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'B120002','선재도어업해상낚시터','fishing','드넓은 바다와 갯벌이 에워싼 선재도는 다양한 해양 체험을 즐기기 좋은 명소다. 그 중심에 선재도 어촌체험 휴양마을이 있다. 이곳에서는 갯벌 체험뿐 아니라 해상 낚시 체험 프로그램을 함께 제공한다.',
'./img/sunjaedo.jpg','./img/sunjaedo1.jpg','./img/sunjaedo2.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'B130002','인천상륙작전기념관','opration','한국전쟁의 전세를 뒤바꾼 중요한 군사작전이었던 인천상륙작전의 역사적 사실을 기념하고 보존하기 위해 건립한 전쟁사 기념관이다. 기념관은 1984년 9월 15일에 개관했는데, 9월 15일은 인천상륙작전이 개시된 날짜이기도 하다.',
'./img/opration.jpg','./img/opration1.jpg','./img/opration2.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'B140002','인천통일관','Unification','즐거운 배움이 있는 인천학생과학관은 직접 보고 느끼는 체험형 전시관으로 학생뿐 아니라 가족 단위 관람객이 많이 찾는다.',
'./img/Unification.jpg','./img/Unification1.jpg','./img/Unification2.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'B150002','파라다이스시티 씨메르','paradise','인천광역시 중구 운서동에 있는 파라다이스시티 씨메르(인천)은 찜질방과 수영장을 갖춘 스파 시설이다. 씨메르는 트렌디하고 감각적인 힐링을 경험할 수 있는 고품격 힐링 스파 콘셉트로 꾸며졌다.',
'./img/paradise.jpg','./img/paradise1.jpg','./img/paradise2.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'B160002','강화 전등사','Jeondeungsa',' 절의 원래 이름은 진종사였으나 충렬왕의 비인 정화궁주가 충렬왕 8년(1282) 대장경과 옥등을 시주하면서 이름을 전등사로 바꾸어 불렀다고 한다.',
'./img/Jeondeungsa.jpg','./img/Jeondeungsa1.jpg','./img/Jeondeungsa2.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'B170002','신시모도','sinsimodo','신도, 시도, 모도는 연도교로 이어져 신∙시∙모도 삼형제 섬이라고도 불리며, 세 개의 섬을 한번에 둘러볼 수 있는 색다른 묘미가 있다.',
'./img/sinsimodo.jpg','./img/sinsimodo1.jpg','./img/sinsimodo2.jpg');




insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'C110003','송도센트럴파크호텔','hotel','송도 센트럴 파크 호텔은 인천1호선 센트럴파크역 4번 출구에서 도보 6분 거리에 위치한 특2급 호텔이다.',
'./img/hotel.jpg','./img/hotel2.jpg','./img/hotel3.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'C120003','팔레스모텔','motel','아늑하고 깔끔한 객실로 편안한 휴식을 취하기에 적합하다. 주변에 1호선 동인천역과 도원역이 위치해 교통이 매우 편리하고, 차이나타운이나 송월동 동화마을 여행 시 이용하기 편리하다.',
'./img/motel.jpg','./img/motel1.jpg','./img/motel2.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'C130003','더위크앤리조트','resort','아늑하고 깔끔한 객실로 편안한 휴식을 취하기에 적합하다. 주변에 1호선 동인천역과 도원역이 위치해 교통이 매우 편리하고, 차이나타운이나 송월동 동화마을 여행 시 이용하기 편리하다.',
'./img/resort.jpg','./img/resort1.jpg','./img/resort2.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'C140003','티라시아','condo','인천 강화군에 있는 티라시아 콘도는 서해안이 한눈에 펼쳐지는 조망을 갖춘 콘도이다.하얀색 건물과 파란색 지붕은 그리스의 산토리니를 연상시킨다',
'./img/condo.jpg','./img/condo1.jpg','./img/condo2.jpg');




insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'D110004','구월동로데오음식문화거리','foodroad','구월동로데오음식문화거리는 인천시 남동구를 대표하는 관광 및 문화 명소이다. 인천문화예술회관을 비롯해 대형 상가와 백화점, 음식점들이 밀집해 있으며 버스 터미널과 지하철역이 인접해 평소에도 많은 사람들이 오간다.'
'./img/foodroad.jpg','./img/foodroad2.jpg','./img/foodroad3.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'F110005','서창별빛축제','light festival','남동구 서창의 지역상가를 중심으로 시민들과 함께하는 참여형 별빛거리 페스티벌로 별빛으로 채우는 경관, 다양한 장르의 공연, 즐길거리, 먹거리 등 누구나 함께 즐기고 참여하여 특별한 추억을 남길 수 있다.',
'.img/lightfestival.jpg','lightfestival2.jpg','lightfestival3.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'G110005','노을빛바다애글램핑','camping','노을빛바다애글램핑장은 이름처럼 아름다운 바다 노을을 감상할 수 있는 곳이다. 세계 자연문화유산인 너른 서해 갯벌이 펼쳐져 있는 곳에서 갯벌체험과 아름다운 석양을 느낄 수 있다.',
'./img/camping.jpg','./img/camping2.jpg','./img/camping3.jpg');
insert into tourlist(pno,pid,pname,ptype,pcoment,pimg1,pimg2,pimg3) values(tour_seq.nextval,'H110006','월미테마파크','theme park','월미도에 왔다면, DJ들의 입담으로 타는 사람은 물론 보는 사람도 즐거워지는 ‘타가다 디스코(디스코 팡팡)’와 극강의 스릴감으로 유명한 바이킹을 놓칠 수 없다. 1992년 개장한 이후 월미도 필수 코스가 된 이곳은 2009년 월미테마파크로 재탄생했다. 30여 가지의 놀이기구를 비롯해 실내놀이시설 ‘차피패밀리파크’, VR 게임존 등 즐길거리가 다양한 복합테마파크다. 입장료는 따로 없고, 놀이기구 등 시설 이용 시에만 별도 요금을 내면 된다.',
'./img/themapark.jpg','./img/themapark2.jpg','./img/themapark3.jpg');


-- 이용후기 번호 
-- 이용후기 제목
-- 이용후기 장소명
-- 이용시작일
-- 이용종료일
-- 이용소감
-- 방문사진1
-- 방문사진2
-- 작성자
-- 작성글비밀번호
-- 작성일
-- 본횟수
create table impression(ino number(11) primary key,--이용후기
ititle varchar2(50) not null,
iplace varchar2(50) not null,
itodate date not null,
ifromdate date not null,
icontent varchar2(500) not null,
ipic1 varchar2(50),
ipic2 varchar2(50),
cid varchar2(12),
ipw varchar2(40),
idate date default sysdate,viewcnt number(11));
--이용후기 (impression)인덱스(시퀀스)생성
create sequence scott.im_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;
--이용후기(increment) 더미 데이터추가
insert into impression values(im_seq.nextval,'즐거운 인천여행','백령도','2022-05-08','2022-05-09','현시각 인천을 노~랗게 물들인 봄꽃! 지금 백령도 진촌솔개지구에는 유채꽃이 한창이에요~!',
'./img/rapeflower.jpg','./img/repeflower2.jpg','이민환','1234','2022-05-10','3');
insert into impression values(im_seq.nextval,'여유로운 인천호텔','베스트웨스턴하버파크호텔','2022-05-04','2022.05.06','바다가 보이고 사진찍기좋은 호텔 스카이라운지에서 1박2일 인천여행을 즐겨보아요! 접근성이좋은 호캉스입니다.',
'./img/besthotel.jpg','./img/besthotel2.jpg','김수현','1111','2022-05-09','1');
select * from IMPRESSION;
create table notice(nno number(10) primary key, --공지사항
    ntitle varchar(50) not null,
    ncontent varchar(500) not null,
    npic varchar(50),
    resdate date default sysdate,
    nname varchar(20),
    viewcnt number(11));
    
   
create sequence scott.noti_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;
insert into notice values(noti_seq.nextval,'2022 인천 투어프렌즈 최종합격자 발표','인천 투어프렌즈 1기에 신청해주신 모든 분들께 감사드리며,최종 합격자를 다음과 같이 공고합니다.모든 신청자 여러분께 기회를 드리지 못한 점 많은 양해 바랍니다.','',
'2022-04-11','기획조정실','5');


desc customer; --customer 테이블 보기
select * from customer;--customer 데이터 보기 

desc tourlist;--tourlist
select * from tourlist;--tourlist  

desc impression;--impression 
select * from impression;--impression 

desc notice; --notice  테이블보기
select * from notice; --notice데이터 보기

commit;
delete from TOURLIST where pname='선재도어업해상낚시터';
truncate table TOURLIST;



