import { Pool } from 'pg';

export class Db {
  db;
  constructor() {
    this.db = new Pool({
      user: 'postgres',
      host: '45.82.138.169',
      database: 'dbms_project',
      password: 'test1234',
      port: 5432,
    });
  }

  async execute(query) {
    const res = await this.db.query(query);
    return await res.rows;
    this.db.end();
  }
}
