select r.relname, a.attname, t.typname, a.atttypmod
    from   pg_class r
        join pg_namespace n on (r.relnamespace = n.oid)
        join pg_attribute a on (a.attrelid = r.oid)
        join pg_type t on (a.atttypid = t.oid)
    where  r.relkind='r'
        and n.nspname = 'public'
        and attnum > 0
    order by relname,attnum