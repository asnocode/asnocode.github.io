---
title : Ansible Collection community.sap_install by sap-linuxlab.
short-title : SAP Install Ansible Collection.
description: This Ansible Collection executes various SAP Software installations and configuration tasks for running various SAP solutions and deployment scenarios on Linux operating systems (RHEL or SLES).
Date :  2024-02-10
author: sap-linuxlab
layout: project-post
image: assets/images/posts/2020-05-01-iitbhu-thesis-template/banner.png
image-webp: assets/images/posts/2020-05-01-iitbhu-thesis-template/banner.webp
image-thumb: assets/images/posts/2020-05-01-iitbhu-thesis-template/banner-thumb.jpg
image-alt: SAP Install Ansible Collection.
image-source: Source - medium.com
permalink: /posts/2020/05/iitbhu-thesis-template/
page-level: repopage
status: publ 
---
 
# community.sap_install Ansible Collection

![Ansible Lint](https://github.com/sap-linuxlab/community.sap_install/actions/workflows/ansible-lint.yml/badge.svg?branch=main)

This Ansible Collection executes various SAP Software installations and configuration tasks for running various SAP solutions and deployment scenarios on Linux operating systems (RHEL or SLES).

This includes handlers for SAP HANA database lifecycle manager (HDBLCM) and SAP Software Provisioning Manager (SWPM), and can be combined with other Ansible Collections to provide end-to-end automation _(e.g. provision, download, install, operations)_.


<!---
[![Build Status](https://api.travis-ci.org/sap-linuxlab/community.sap_install.svg)](https://travis-ci.org/sap-linuxlab/community.sap_install)
-->
### External Repositoriess
<ul class="actions" style="margin-bottom: 5px; padding-bottom: 5px;">
    <li style="height: 18; vertical-align: top;"><a href="https://github.com/sap-linuxlab/community.sap_install" style="font-size: small;" class="tag_marker"> <span>github:sap-linuxlab/community.sap_install</span></a></li>
    <li><iframe src="https://ghbtns.com/github-btn.html?user=sap-linuxlab&repo=community.sap_install&type=star&count=true" frameborder="0" scrolling="0" width="78" height="20" title="GitHub"></iframe><iframe src="https://ghbtns.com/github-btn.html?user=sap-linuxlab&repo=community.sap_install&type=watch&count=true&v=2" frameborder="0" scrolling="0" width="88" height="20" title="GitHub"></iframe><iframe src="https://ghbtns.com/github-btn.html?user=user=sap-linuxlab&repo=community.sap_install&type=fork&count=true" frameborder="0" scrolling="0" width="78" height="20" title="GitHub"></iframe></li>
</ul>


**Examples of verified installations include:**

- SAP HANA 2.0 (SPS04+) with setup as Scale-Up, Scale-Out, High Availability
- Other SAP installation activities; such as System Rename, System Copy Export, SAP Solution Manager and SAP Web Dispatcher


**Please read the [full documentation](/docs#readme) for how-to guidance, requirements, and all other details. Summary documentation is below:**


## Contents

Within this Ansible Collection, there are various Ansible Roles and no custom Ansible Modules.

### Ansible Roles

| Name | Summary |
| :--- | :--- |
| [sap_anydb_install_oracle](https://github.com/sap-linuxlab/community.sap_install/tree/main/roles/sap_anydb_install_oracle) | install Oracle DB 19.x for SAP |
| [sap_general_preconfigure](https://github.com/sap-linuxlab/community.sap_install/tree/main/roles/sap_general_preconfigure) | configure general OS settings for SAP software |
| [sap_ha_install_hana_hsr](https://github.com/sap-linuxlab/community.sap_install/tree/main/roles/sap_ha_install_hana_hsr) | install SAP HANA System Replication |
| [sap_ha_pacemaker_cluster](https://github.com/sap-linuxlab/community.sap_install/tree/main/roles/sap_ha_pacemaker_cluster) | install and configure pacemaker and SAP resources |
| [sap_hana_install](https://github.com/sap-linuxlab/community.sap_install/tree/main/roles/sap_hana_install) | install SAP HANA via HDBLCM |
| [sap_hana_preconfigure](https://github.com/sap-linuxlab/community.sap_install/tree/main/roles/sap_hana_preconfigure) | configure settings for SAP HANA database server |
| [sap_hostagent](https://github.com/sap-linuxlab/community.sap_install/tree/main/roles/sap_hostagent) | install SAP Host Agent |
| [sap_install_media_detect](https://github.com/sap-linuxlab/community.sap_install/tree/main/roles/sap_install_media_detect) | detect and extract SAP Software installation media |
| [sap_maintain_etc_hosts](https://github.com/sap-linuxlab/community.sap_install/tree/main/roles/sap_maintain_etc_hosts) | maintain the /etc/hosts file of an SAP software host |
| [sap_netweaver_preconfigure](https://github.com/sap-linuxlab/community.sap_install/tree/main/roles/sap_netweaver_preconfigure) | configure settings for SAP NetWeaver application server |
| [sap_storage_setup](https://github.com/sap-linuxlab/community.sap_install/tree/main/roles/sap_storage_setup) | configure storage for SAP HANA, with LVM partitions and XFS filesystem |
| [sap_swpm](https://github.com/sap-linuxlab/community.sap_install/tree/main/roles/sap_swpm) | install SAP Software via SWPM |

