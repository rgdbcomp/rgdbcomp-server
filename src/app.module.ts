import { Module } from '@nestjs/common';
import { RelationModule } from './relation/relation.module';
import { GraphModule } from './graph/graph.module';

@Module({
  imports: [RelationModule, GraphModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
