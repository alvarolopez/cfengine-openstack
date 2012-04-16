======================================================
CFengine3 promises for setting up an Openstack testbed
======================================================

This set of promises is intented to easily build and maintain an OpenStack
testbed using CFengine3. By using these promises, you manage centrally your
deployment, making changes to your ``nova.conf`` file in the CFengine server.
CFengine will take care of keeping it in sync with the rest of the nodes. In
future releases the management of xml templates will be also added.

Requirements
============

You need to be familiar with `CFengine 3 <https://cfengine.com/community>`.

The promises are to be used on an Ubuntu Precise (this is due to the package
and repository management). The deployment is based on the latest milestone
proposed packages fron the `OpenStack PPA <http://wiki.openstack.org/PPAs>`.

For the moment, only Xen+libvirt is supported, and only the compute nodes are
managed and configured properly.

Installation
============

Install CFengine
----------------

You can get CFengine communty version from https://cfengine.com/community. Once
you have it installed, it will create a ``/var/cfengine`` directory on all your
nodes.

Configure
---------

Edit the ``cfrc`` file and fill it up with the correct values for your
deployment, then execute ``set_up.sh``. This will fill the promises files in
``promises/`` with the values you provided.

This CFengine setup requires that you provide a global ``nova.conf``, valid for
all the nova components in ``promises/config_files/nova.conf``.


Deploy
------

TBD.


Use
---

TBD.

