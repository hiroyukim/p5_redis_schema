use inc::Module::Install;
name 'Redis-Schema';
all_from 'lib/Redis/Schema.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
