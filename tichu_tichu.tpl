{OVERALL_GAME_HEADER}
<!----------
-- BGA framework: © Gregory Isabelli <gisabelli@boardgamearena.com> & Emmanuel Colin <ecolin@boardgamearena.com>
-- Tichu implementation : © Bryan McGinnis <bryanrm@gmail.com>
-- 
-- This code has been produced on the BGA studio platform for use on http://boardgamearena.com.
-- See http://en.boardgamearena.com/#!doc/Studio for more information.
-------
	tichu_tichu.tpl
	
	This is the HTML template of your game.
	
	Everything you are writing in this file will be displayed in the HTML page of your game user interface,
	in the "main game zone" of the screen.
	
	You can use in this template:
	_ variables, with the format {MY_VARIABLE_ELEMENT}.
	_ HTML block, with the BEGIN/END format
	
	See tichu.view.php to check how to set variables and control blocks
	 This view page loads all players info, and {MY_HAND}
	 
	Need to add # of cards in hand next to name: player1 (14)
-->
<div id="playertables">
	<div id="dealingstack"></div>
	<!-- BEGIN player -->
	<div id="playertable_{DIR}" class="playertable whiteblock playertable_{DIR}">
		<div class="playertablename" style="color:#{PLAYER_COLOR}">
			{PLAYER_NAME}
			<div class="playertichucall" id="playertichucall_{PLAYER_ID}"></div>
		</div>
		<div class="playertablecards" id="playertablecard_{PLAYER_ID}">
		</div>
	</div>
	<!-- END player -->
</div>
<div id="myhand_wrap" class="whiteblock">
	<h3>{MY_HAND}</h3>
	<div id="myhand">
	</div>
</div>
<script>
	var jstpl_cardontable = '<div class="cardontable" id="cardontable_${player_id}_${card_id}" style="background-position:-${x}px -${y}px;z-index:${z};">\
		</div>';
	//var jstpl_tichucall = '<div class="tichucall" id="tichucall_${player_id}" style="z-index=100;">${text}</div>';
</script>  
{OVERALL_GAME_FOOTER}