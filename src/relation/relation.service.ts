import { ConflictException, Injectable } from '@nestjs/common';
import { Db } from '../config/db';

@Injectable()
export class RelationService {
  constructor(private db: Db) {}

  async getPlayers(matchId, team) {
    let query = '';
    if (team == 'hometeam') {
      query = `select p.* from matches inner join teams
       on common_name=home_team_name inner join players p on teams.id = p.team_id 
       where matches.id=${matchId} limit 11;`;
    } else if (team == 'awayteam') {
      query = `select p.* from matches inner join teams
       on common_name=away_team_name inner join players p on teams.id = p.team_id where matches.id=${matchId} limit 11;`;
    } else {
      throw new ConflictException('hometeam or awayteam');
    }
    return await this.db.execute(query);
  }

  getByMatchId(matchId) {
    const query = `select * from matches where id=${matchId};`;
    return this.db.execute(query);
  }

  getGoalsInfo(matchId) {
    const query = `select current_club, full_name,time_of_goal from matches inner join goal_match_player gmp on matches.id = gmp.match_id inner join players p on gmp.player_id = p.id where matches.id=${matchId};`;
    return this.db.execute(query);
  }

  getFoalsInfo(matchId){
    const query=`select full_name, current_club, time_of_foul , cmp.color,type_of_foul from matches
    inner join cards_in_match_to_player cmp on matches.id = cmp.match_id
    inner join players p on cmp.player_id = p.id
    where matches.id=${matchId};`

    return  this.db.execute(query)
  }

  getExInfo(matchId){
    const query=`select p1.full_name playerin,p2.full_name playerout,p1.current_club,player_exchange.time_of_exchange from player_exchange
    inner join players p1 on player_exchange.player_in_id=p1.id
    inner join players p2 on player_exchange.player_out_id=p2.id
    inner join matches m on player_exchange.match_id = m.id where m.id=${matchId};`

    return  this.db.execute(query)
  }

  getPlayerOfTeam(teamId){
    const query=`select * from players inner join teams t on players.team_id = t.id where team_id=${teamId};`
    return this.db.execute(query)
  }

  getPlayersOfTeamContract(teamId){
    const query =`select player_id,full_name,pc.* from players 
                  inner join teams t on players.team_id = t.id 
                  inner join player_contract pc on players.id = pc.player_id where t.id=${teamId};`

    return this.db.execute(query)
  }

  getInfoOfTeamById(teamId){
    const query=`select * from matches inner join teams on (matches.away_team_name=teams.common_name or matches.home_team_name=common_name ) where teams.id=${teamId};`
    return  this.db.execute(query)

  }

  getNonePlayers(teamId){
    const query=`select * from none_player_team_member inner join none_player_contract npc on none_player_team_member.id = npc.member_id where team_id=${teamId};`
    return this.db.execute(query)
  }

  getTeamsByLeagueId(leagueId){
    const query=`select * from league inner join teams t on league.id = t.league_id where league.id=${leagueId}`
    return this.db.execute(query)
  }
  getMatchInfoByWeek(weekNumber){
    const query=`select * from matches inner join " referees_team" rt on matches.id = rt.match_id where matches.game_week=${weekNumber};
`
    return this.db.execute(query)
  }

  getPLayersByLeagueId(leagueId){
    const query=`select p.* from players p inner join teams t on p.team_id = t.id where t.league_id=${leagueId};`
    return this.db.execute(query)
  }

  getMatchesByLeagueId(leagueId){
    const query=`select *from matches where league_id=${leagueId};`
    return this.db.execute(query)
  }

  getTable(tableName){
    const query=`select * from ${tableName}`
    return this.db.execute(query)
  }
  getTableInfo(tableName){
    const query=`SELECT
   table_name,
   column_name,
   data_type
FROM
   information_schema.columns
WHERE
   table_name = '${tableName}';`
    return this.db.execute(query)
  }


}
