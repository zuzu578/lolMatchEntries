<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page session="false"%>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">
<title>Home</title>
</head>
<style>
#issue{
padding-top:20px;
font-size:20px;
text-align:center;

font-color:black;
font-weight:bold;

}
* {
	padding: 0;
	margin: 0;
}

.nav_container {
	background-color: black;
	color: white;
	display: flex;
	padding: 5px;
	font-size: 13px;
}

body {
	background-color:white;
}

.items {
	list-style: none;
	display: flex;
}

.item-list {
	display: flex;
	align-items: center;
}

.opgg_logo {
	margin: 12px 16px;
	width: 57px;
	height: 14px;
}

.opgg_logo img {
	width: 100%;
}

.item-list {
	padding-left: 10px;
	padding-right: 10px;
}

.main_banner {
	text-align: center;
	margin-top: 50px;
	margin-bottom: 20px;
}

.user_search {
	width: 600px;
	margin: 0 auto;
}

.search_title {
	color: white;
	font-weight: bold;
	text-align: center;
	font-size: 50px;
}
.rotation_champion{
	text-align:center;
	margin-top:20px;
	font-weight:bold;
	color:white;
	font-size:40px;
	
	
}
.rotation_items{
	text-align:center;
	width: 900px;
	margin: 0 auto;
	
}
.ShowchampionStatics{
	color:white;
	font-weight:bold;
	text-decoration : none;
}
.table_items{
	width:1000px;
	margin:0 auto;
	
	
}
.image{
text-align:center;}
.page-item{
    width:50px;
    border:1px solid black;
    font-weight:bold;
    cursor: pointer;
}
.paging{
 width:100px;
 margin:0 auto;
text-align:center;}


.images img{
	width:50%;
}
.summonerInfo{
width:1300px;
margin: 0 auto;
}
.title23{
	text-align:center;
}
.images2 img{
	width:20%;
}
.stats{
	width:1300px;
	margin: 0 auto;
}
.champion img{
	width:60%;
}
</style>
<body>
	<div class="main_wrap">
		<header class="nav_container">
			<div class="opgg_logo">
				<h1></h1>
				<img
					src="https://opgg-static.akamaized.net/images/gnb/svg/00-opgglogo.svg">
			</div>
			<nav class="nav_items">
				<ul class="items">
					<li class="item-list"><img
						src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-lol-white.svg">
					<p>League of Legends</p></li>
					<li class="item-list"><img
						src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-pubg-gray.svg">
					<p>PUBG</p></li>
					<li class="item-list"><img
						src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-overwatch-gray.svg">
					<p>OVERWATCH</p></li>
					<li class="item-list"><img
						src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-fortnite-gray.svg">
					<p>FORTNITE</p></li>
					<li class="item-list"><img
						src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-r-6-gray.svg">
					<p>RainbowSix Siege</p></li>
					
				</ul>
			

			</nav>
		</header>

			<div id="issue">
			{{issue}}
			</div>

		<div class="main_contents">
			<h1 class="title23"> 전적 상세정보 : {{test4}} </h1>
			
			<div class="summonerInfo">
			<table class="table table-striped" >
      <tr>
      	<td> 소환사 아이콘 </td>
         <td> 소환사 이름</td>
      </tr>
   
      <tr v-for="(dataList, idx) in participantIdentities" :key="idx">
     	<td> 
     	<div class="images2"> <img :src="'https://opgg-static.akamaized.net/images/profile_icons/profileIcon' + dataList.player.profileIcon +'.jpg?image=q_auto:best&v=1518361200'"></div> </td>
     	<td> 
     	<a :href="'/myopggapp/search?SummonerName=' + dataList.player.summonerName"  style="black">{{dataList.player.summonerName}} </a>
     	
     	</td>
      </tr>
     
    
         
   </table>
			
</div>
			
		<!-- 
		<div class="test" v-for="(dataList, idx) in participants" :key="idx">
	   	
		챔피언 아이디 : {{dataList.championId}}
	    킬:{{dataList.stats.kills}}
		데스 :{{dataList.stats.deaths}}
		 타워피해량 : {{dataList.stats.damageDealtToObjectives}}
		 챔피언한테 준 마법피해량 : {{dataList.stats.magicDamageDealtToChampions}}
		 와드 처치수 : {{dataList.stats.wardsKilled}}
		 퍼스트블러드 여부 :{{dataList.stats.firstBloodKill}}
		 와드설치 갯수:{{dataList.stats.wardsPlaced}}
		 총 피해량 : {{dataList.stats.totalDamageDealt}}
		 챔피언한테 준 총 피해량 :{{dataList.stats.totalDamageDealtToChampions}}
		 정글 중립몹 처치 수 :{{dataList.stats.neutralMinionsKilledTeamJungle}}
		 챔피언 레벨 :{{dataList.stats.champLevel}}
		 총 받은 피해량: {{dataList.stats.totalDamageTaken}}
		 중립 미니언 처치 수 :{{dataList.stats.neutralMinionsKilled}}
		 받은 마법피해량 {{dataList.stats.magicalDamageTaken}}
		 챔피언한테 준 물리피해량 :{{dataList.stats.physicalDamageDealtToChampions}}
		 총 미니언 처치 수 :{{dataList.stats.totalMinionsKilled}}
		 포탑 처치 수 :{{dataList.stats.turretKills}}
		 실제 받은 데미지 :{{dataList.stats.trueDamageTaken}}
		 총 힐량 :{{dataList.stats.totalHeal}}
	     챔피언한테 실제로 준 피해량 :{{dataList.stats.trueDamageDealtToChampions}}
	     적 정글 중립몬스터 처치 :{{dataList.stats.neutralMinionsKilledEnemyJungle}}
		</div>
		 -->
		<!--  
		<div class="test4" v-for="(dataList, idx) in participants" :key="idx">
		
		{{dataList}}
		</div>
		-->
	<div class="stats">
		<table class="table table-striped" >
      <tr>
      	<td> 챔피언 </td>
      	<td> 스펠 정보1 </td>
		<td> 스펠 정보2</td>
						<td>킬</td>
						<td>데스</td>
		<td> 라인 </td>
		<td> 역할 </td>
         
         <td>총 미니언 처치 수 </td>
         <td> 와드 처치수 </td>
         <td> 챔피언한테 준 총 피해량</td>
         <td>정글 중립몹 처치 수</td>
         <td>챔피언 레벨 </td>
         <td>포탑 처치수 </td>
         <td>퍼스트블러드 여부 </td>
         <td>와드 설치 갯수 </td>
      </tr>
   
      <tr v-for="(dataList, idx) in participants" :key="idx">
     
       
      <td>
       {{dataList.championId}}
      <div class="champion" v-if= "dataList.championId == 131">
      <img src="https://opgg-static.akamaized.net/images/lol/champion/Diana.png?image=c_scale,q_auto,w_140&v=1624418935">
      </div>
      
            <div class="champion" v-if= "dataList.championId == 41">
      <img src="https://opgg-static.akamaized.net/images/lol/champion/Gangplank.png?image=c_scale,q_auto,w_140&v=1624418935">
      </div>
      
            <div class="champion" v-if= "dataList.championId == 91">
      <img src="https://opgg-static.akamaized.net/images/lol/champion/Talon.png?image=c_scale,q_auto,w_140&v=1624418935">
      </div>
      
            <div class="champion" v-if= "dataList.championId == 412">
      <img src="https://opgg-static.akamaized.net/images/lol/champion/Thresh.png?image=c_scale,q_auto,w_140&v=1624418935">
      </div>
      
            <div class="champion" v-if= "dataList.championId == 145">
      <img src="https://opgg-static.akamaized.net/images/lol/champion/KaiSa.png?image=c_scale,q_auto,w_140&v=1624418935">
      </div>
      
            <div class="champion" v-if= "dataList.championId == 114">
      <img src="https://opgg-static.akamaized.net/images/lol/champion/Fiora.png?image=c_scale,q_auto,w_140&v=1624418935">
      </div>
      
            <div class="champion" v-if= "dataList.championId == 51">
      <img src="https://opgg-static.akamaized.net/images/lol/champion/Caitlyn.png?image=c_scale,q_auto,w_140&v=1624418935">
      </div>
      
            <div class="champion" v-if= "dataList.championId == 106">
      <img src="https://opgg-static.akamaized.net/images/lol/champion/Volibear.png?image=c_scale,q_auto,w_140&v=1624418935">
      </div>
      
            <div class="champion" v-if= "dataList.championId == 50">
      <img src="https://opgg-static.akamaized.net/images/lol/champion/Swain.png?image=c_scale,q_auto,w_140&v=1624418935">
      </div>
      
            <div class="champion" v-if= "dataList.championId == 238">
      <img src="https://opgg-static.akamaized.net/images/lol/champion/Zed.png?image=c_scale,q_auto,w_140&v=1624418935">
      </div>
      
      
      </td>
      
      
      
      <td>
      {{dataList.spell1Id}}
      <div class="spell1" v-if= "dataList.spell1Id == 21">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerBarrier?image=c_scale,q_auto,w_22&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 1">
       <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerBoost.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 14">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerDot.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 3">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerExhaust.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 4">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 6">
        <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerHaste.png?image=c_scale,q_auto,w_22&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 7">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerHeal.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 11">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerSmite.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 12">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerTelePort.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
       
      
       </td>
      <td> 
      {{dataList.spell2Id}}
       <div class="spell2" v-if= "dataList.spell2Id == 21">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerBarrier?image=c_scale,q_auto,w_22&v=1626880099">
      </div>
           <div class="spell2" v-if= "dataList.spell2Id == 54">
           
      <img src="https://opgg-static.akamaized.net/images/lol/spell/Summoner_UltBook_Placeholder.png?image=c_scale,q_auto,w_22&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 1">
       <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerBoost.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 14">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerDot.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 3">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerExhaust.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 4">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 6">
        <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerHaste.png?image=c_scale,q_auto,w_22&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 7">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerHeal.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 11">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerSmite.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 12">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerTelePort.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      
      </td>
       <td>{{dataList.stats.kills}}</td>
        <td>{{dataList.stats.deaths}}</td>
        <td>{{dataList.timeline.lane}}</td>
        <td>{{dataList.timeline.role}} </td>
           <td>{{dataList.stats.totalMinionsKilled}}</td>
             <td>{{dataList.stats.wardsKilled}}</td>
             <td>{{dataList.stats.totalDamageDealtToChampions}}</td>
             <td>{{dataList.stats.neutralMinionsKilledTeamJungle}}</td>
             <td>{{dataList.stats.champLevel}}</td>
             <td>{{dataList.stats.turretKills}}</td>
             <td>{{dataList.stats.firstBloodKill}}</td>
              <td>{{dataList.stats.wardsPlaced}}</td>
      </tr>
     
    
         
   </table>
		
</div>
		

	</div>
	

</body>
</html>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<script>
    const app = new Vue({
        el: '.main_wrap',
        data: {
        	issue: '',
        	participantIdentities:'',
        	participants:'',
        	test:'',
        	test4:'',
        	
        },
        mounted(){
        	 axios.get('http://localhost:8082/myopggapp/status')  
     	    .then((res)=>{
     	      //  console.log(res.data.incidents[0].titles[1]); //문제 원인 제목 
     	        //console.log(res.data.incidents[0].updates[0].translations[1].content);
     	       //this.issue = res.data.maintenances[0].updates[0].translations[1].content;
     	        console.log(res);
     	        
     	    }) 	
        },
        created(){
        	var matchId = location.search;
        	console.log("matchId ==> " +matchId);
        	var params = new URLSearchParams(matchId);
        	matchId = params.get('matchId');
        	console.log(matchId);
        	 axios.get('http://localhost:8082/myopggapp/getMatchInfo',{
       		 params:{
       			matchId:matchId
       		 }
   		 }) 
      	    .then((res)=>{
      	    	console.log(res.data);
      	    	this.participantIdentities = res.data.participantIdentities;
      	        this.participants = res.data.participants;
      	        this.test = res.data;
      	        this.test4 = res.data.gameMode;
      	        this.test5 = res.data.participantIdentities;
      	        
      	    }) 
        	
        },
        methods: {
        	
        	 
        },
    });
</script>
