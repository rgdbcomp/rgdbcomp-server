import { Controller, Get, Param } from '@nestjs/common';
import { RelationService } from './relation.service';
import { performance } from 'perf_hooks';

@Controller('relation')
export class RelationController {
  constructor(private relationService: RelationService) {}

  @Get('/match/:matchId/:team/players')
  async getPlayers(@Param('matchId') matchId, @Param('team') team) {
    const tables = ['matches', 'teams', 'players'];
    const t0 = performance.now();
    const info = await this.relationService.getPlayers(matchId, team);
    const t1 = performance.now();
    const obj = {
      tables,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/match/:matchId')
  async getMatchById(@Param('matchId') matchId) {
    // return this.relationService.getByMatchId(matchId)
    const tables = ['matches'];
    const t0 = performance.now();
    const info = await this.relationService.getByMatchId(matchId);
    const t1 = performance.now();
    const obj = {
      tables,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/match/:matchId/goals')
  async getGoalsFromMatch(@Param('matchId') matchId) {
    // return this.relationService.getGoalsInfo(matchId);

    const tables = ['matches', 'goal_match_player', 'players'];
    const t0 = performance.now();
    const info = await this.relationService.getGoalsInfo(matchId);
    const t1 = performance.now();
    const obj = {
      tables,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/match/:matchId/foals')
  async getFoalsFromMatch(@Param('matchId') matchId){
    const tables = ['matches', 'cards_in_match_to_player', 'players'];
    const t0 = performance.now();
    const info = await this.relationService.getFoalsInfo(matchId);
    const t1 = performance.now();
    const obj = {
      tables,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/match/:matchId/ex')
  async getExchangeFromMatch(@Param('matchId') matchId){
    const tables = ['matches', 'player_exchange', 'players'];
    const t0 = performance.now();
    const info = await this.relationService.getExInfo(matchId);
    const t1 = performance.now();
    const obj = {
      tables,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/team/:teamId/players')
  async getPlayerByTeamId(@Param('teamId') teamId){
    const tables = ['matches',  'players'];
    const t0 = performance.now();
    const info = await this.relationService.getPlayerOfTeam(teamId);
    const t1 = performance.now();
    const obj = {
      tables,
      info,
      time: t1 - t0,
    };
    return obj;
  }
  @Get('/team/:teamId/contract')
  async getPlayerContractByTeamId(@Param('teamId') teamId){
    const tables = ['matches',  'players','player_contract'];
    const t0 = performance.now();
    const info = await this.relationService.getPlayersOfTeamContract(teamId);
    const t1 = performance.now();
    const obj = {
      tables,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/team/:teamId')
  async getTeamById(@Param('teamId') teamId){
    const tables = ['matches',  'teams'];
    const t0 = performance.now();
    const info = await this.relationService.getInfoOfTeamById(teamId);
    const t1 = performance.now();
    const obj = {
      tables,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/team/:teamId/noneplayer')
  async getNonePLayersByTeamById(@Param('teamId') teamId){
    const tables = ['none_player_contract',  'none_player_team_member'];
    const t0 = performance.now();
    const info = await this.relationService.getNonePlayers(teamId);
    const t1 = performance.now();
    const obj = {
      tables,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/league/:leagueId/teams')
  async getTeamsByLeagueId(@Param('leagueId') leagueId){
    const tables = ['league',  'teams'];
    const t0 = performance.now();
    const info = await this.relationService.getNonePlayers(leagueId);
    const t1 = performance.now();
    const obj = {
      tables,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/match/week/:weekId')
  async getMatchInfoByWeek(@Param('weekId') weekId){
    const tables = ['match',  '" referees_team"'];
    const t0 = performance.now();
    const info = await this.relationService.getMatchInfoByWeek(weekId);
    const t1 = performance.now();
    const obj = {
      tables,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/league/:leagueId/players')
  async getPlayersByLeagueID(@Param('leagueId') leagueId){
    const tables = ['players',  'league'];
    const t0 = performance.now();
    const info = await this.relationService.getPLayersByLeagueId(leagueId);
    const t1 = performance.now();
    const obj = {
      tables,
      info,
      time: t1 - t0,
    };
    return obj;
  }

  @Get('/table/:tableName')
  getTable(@Param('tableName')tableName){
    return this.relationService.getTable(tableName)
  }

  @Get('/tableinfo/:tableName')
  getTableInfo(@Param('tableName')tableName){
    return this.relationService.getTableInfo(tableName)
  }




}
