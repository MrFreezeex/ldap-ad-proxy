# ldap-ad-proxy
Simple proxing ldap(s) requests to Active Directory.

For setup container, please set variables discribed in env.example file

Variable | Description | Example
--- | --- | ---
`AD_SERVER_URI`  | URI to the Active Directory server | ldaps://ad.server.com
`AD_BASEDN` | Active Directory Base DN | ou=Users,dc=example,dc=com
`META_SUFFIX` | Meta suffix for changing basedn for client | ou=Users,dc=example,dc=com
`LOG_LEVEL` | Logging level | 7

example test with openldap client
```
ldapsearch -vv -x -s sub \
  -D "cn=Chel,ou=Users,dc=example,dc=com" \
  -w "UserPaSS" \
  -b "ou=Users,dc=example,dc=com" \
  "(&(mail=*))" mail
```
