import resolver from './helpers/resolver';
import insertCassette from './helpers/insert-cassette';
import cassette from './helpers/cassette';
import {
  setResolver
} from 'ember-qunit';

setResolver(resolver);
insertCassette(cassette);
