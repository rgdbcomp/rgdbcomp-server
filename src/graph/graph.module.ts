import { Module } from '@nestjs/common';
import { GraphController } from './graph.controller';
import { GraphService } from './graph.service';
import { Arango } from '../config/Arango';

@Module({
  controllers: [GraphController],
  providers: [GraphService,Arango]
})
export class GraphModule {}
