import {inject} from '@loopback/core';
import {DefaultCrudRepository} from '@loopback/repository';
import {RelationDataSource} from '../datasources';
import {Order, OrderRelations} from '../models';

export class OrderRepository extends DefaultCrudRepository<
  Order,
  typeof Order.prototype.id,
  OrderRelations
> {
  constructor(
    @inject('datasources.relation') dataSource: RelationDataSource,
  ) {
    super(Order, dataSource);
  }
}
