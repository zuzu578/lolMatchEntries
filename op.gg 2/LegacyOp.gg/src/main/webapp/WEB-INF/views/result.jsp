<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
	<title>Home</title>
</head>
<style>
*{
padding:0;
margin:0;
}
.nav_container{
background-color:black;
color:white;
display:flex;
padding:5px;
justify-content:space-between;

font-size:13px;





}
body{
background-color:rgb(21, 107, 255);
}
.items{
list-style:none;
display:flex;
}
.item-list{
	display:flex;
	align-items: center;	
}
.opgg_logo{
margin: 12px 16px;
    width: 57px;
    height: 14px;
}
.opgg_logo img{
	width:100%;

}
.item-list{
	padding-left:10px;
	padding-right:10px;
	
}
.main_banner{
	text-align:center;
	margin-top:50px;
	margin-bottom:20px;
	
	
	
}
.user_search
{
	width:600px;
	margin:0 auto;
	
}
.search_title{
	color:white;
	font-weight:bold;
	text-align:center;
	font-size:50px;
	
	
}
.result_area{
	
	
	
	
}

.main_contents{
	width:1300px;
	background-color:white;
	border-radius:10px;
	margin-top:50px;
	
	padding-left:100px;
	padding-top:100px;
	
	margin:0 auto;
	
	

}
.result_area{
	display:flex;
	
	
}
.summoner_level{
	
	font-weight:bold;

}
.summoner_info{
	
}
.summoner{
	font-weight:bold;
	font-size:40px;
	
}
.Button_refresh{
 border: 1px solid #1a78ae;
    background: #1f8ecd;
    color: #f2f2f2;
    padding: 11px 14px 10px;
    border-radius: 2px;
    font-weight:bold;
    width:100px;
    text-align:center;
    cursor: pointer;
}
.image_rank img {
	width:20%;

}
.result_rank{
	margin-top:50px;
	
}
.left_rank_area{
	


		
	
	

}
.icon_area img {
 
 width:70%;

}
.icon_area{
	width:200px;
	
}
.rank_name{
	
	font-weight:bold;
	
}
.result_rank{

display:flex;
}


</style>
<body>
	<div class="main_wrap">
		<header class="nav_container">
			<div class="opgg_logo">
			<h1>  </h1>
			<img src="https://opgg-static.akamaized.net/images/gnb/svg/00-opgglogo.svg">
			</div>
			<nav class="nav_items">
				<ul class="items">
					<li class="item-list"><img src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-lol-white.svg"><p>League of Legends</p> </li>
					<li class="item-list"><img src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-pubg-gray.svg"><p>PUBG</p> </li>
					<li class="item-list"><img src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-overwatch-gray.svg"><p>OVERWATCH</p> </li>
					<li class="item-list"><img src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-fortnite-gray.svg"><p>FORTNITE</p> </li>
					<li class="item-list"><img src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-r-6-gray.svg"><p>RainbowSix Siege</p> </li>
					
					<form action="/myopggapp/search" method ="get">
				<div class="input-group mb-3">
  
  <input type="text" name="SummonerName" class="form-control" placeholder="소환사이름 + enter" aria-label="Username" aria-describedby="basic-addon1">
</div>
			
			</form>	
				</ul>
			
			
			</nav>
		
		</header>
	
	
	
	<div class="main_contents">
		<div class="result_area">
			<div class="icon_area">
			
				<img src=<c:url value="${profileImgURL}"/> />
				<p class="summoner_level">레벨 : ${summonerLevel } </p> 
				
			</div>
			<div class="summoner_info">
				<p class="summoner"> ${SummonerName }  </p>
				
				<div class="Button_refresh">
					<div class="button_items">update</div>
				
				</div>
		
			
			
			</div>
		
		</div>
		<div class="result_rank">
			<div class="left_rank_area">
				<div class="image_rank">
					<div class= "rank_image_item">
					<h3>${queueType }</h3>
					
					<img src=<c:url value="https://opgg-static.akamaized.net/images/medals/${tier}_1.png?image=q_auto:best&v=1"/> />
					</div>
					<div class="rank_information">
					<p class="rank_name">${tier } </p>
					<p class="rank_point">${leaguePoints} LP / ${wins } 승 ${losses } 패</p>
					
					 </div>
					
					
				</div>
			
			</div>
		<div class="match_list_items">
		
			
			 	
			 
			<c:forEach var="data" items="${matches}">
				
			<div class="locale">
	        서버 : ${data.platformId }
	        <p>라인 :${data.lane }  </p>
	        <p> ${data.role } </p>
	       <!--  매치 아이디에 대한 매치정보를 a태그로 걸어버립니다.  -->
	       <a href="/myopggapp/MatchInfo/?matchId=${data.gameId }">전적상세보기</a> 
	       
			</div>
		
			<div class="champion_number">
		
				<c:if test="${data.champion eq '238'}">

    		<img src="https://opgg-static.akamaized.net/images/lol/champion/Zed.png?image=c_scale,q_auto,w_140&v=1624418935">
    		
		</c:if>
			<c:if test="${data.champion eq '91' }">
		<img src="https://opgg-static.akamaized.net/images/lol/champion/Talon.png?image=c_scale,q_auto,w_140&v=1624418935">
			
			
			
			</c:if>
								<c:if test="${data.champion eq '21' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Kindred.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
			
			<c:if test="${data.champion eq '222' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
			
			<c:if test="${data.champion eq '24' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Jax.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
			<c:if test="${data.champion eq '80' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Pantheon.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
		   <c:if test="${data.champion eq '81' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Ezreal.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
			
						<c:if test="${data.champion eq '53' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
						<c:if test="${data.champion eq '22' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Ashe.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
						<c:if test="${data.champion eq '236' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
						<c:if test="${data.champion eq '51' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Caitlyn.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
						<c:if test="${data.champion eq '32' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Amumu.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
									<c:if test="${data.champion eq '38' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Kassadin.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
									<c:if test="${data.champion eq '12' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Zac.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
								<c:if test="${data.champion eq '350' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Yuumi.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
								
			
			
			
			
			
		
			</div>

			
			
		</c:forEach>
		<!--  
		<c:forEach var="championMastery" items="${championMastery}">
			<p>챔피언 : ${championMastery.championId }</p>
			<p>챔피언 레벨 : ${championMastery.championLevel }</p>
			<p>챔피언 포인트 : ${championMastery.championPoints }</p>
			<p>마지막으로 플레이한 챔피언 타임 : ${championMastery.lastPlayTime }</p>
			<p>마지막 레벨까지 남은 포인트 : ${championMastery.championPointsSinceLastLevel }</p>
			<p>다음 레벨까지 남은 챔피언 포인트 : ${championMastery.championPointsUntilNextLevel }</p>
			<p>chestGranted : ${championMastery.chestGranted }</p>
			<p>tokensEarned : ${championMastery.tokensEarned }</p>
			<p>소환사 Id : ${championMastery.summonerId }</p>
			
			
		
		
		</c:forEach>
		-->
			
		</div>
		
		</div>
		
	
	
	
	
	</div>
	
	</div>
</body>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<script>

const app = new Vue({
    el: '.main_contents',
    data: {
    	issue: '',
    },
    mounted(){
    	 axios.get('http://localhost:8082/myopggapp/status')  
 	    .then((res)=>{
 	    	console.log(res.data);
 	        console.log(res.data.incidents[0].titles[1]); //문제 원인 제목 
 	        console.log(res.data.incidents[0].updates[0].translations[1].content);
 	        //this.issue = res.data.maintenances[0].updates[0].translations[1].content;
 	        
 	    }) 	
    },
    created(){
    	
    	
    	
    },
    methods: {
    
       
    },
});



</script>
</html>
