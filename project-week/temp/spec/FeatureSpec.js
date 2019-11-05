'use strict';

describe('ListSpace',function(){
  var listspace;
  beforeEach(function(){
    listspace = new ListSpace('name', 3, 'address', 'description');
  });

  describe('name tests',function(){
    it('can view name',function(){
      expect(listspace.name).toEqual('name');
    });
  });

  describe('cost tests',function(){
    it('can view cost',function(){
      expect(listspace.cost).toEqual(3);
    });
  });

  describe('address tests',function(){
    it('can view address',function(){
      expect(listspace.address).toEqual('address');
    });
  });

  describe('description tests',function(){
    it('can view description',function(){
      expect(listspace.description).toEqual('description');
    });
  });

});
