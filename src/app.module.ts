import { Module } from '@nestjs/common';
import { RelationModule } from './relation/relation.module';

@Module({
  imports: [RelationModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
