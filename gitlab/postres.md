## PostgreSQL Commands and Configurations

| Command/Configuration | Description |
|---------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------- |
| `sudo gitlab-psql -d gitlabhq_production`                                             | Access the GitLab PostgreSQL database as a superuser.                                                |
| `sudo gitlab-rails dbconsole`                                                         | Access the GitLab PostgreSQL database as the application user.                                        |
| `gitlab-ctl pg-upgrade`                                                               | Upgrade the packaged PostgreSQL server to a later version.                                           |
| `/opt/gitlab/embedded/bin/postgres --single -D /var/opt/gitlab/postgresql/data gitlabhq_production` | Place the database in single-user mode for maintenance tasks.                          |
| `gitlab-ctl stop`                                                                     | Stop GitLab services, often used before performing database maintenance.                             |
| `gitlab-ctl start`                                                                    | Start GitLab services after maintenance or configuration changes.                                    |
| `gitlab-ctl reconfigure`                                                              | Apply configuration changes, including those related to the PostgreSQL database.                      |
| `gitlab-ctl restart postgresql`                                                        | Restart the PostgreSQL service within GitLab.                                                       |
| `gitlab-ctl pg-upgrade -V <version>`                                                   | Upgrade to a specific PostgreSQL version (e.g., `gitlab-ctl pg-upgrade -V 14` for PostgreSQL 14).   |
| `gitlab-ctl revert-pg-upgrade -V <version>`                                            | Revert to a previous PostgreSQL version if needed.                                                  |
| `gitlab-ctl deploy-page up`                                                            | Display a "Deploy in progress" page to restrict user access during maintenance.                     |
| `gitlab-ctl deploy-page down`                                                          | Remove the "Deploy in progress" page to restore user access after maintenance.                      |
| `gitlab-ctl deploy-page status`                                                        | Check the status of the deploy page.                                                                |
| `gitlab-ctl reconfigure`                                                               | Apply configuration changes after modifying `/etc/gitlab/gitlab.rb`.                                |
| `gitlab-ctl restart postgresql`                                                        | Restart PostgreSQL to apply configuration changes.                                                  |
| `gitlab-ctl pg-upgrade -V <version>`                                                   | Upgrade PostgreSQL to a specific version.                                                           |
| `gitlab-ctl revert-pg-upgrade -V <version>`                                            | Revert PostgreSQL to a previous version if needed.                                                  |
| `gitlab-ctl repmgr standby setup MASTER_NODE_NAME`                                     | Recreate secondary nodes in a PostgreSQL HA cluster after an upgrade.                               |
| `gitlab-ctl repmgr cluster show`                                                       | Display the status of the PostgreSQL HA cluster.                                                    |
| `gitlab-ctl replicate-geo-database --slot-name=SECONDARY_SLOT_NAME --host=PRIMARY_HOST_NAME --sslmode=verify-ca` | Restart database replication on a Geo secondary database after an upgrade.|
| `gitlab-ctl reconfigure`                                                               | Reconfigure GitLab to update the `pg_hba.conf` file after replicating the Geo database.             |
| `gitlab-ctl restart postgresql`                                                        | Restart PostgreSQL after reconfiguring GitLab.                                                      |
| `gitlab-ctl pg-upgrade`                                                                | Upgrade PostgreSQL on the Geo primary database.                                                     |
| `gitlab-ctl pg-upgrade`                                                                | Upgrade PostgreSQL on the Geo secondary database and tracking database.                             |
| `gitlab-ctl reconfigure`                                                               | Reconfigure GitLab on the Geo secondary database to update the `pg_hba.conf` file.                  |
| `gitlab-ctl restart postgresql`                                                        | Restart PostgreSQL on the Geo secondary database after reconfiguring GitLab.                        |
| `gitlab-ctl reconfigure`                                                               | Reconfigure GitLab after modifying the `postgresql['version']` setting in `/etc/gitlab/gitlab.rb`.  |
| `gitlab-ctl restart postgresql`                                                        | Restart PostgreSQL after reconfiguring GitLab.                                                      |
| `gitlab-ctl pg-upgrade`                                                                | Upgrade PostgreSQL on the primary node in a PostgreSQL HA cluster.                                  |
| `gitlab-ctl repmgr standby setup MASTER_NODE_NAME`                                     | Recreate secondary nodes in a PostgreSQL HA cluster after upgrading the primary node.               |
| `gitlab-ctl repmgr cluster show`                                                       | Display the status of the PostgreSQL HA cluster after upgrading.                                    |
| `gitlab-ctl reconfigure`                                                               | Reconfigure GitLab after modifying the `postgresql['max_replication_slots']` setting in `/etc/gitlab/gitlab.rb`.|
| `gitlab-ctl restart postgresql`                                                        | Restart PostgreSQL after reconfiguring GitLab.                                                                  |
| `gitlab-ctl pg-upgrade`                                                                | Upgrade PostgreSQL on the Geo primary database.                                                                 |
| `gitlab-ctl pg-upgrade`                                                                | Upgrade PostgreSQL on the Geo secondary database and tracking database.                                         |
| `gitlab-ctl replicate-geo-database --slot-name=SECONDARY_SLOT_NAME --host=PRIMARY_HOST_NAME --sslmode=verify-ca` | Restart database replication on the Geo secondary database after upgrading PostgreSQL.|
| `gitlab-ctl reconfigure`                                                               | Reconfigure GitLab on the Geo secondary database to update the `pg_hba.conf` file after replicating the Geo database. |
| `gitlab-ctl restart postgresql`                                                        | Restart PostgreSQL on the Geo secondary database after reconfiguring GitLab.                                          |
| `gitlab-ctl reconfigure`                                                               | Reconfigure GitLab after modifying the `postgresql['version']` setting in `/etc/gitlab/gitlab.rb`.                    |
| `gitlab-ctl restart postgresql`                                                        | Restart PostgreSQL after reconfiguring GitLab.                                                                        |
| `gitlab-ctl pg-upgrade`                                                                | Upgrade PostgreSQL on the primary node in a PostgreSQL HA cluster.                                                    |
| `gitlab-ctl repmgr standby setup MASTER_NODE_NAME`                                     | Recreate secondary nodes in a PostgreSQL HA cluster after upgrading the primary node.                                 |
| `gitlab-ctl repmgr cluster show`                                                       | Display the status of the PostgreSQL HA cluster after upgrading.                                                      |
| `gitlab-ctl reconfigure`                                                               | Reconfigure GitLab after modifying the `postgresql['max_replication_slots']` setting in `/etc/gitlab/gitlab.rb`.      |
| `gitlab-ctl restart postgresql`                                                        | Restart PostgreSQL after reconfiguring GitLab.                                                                        |
| `gitlab-ctl pg-upgrade`                                                                | Upgrade PostgreSQL on the Geo primary database.                                                                       |
| `gitlab-ctl pg-upgrade`                                                                | Upgrade PostgreSQL on the Geo secondary database and tracking database.                                               |

 
