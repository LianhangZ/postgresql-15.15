select relname, attname
from pg_class t, pg_attribute a, pg_namespace n
where t.relkind = 'r'
    and t.relnamespace = n.oid
    and n.nspname = 'public'
    and attrelid = t.oid
    and attnum > 0
order by relname, attnum;
