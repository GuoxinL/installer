#!/usr/bin/env bash

############################################################

#         name : Smelly and long

#         author : liugx@bjnangle.com

############################################################

#
#   MongoDB Configuration
#
mongodb_config="
processManagement:\n
    fork: true\n
net:\n
    bindIp: 0.0.0.0\n
    port: 27117\n
storage:\n
    dbPath: /soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/db\n
    journal: \n
        enabled: true\n
systemLog:\n
    destination: file\n
    path: \"/soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/log/mongod.log\"\n
    logAppend: true\n
$1security:\n
    $1authorization: enabled"

#
#   MongoDB create user script
#
mongodb_config_create_user_js="conn = new Mongo('localhost:27117')\ndb = conn.getDB('admin')\ndb.createUser({\n    user: 'admin',\n    pwd: 'admin',\n    roles: [{\n        role: 'userAdminAnyDatabase',\n        db: 'admin'\n    }]\n})\ndb = conn.getDB('birdnest')\ndb.createUser({\n    user: 'yjh',\n    pwd: 'yjh123456790',\n    roles: [{\n        role: 'readWrite',\n        db: 'birdnest'\n    }]\n})"

#
#   MongoDB Service config
#
mongodb_service_conf="[Unit]\nDescription=MongoDB Service\nAfter=network.target\n\n[Service]\nType=forking\nExecStart=/soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/bin/mongod --config /soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/conf/mongod.conf\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target"

#
#   Neo4j Configuration
#
neo4j_config="dbms.connector.bolt.tls_level=OPTIONAL\ndbms.connector.bolt.listen_address=0.0.0.0:7687\ndbms.connector.http.listen_address=0.0.0.0:7474\ndbms.connector.https.listen_address=0.0.0.0:7473"

#
#   Neo4j Service config
#
neo4j_service_conf="[Unit]\nDescription=Neo4j Service\nAfter=network.target\\n[Service]\nType=forking\nExecStart=/soft/neo4j-community-3.2.1/bin/neo4j start\nExecReload=/soft/neo4j-community-3.2.1/bin/neo4j restart\nExecStop=/soft/neo4j-community-3.2.1/bin/neo4j stop\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target"

#
#   Redis Configuration
#
redis_config="requirepass 111111"

#
#   Redis Service config
#
redis_service_conf="[Unit]\nDescription=Redis Service\nAfter=network.target\n\n[Service]\n#Type=forking\nExecStart=/usr/local/bin/redis-server /soft/redis-3.2.9/redis.conf\nExecStop=/usr/local/bin/redis-cli shutdown\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target"

#
#   Apollo Service config
#
apollo_service_conf="[Unit]\nDescription=Apollo Service\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/var/lib/birdnest/bin/apollo-broker run\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target\n"

#
#   OpenSips cursee.out File
#
opensips_cursee_out="Running in local mode\nInitialized main window\nfound new module aaa_radius\nfound new module b2b_logic\nfound new module cachedb_cassandra\nfound new module cachedb_couchbase\nfound new module cachedb_memcached\nfound new module cachedb_mongodb\nfound new module cachedb_redis\nfound new module carrierroute\nfound new module cgrates\nfound new module compression\nfound new module cpl_c\nfound new module db_berkeley\nfound new module db_http\nfound new module db_mysql\nfound new module db_oracle\nfound new module db_perlvdb\nfound new module db_postgres\nfound new module db_sqlite\nfound new module db_unixodbc\nfound new module dialplan\nfound new module emergency\nfound new module event_rabbitmq\nfound new module h350\nfound new module regex\nfound new module identity\nfound new module jabber\nfound new module json\nfound new module ldap\nfound new module lua\nfound new module httpd\nfound new module mi_xmlrpc_ng\nfound new module mmgeoip\nfound new module osp\nfound new module perl\nfound new module pi_http\nfound new module rabbitmq\nfound new module proto_sctp\nfound new module proto_tls\nfound new module proto_wss\nfound new module presence\nfound new module presence_dialoginfo\nfound new module presence_mwi\nfound new module presence_xml\nfound new module pua\nfound new module pua_bla\nfound new module pua_dialoginfo\nfound new module pua_mi\nfound new module pua_usrloc\nfound new module pua_xmpp\nfound new module python\nfound new module rest_client\nfound new module rls\nfound new module sngtc\nfound new module snmpstats\nfound new module tls_mgm\nfound new module xcap\nfound new module xcap_client\nfound new module xmpp\n"

#
#   OpenSips Makefile.conf
#
opensips_makefile_conf="#aaa_radius= Radius implementation for the AAA API from the core | Radius client development library, tipically radiusclient-ng 0.5.0 or higher\n#b2b_logic= Logic engine of B2BUA, responsible of actually implementing the B2BUA services | xml parsing development library, typically libxml2-dev\n#cachedb_cassandra= Implementation of a cache system designed to work with Cassandra servers | thrift 0.6.1\n#cachedb_couchbase= Implementation of a cache system designed to work with CouchBase servers | libcouchbase >= 2.0\n#cachedb_memcached= Implementation of a cache system designed to work with a memcached server. | Memcached client library, tipically libmemcached\n#cachedb_mongodb= Implementation of a cache system designed to work with a MongoDB server. | libjson and the mongo-c-driver\n#cachedb_redis= Implementation of a cache system designed to work with Redis servers | Redis client library, hiredis\n#carrierroute= Provides routing, balancing and blacklisting capabilities. | libconfuse, a configuration file parser library\n#cgrates= Provides integration with the CGRateS billing/rating engine. | JSON library, libjson\n#compression= Implements SIP message compression/decompression and base64 encoding | zlib dev library, tipically zlib1g-dev\n#cpl_c= Implements a CPL (Call Processing Language) interpreter | library for parsing XML files, tipically libxml2 and libxml2-devel\n#db_berkeley= Integrates the Berkeley DB into OpenSIPS | Berkeley embedded database\n#db_http= Provides access to a database that is implemented as a HTTP server. | CURL library - libcurl\n#db_mysql= Provides MySQL connectivity for OpenSIPS | development libraries of mysql-client , tipically libmysqlclient-dev\n#db_oracle= Provides Oracle connectivity for OpenSIPS. | Development library of OCI, tipically instantclient-sdk-10.2.0.3\n#db_perlvdb= Provides a virtualization framework for OpenSIPS's database access. | Perl library development files, tipically libperl-dev\n#db_postgres= Provides Postgres connectivity for OpenSIPS | PostgreSQL library and development library - tipically libpq5 and libpq-dev\n#db_sqlite= Provides SQLite connectivity for OpenSIPS | SQLite library and development library - tipically libsqlite3 and libsqlite3-dev\n#db_unixodbc= Allows to use the unixodbc package with OpenSIPS | ODBC library and ODBC development library\n#dialplan= Implements generic string translations based on matching and replacement rules | PCRE development library, tipically libpcre-dev\n#emergency= Provides emergency call treatment for OpenSIPS | CURL dev library - tipically libcurl4-openssl-dev\n#event_rabbitmq= Provides the implementation of a RabbitMQ client for the Event Interface | RabbitMQ development library, librabbitmq-dev\n#h350= Enables access to SIP account data stored in an LDAP [RFC4510] directory containing H.350 commObjects | OpenLDAP library & development files, tipically libldap and libldap-dev\n#regex= Offers matching operations against regular expressions using the powerful PCRE library. | Development library for PCRE, tipically libpcre-dev\n#identity= Adds support for SIP Identity (see RFC 4474). | SSL library, tipically libssl\n#jabber= Integrates XODE XML parser for parsing Jabber messages | Expat library.\n#json= Introduces a new type of variable that provides both serialization and de-serialization from JSON format. | JSON library, libjson\n#ldap= Implements an LDAP search interface for OpenSIPS | OpenLDAP library & development files, tipically libldap and libldap-dev\n#lua= Easily implement your own OpenSIPS extensions in Lua | liblua5.1-0-dev, libmemcache-dev and libmysqlclient-dev\n#httpd= Provides an HTTP transport layer implementation for OpenSIPS. | libmicrohttpd\n#mi_xmlrpc_ng= New version of the xmlrpc server that handles xmlrpc requests and generates xmlrpc responses. | parsing/building XML library, tipically libxml\n#mmgeoip= Lightweight wrapper for the MaxMind GeoIP API | libGeoIP\n#osp= Enables OpenSIPS to support secure, multi-lateral peering using the OSP standard | OSP development kit, tipically osptoolkit\n#perl= Easily implement your own OpenSIPS extensions in Perl | Perl library development files, tipically libperl-dev\n#pi_http= Provides a simple web database provisioning interface | XML parsing & building library, tipically libxml-dev\n#rabbitmq= Provides functions to publish messages to a RabbitMQ server | RabbitMQ development library, librabbitmq-dev\n#proto_sctp= Provides support for SCTP listeners in OpenSIPS | SCTP development library, tipically libsctp-dev\n#proto_tls= Provides support for TLS listeners in OpenSIPS | SSL development library, tipically libssl-dev\n#proto_wss= Provides support for Secure WebSocket listeners in OpenSIPS | SSL development library, tipically libssl-dev\n#presence= Handles PUBLISH and SUBSCRIBE messages and generates NOTIFY messages in a general, event independent way | XML parsing & Building library, tipically libxml-dev\n#presence_dialoginfo= Enables the handling of \"Event: dialog\" (as defined in RFC 4235) |  XML parsing & building library, tipically libxml-dev\n#presence_mwi= Does specific handling for notify-subscribe message-summary (message waiting indication) events as specified in RFC 3842 | XML parsing & building library, tipically libxml-dev\n#presence_xml= Does specific handling for notify-subscribe events using xml bodies. | XML parsing & building library, tipically libxml-dev\n#pua= Offers the functionality of a presence user agent client, sending Subscribe and Publish messages. | XML parsing & building library, tipically libxml-dev\n#pua_bla= Enables Bridged Line Appearances support according | XML parsing & building library, tipically libxml-dev\n#pua_dialoginfo= Retrieves dialog state information from the dialog module and PUBLISHes the dialog-information using the pua module. | XML parsing & building library,tipically libxml-dev\n#pua_mi= Offers the possibility to publish presence information and subscribe to presence information via MI transports. | XML parsing & building library,tipically libxml-dev\n#pua_usrloc= Connector between usrloc and pua modules. | XML parsing & building library,tipically libxml-dev\n#pua_xmpp= Gateway for presence between SIP and XMPP. | XML parsing & building library,tipically libxml-dev\n#python= Easily implement your own OpenSIPS extensions in Python | Shared Python runtime library, libpython\n#rest_client= Simple HTTP client | CURL library - libcurl\n#rls= Resource List Server implementation following the specification in RFC 4662 and RFC 4826 | parsing/building XML library, tipically libxml-dev\n#sngtc= Voice Transcoding using the D-series Sangoma transcoding cards | libsngtc_node\n#snmpstats= Provides an SNMP management interface to OpenSIPS | NetSNMP v5.3\n#tls_mgm= Provides a TLS interface to manage certificates for OpenSIPS | SSL development library, tipically libssl-dev\n#xcap= XCAP utility functions for OpenSIPS. | libxml-dev\n#xcap_client= XCAP client for OpenSIPS.It fetches XCAP elements, either documents or part of them, by sending HTTP GET requests | libxml-dev and libcurl-dev\n#xmpp= Gateway between OpenSIPS and a jabber server. It enables the exchange of IMs between SIP clients and XMPP(jabber) clients. | parsing/building XML files, tipically libexpat1-devel\n\nexclude_modules?= aaa_radius b2b_logic cachedb_cassandra cachedb_couchbase cachedb_memcached cachedb_mongodb cachedb_redis carrierroute cgrates compression cpl_c db_berkeley db_http db_mysql db_oracle db_perlvdb db_postgres db_sqlite db_unixodbc dialplan emergency event_rabbitmq h350 regex identity jabber json ldap lua httpd mi_xmlrpc_ng mmgeoip osp perl pi_http rabbitmq proto_sctp proto_tls proto_wss presence presence_dialoginfo presence_mwi presence_xml pua pua_bla pua_dialoginfo pua_mi pua_usrloc pua_xmpp python rest_client rls sngtc snmpstats tls_mgm xcap xcap_client xmpp \n\ninclude_modules?= db_mysql \n\n#DEFS_GROUP_START\nDEFS+= -DPKG_MALLOC #Uses a faster malloc\n#DEFS+= -DUSE_SHM_MEM #All PKG allocations are mapped to SHM\n#DEFS_GROUP_END\nDEFS+= -DSHM_MMAP #Use mmap instead of SYSV shared memory\nDEFS+= -DUSE_MCAST #Compile in support for IP Multicast\nDEFS+= -DDISABLE_NAGLE #Disabled the TCP NAgle Algorithm ( lower delay )\nDEFS+= -DSTATISTICS #Enables the statistics manager\nDEFS+= -DHAVE_RESOLV_RES #Support for changing some of the resolver parameters\n#DEFS_GROUP_START\n#DEFS+= -DQM_MALLOC #Quality assurance memory allocator with runtime safety checks\nDEFS+= -DF_MALLOC #Fast memory allocator with minimal runtime overhead\n#DEFS+= -DHP_MALLOC #High performance allocator with fine-grained locking\n#DEFS_GROUP_END\n#DEFS+= -DDBG_MALLOC #Enables debugging for memory allocators\n#DEFS+= -DF_MALLOC_OPTIMIZATIONS #Remove all safety checks in F_MALLOC\n#DEFS+= -DNO_DEBUG #Turns off all debug messages\n#DEFS+= -DNO_LOG #Completely turns off all the logging\n#DEFS+= -DFAST_LOCK #Uses fast architecture specific locking\n#DEFS+= -DUSE_FUTEX #Uses linux futexs with fast architecture specific locking\n#DEFS+= -DUSE_SYSV_SEM #Uses SYSV sems for locking ( slower & limited number of locks\n#DEFS+= -DUSE_PTHREAD_MUTEX #Uses pthread mutexes for locking\n#DEFS+= -DUSE_UMUTEX #Uses FreeBSD-specific low-level mutexes for locking\n#DEFS+= -DUSE_POSIX_SEM #Uses POSIX sems for locking\n#DEFS+= -DBUSY_WAIT #Uses busy waiting on the lock\n#DEFS+= -DDBG_LOCK #Attach debug info to all lock structures\n#DEFS+= -DNOSMP #Do not use SMP sompliant locking. Faster but won't work on SMP machines\n#DEFS+= -DEXTRA_DEBUG #Compiles in some extra debugging code\n#DEFS+= -DORACLE_USRLOC #Uses Oracle compatible queries for USRLOC\n#DEFS+= -DSHM_EXTRA_STATS #Provides tools to get extra statistics for the shared memory used\n\nPREFIX ?= /usr/local/"