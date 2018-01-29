# db-rpg-populated-career-site-mysql

A temporary image to get us working with Wordpress.  Intended to be thrown away, this image imports a dump of the current Elastic Beanstalk DB on startup.

## Usage

Build it:

`docker build -t cshrrpg/db-rpg-populated-career-site-mysql .`

Run it:

`docker run -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password cshrrpg/db-rpg-populated-career-site-mysql`

Connect to it:

`mysql --host=localhost --user=root --password`

## Schema

The ebdb schema exported from the old Elastic Beanstalk instance.

~~~~
MySQL [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| ebdb               |
| mysql              |
| performance_schema |
+--------------------+
4 rows in set (0.00 sec)
~~~~

~~~~
MySQL [(none)]> use ebdb;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MySQL [ebdb]>
~~~~

~~~~
MySQL [ebdb]> show tables;
+----------------------------+
| Tables_in_ebdb             |
+----------------------------+
| wp_commentmeta             |
| wp_comments                |
| wp_fc_action               |
| wp_fc_action_history       |
| wp_fc_emails               |
| wp_fc_workflow_steps       |
| wp_fc_workflows            |
| wp_groups_capability       |
| wp_groups_group            |
| wp_groups_group_capability |
| wp_groups_user_capability  |
| wp_groups_user_group       |
| wp_links                   |
| wp_options                 |
| wp_postmeta                |
| wp_posts                   |
| wp_term_relationships      |
| wp_term_taxonomy           |
| wp_termmeta                |
| wp_terms                   |
| wp_usermeta                |
| wp_users                   |
+----------------------------+
22 rows in set (0.00 sec)

MySQL [ebdb]>
~~~~
