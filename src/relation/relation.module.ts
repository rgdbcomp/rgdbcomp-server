import { Module } from '@nestjs/common';
import { RelationController } from './relation.controller';
import { RelationService } from './relation.service';
import { Db } from '../config/db';

@Module({
  controllers: [RelationController],
  providers: [RelationService, Db],
})
export class RelationModule {}
