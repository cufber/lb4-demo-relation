import { Customer } from './../models/customer.model';
import { injectable, /* inject, */ BindingScope } from '@loopback/core';
import { repository } from '@loopback/repository';
import { CustomerRepository } from '../repositories';

@injectable({ scope: BindingScope.TRANSIENT })
export class CustomerService {
  constructor(
    @repository(CustomerRepository)
    protected customerRepo: CustomerRepository,
  ) { }

  async custom(): Promise<Customer[]> {
    return this.customerRepo.find({
      include: [
        {
          relation: 'orders',
          scope: { where: { id: { gt: 1 } } }
        }]
    });
    /* filter in swagger ui: 
    {
      "include": [
        {
          "relation": "orders",
          "scope": {
            "where": {
              "id": {"gt":1}
            }
          }
        }
      ]
    }
    */
  }
}
