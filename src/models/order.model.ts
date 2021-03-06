import {Entity, model, property, belongsTo} from '@loopback/repository';
import {Customer} from './customer.model';

@model({name: 'order'})
export class Order extends Entity {
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

  @property({
    type: 'boolean',
    required: true,
  })
  isDelivered: boolean;

  @belongsTo(() => Customer,{keyFrom:'customerId', keyTo:'id', name:'customer'})
  customerId: number;

  constructor(data?: Partial<Order>) {
    super(data);
  }
}

export interface OrderRelations {
  // describe navigational properties here
}

export type OrderWithRelations = Order/*  & OrderRelations */;
