import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'getCurrentValue' : ActorMethod<[], bigint>,
  'incrementValue' : ActorMethod<[], bigint>,
}
