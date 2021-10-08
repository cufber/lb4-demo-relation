import { Entity, hasMany, model, property, hasOne} from '@loopback/repository';
import { Order } from '.';
import {Account} from './account.model';

@model({ name: 'customer' })
export class Customer extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  id?: number;

  @property({
    type: 'string',
    required: true,
  })
  name: string;

  // cli generated
  // @hasMany(() => Order)
  // name的值与customer.repository.ts中的'orders'对应
  @hasMany(() => Order, { keyFrom: 'id', keyTo: 'customerId', name: 'orders' })
  orders: Order[];

  @hasOne(() => Account, { keyFrom: 'id', keyTo: 'customerId', name: 'account' })
  account: Account;


  constructor(data?: Partial<Customer>) {
    super(data);
  }
}

export interface CustomerRelations {
  // describe navigational properties here
}

export type CustomerWithRelations = Customer & CustomerRelations;
