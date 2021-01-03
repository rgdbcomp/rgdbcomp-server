import { Controller, Get, NotFoundException, Param } from '@nestjs/common';
import { GraphService } from './graph.service';
import { performance } from "perf_hooks";
import { Arango } from '../config/Arango';

@Controller('graph')
export class GraphController {

  constructor(
    private graphService:GraphService,
    private arango:Arango
  ) {}

  @Get('/match/:matchId/players')
  async getPlayers(@Param('matchId') matchId) {

    const t0 = performance.now();
    const info = await this.graphService.getTeamByMatchId(matchId);
    const t1 = performance.now();
    const query=`for i in match
          filter i.id==${matchId}

           for v,e,p in 0..2 outbound i graph "league_team_player"
          return {"node":v._id,"edge": {"from":e._from,"to":e._to}}`

    const graph=await this.arango.executeGetQuery(query)

    const obj = {
      graph,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/match/:matchId')
  async getMatchById(@Param('matchId') matchId) {
    // return this.relationService.getByMatchId(matchId)

    const t0 = performance.now();
    const info = await this.graphService.getMatchById(matchId);
    const t1 = performance.now();
    const obj = {
      graph: null,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/matchinfo/:matchId/:matchInfo')
  async getGoalsFromMatch(@Param('matchId') matchId,@Param('matchInfo') matchInfo) {
    // return this.relationService.getGoalsInfo(matchId);


    const t0 = performance.now();
    const info = await this.graphService.getMatchInfoByMatchId(matchId,matchInfo);
    const t1 = performance.now();
    const obj = {
      graph:null,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/team/:teamId/players')
  async getPlayerByTeamId(@Param('teamId') teamId){

    const t0 = performance.now();
    const info = await this.graphService.getPlayerByTeamId(teamId);
    const t1 = performance.now();

    const query=`for i in team
        filter i.id=="${teamId}"
        for v,e,p in 0..1 outbound i graph "league_team_player"
        filter e.label!="team to nonePlayer members"
        return {"node":v._id,"edge": {"from":e._from,"to":e._to}}`

    const graph= await this.arango.executeGetQuery(query)
    const obj = {
      graph,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/team/:teamId/contract')
  async getPlayerContractByTeamId(@Param('teamId') teamId){

    const t0 = performance.now();
    const info = await this.graphService.getContractByTeamId(teamId);
    console.log(info);
    const t1 = performance.now();
    const query=`for i in team
      filter i.id=="${teamId}"
      for v,e,p in 0..2 outbound i graph "league_team_player"
      filter !(CONTAINS(v._id, "nonePlayerContract")or CONTAINS(v._id, "nonePlayer"))
      return {"node":v._id,"from":e._from,"to":e._to}`
    const graph=await this.arango.executeGetQuery(query)

    const obj = {
      graph,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/team/:teamId')
  async getTeamById(@Param('teamId') teamId){

    const t0 = performance.now();
    const info = await this.graphService.getAllMatchesOfTeamById(teamId);
    const t1 = performance.now();
    const query=`for i in team
      filter i.id=="1"
      for v,e,p in 0..1 inbound i graph "league_team_player"
      filter !CONTAINS(v._id, "league")
      return {"node":v._id,"from":e._from,"to":e._to}
      
`
    const graph =await this.arango.executeGetQuery(query)
    const obj = {
      graph,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/team/:teamId/noneplayer')
  async getNonePlayerByTeamId(@Param('teamId') teamId){

    const t0 = performance.now();
    const info = await this.graphService.getNonePlayerByTeamId(teamId);
    const t1 = performance.now();

    const query=`for i in team
        filter i.id=="${teamId}"
        for v,e,p in 0..1 outbound i graph "league_team_player"
        filter e.label!="team to player"
        return {"node":v._id,"edge": {"from":e._from,"to":e._to}}`

    const graph= await this.arango.executeGetQuery(query)
    const obj = {
      graph,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/league/:leagueId/teams')
  async getTeamsByLeagueId(@Param('leagueId') leagueId){

    const t0 = performance.now();
    const info = await this.graphService.getTeamByLeagueId(leagueId);
    const t1 = performance.now();
    const query=`for i in league
      filter i.id==${leagueId}
      for v,e,p in 0..1 outbound i graph "league_team_player"
      
return {"node":v._id,"from":e._from,"to":e._to}`

    const graph=await this.arango.executeGetQuery(query)
    const obj = {
      graph,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/match/week/:weekId')
  async getMatchInfoByWeek(@Param('weekId') weekId){
    const t0 = performance.now();
    const info = await this.graphService.getMatchByWeek(weekId);
    const t1 = performance.now();
    const query=`for i in match
      filter i.game_week=="${weekId}"
      for v,e,p in 0..1 outbound i graph "league_team_player"
      filter !CONTAINS(v._id, "team")
      return {"node":v._id,"from":e._from,"to":e._to}

`
    const graph=await this.arango.executeGetQuery(query)
    const obj = {
      graph,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/league/:leagueId/players')
  async getPlayersByLeagueID(@Param('leagueId') leagueId){
    const t0 = performance.now();
    const info = await this.graphService.getPlayersByLeagueId(leagueId);
    const t1 = performance.now();
    const query=`for i in league
      filter i.id==${leagueId}
      for v,e,p in 0..2 outbound i graph "league_team_player"
      filter !CONTAINS(v._id, "nonePlayer")
return {"node":v._id,"from":e._from,"to":e._to}
`
    const graph=await this.arango.executeGetQuery(query)
    const obj = {
      graph,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/league/:leagueId/matches')
  async getMatchesByLeagueID(@Param('leagueId') leagueId){
    if (leagueId!='1'){
      throw new NotFoundException()
    }
    const t0 = performance.now();
    const info = await this.graphService.getMatchByLeagueId();
    const t1 = performance.now();
    const obj = {
      graph:null,
      info,
      time: t1 - t0,
    };
    return obj;
  }


  @Get('/col/:name')
 async getColbyName(@Param('name')name){
    try {
      const query=`for i in ${name} return i`
      return await this.arango.executeGetQuery(query)
    }catch (err) {
      const db=this.arango.getDB()
      const collections = await db.collections();
      return collections

    }
  }
}
