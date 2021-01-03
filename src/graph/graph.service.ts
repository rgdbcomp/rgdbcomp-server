import { ConflictException, Injectable } from '@nestjs/common';
import { Arango } from '../config/Arango';

@Injectable()
export class GraphService {

  constructor(
    private arango:Arango
  ) {}


  async getTeamByMatchId(matchId){
    const query=`for i in match
        filter i.id==${matchId}
        for v,e,p in 1..2 outbound i graph "league_team_player"
        return v`
    return await this.arango.executeGetQuery(query)
  }

  async getMatchById(matchId){
    const query=`for i in match
       filter i.id==${matchId}
       return i
       `
    return await this.arango.executeGetQuery(query)
  }

  async getMatchInfoByMatchId(matchId,info){
    let query=`for i in match
       filter i.id==${matchId}
       return i.`
    if (info=='goals'){
      query= query+'goalArr'
    }else if (info=='foals'){
      query=query+'foalArr'
    }else if(info=='ex'){
      query=query+'exArr'
    }
    else {
      throw new ConflictException('goals / foals/ ex')
    }
    return await this.arango.executeGetQuery(query)

  }

  async getPlayerByTeamId(teamId){
    const query=`for i in team
      filter i.id=="${teamId}"

for v,e,p in 1..1 outbound i graph "league_team_player"
filter e.label!="team to nonePlayer members"
return v`
    return await this.arango.executeGetQuery(query)
  }

  async getContractByTeamId(teamId){
    const query=`for i in team
      filter i.id=="${teamId}"
      for v,e,p in 2..2 outbound i graph "league_team_player"
      filter !CONTAINS(v._id, "nonePlayerContract")
      return v`
    return await this.arango.executeGetQuery(query)
  }


  async  getAllMatchesOfTeamById(teamId){
    const query=`for i in team
      filter i.id=="${teamId}"
      for v,e,p in 1..1 inbound i graph "league_team_player"
      filter !CONTAINS(v._id, "league")
      return v`
    return await this.arango.executeGetQuery(query)
  }

  async getNonePlayerByTeamId(teamId){
    const query=`for i in team
      filter i.id=="${teamId}"
for v,e,p in 1..1 outbound i graph "league_team_player"
filter e.label!="team to player"
return v`
    return await this.arango.executeGetQuery(query)
  }

  async getTeamByLeagueId(leagueId){
    const query=`for i in league
      filter i.id==1
      for v,e,p in 1..1 outbound i graph "league_team_player"
return v`
    return await this.arango.executeGetQuery(query)
  }

  async getMatchByWeek(week){
    const query=`for i in match
      filter i.game_week=="${week}"
      for v,e,p in 0..1 outbound i graph "league_team_player"
      filter !CONTAINS(v._id, "team")
      return v
`
    return await this.arango.executeGetQuery(query)
  }

  async getPlayersByLeagueId(leagueId){
    const query=`for i in league
      filter i.id==${leagueId}
      for v,e,p in 2..2 outbound i graph "league_team_player"
      filter !CONTAINS(v._id, "nonePlayer")
return v

`
    return await this.arango.executeGetQuery(query)
  }

  async getMatchByLeagueId(){
    const query=`for i in match
let b=unset(i,"goalArr","foalArr","exArr")
return b`
    return await this.arango.executeGetQuery(query)
  }


}
