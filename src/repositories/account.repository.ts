import {inject} from '@loopback/core';
import {DefaultCrudRepository} from '@loopback/repository';
import {RelationDataSource} from '../datasources';
import {Account, AccountRelations} from '../models';

export class AccountRepository extends DefaultCrudRepository<
  Account,
  typeof Account.prototype.id,
  AccountRelations
> {
  constructor(
    @inject('datasources.relation') dataSource: RelationDataSource,
  ) {
    super(Account, dataSource);
  }
}
