import { aql, Database } from 'arangojs';


export class Arango {
  private readonly _db:any;

  constructor() {
    this._db = new Database({
      url: 'http://127.0.0.1:8529',
    });
    this._db.useDatabase('dbms_project');
    this._db.useBasicAuth('root', 'test1234');
  }

  getDB() {
    return this._db;
  }

  getCol(name:any) {
    return this._db.collection(name);
  }

  getEdgeCol(name:any) {
    return this._db.edgeCollection(name);
  }

  getGraph(name: any) {
    const graph = this._db.graph(name);
  }



  async getAll(col:any) {
    const query = aql`for i in ${col} return i`;
    let cursor;
    try {
      cursor = await this._db.query(query);
    } catch (err) {
      return err;
    }
    const result = await cursor.all();
    if (result.length == 0) {
      console.log(`endpoint is valid but collection is empty`);
    } else {
      return result;
    }
  }



  async getByKey(col:any, _key:any) {
    const query = aql`for i in ${col} 
     filter i._key==${_key}
     return i`;

    let cursor;
    try {
      cursor = await this._db.query(query);
    } catch (err) {
      return err;
    }
    const result = await cursor.all();
    if (result.length == 0) {
      console.log(`data with key: ${_key} does not exist`);
    } else {
      return result;
    }
  }



  async create(col: any, data: any) {
    const query = aql`insert ${data} into ${col} RETURN NEW`;
    let cursor;
    try {
      cursor = await this._db.query(query);
    } catch (err) {
      console.log(err);
    }
    return await cursor.all();
  }



  async addEdge(edgeCol:any, startNode: any, endNode: any, data: any) {
    try {
      const meta = await edgeCol.save(data, startNode, endNode);
      return meta;
    } catch (err) {
      return err;
    }

    return 'edge created';
  }

  async getAllEdge(graph: any, col: any) {
    const query = aql`for i in ${col}
      FOR v, e, p IN 1..1 any i GRAPH "${graph}"
      return p
       `;
    let cursor;
    try {
      cursor = await this._db.query(query);
      console.log(567);
    } catch (err) {
      return err;
    }
    const result = await cursor.all();
    if (result.length == 0) {
      console.log(`endpoint is valid but graph is empty`);
    } else {
      return result;
    }
  }

  async getAllEdgesOfOneNode(key: any, graph: any, col: any) {
    const query = aql`for i in ${col}
      filter i._key==${key}
      FOR v, e, p IN 1..1 any i GRAPH ${graph}
      return p
       `;
    let cursor;
    try {
      cursor = await this._db.query(query);
    } catch (err) {
      return err;
    }
    const result = await cursor.all();
    if (result.length == 0) {
      console.log(`endpoint is valid but graph is empty`);
    } else {
      return result;
    }
  }



  async executeEmptyQuery(query: any) {
    try {
      await this._db.query(query);
    } catch (err) {
      return err;
    }
  }

  async executeGetQuery(query: any) {
    let cursor;
    try {
      cursor = await this._db.query(query);
    } catch (err) {
      return err;
    }
    const result = await cursor.all();
    if (result.length == 0) {
      console.log(`endpoint is valid but graph is empty`);
    } else {
      return result;
    }
  }
}
