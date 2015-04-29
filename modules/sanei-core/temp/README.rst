phpmyadmin
==========
.. module:: phpMyAdmin
:synopsis: phpMyAdmin on Nginx.

.. moduleauthor:: Bazyli Brzoska <bazyli.brzoska@gmail.com>

Module
++++++

:Description: TODO.
              And there is more.
              And 'more'...
              And "MOOORE"!

:Dependencies: - php+mysql
               - nginx-ssl
               - apt:mariadb-client

Variables
+++++++++

.. envvar:: PMA_PORT

   :default: 9000

            Sets the port under which PMA will be available.

.. envvar:: PMA_HOSTNAME

            Sets the hostname under PMA will be available.

   :default: pma.local
