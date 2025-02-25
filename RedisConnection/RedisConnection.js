 const redis = require('ioredis')
 
 const RedisManager = new redis.Redis(
       'redis://localhost:6379'
 )
module.exports= RedisManager;

