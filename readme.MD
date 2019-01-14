# StreamSets Demo

This repository contains examples of StreamSets' Data collector pipelines as well as some sample code for a dummy PostgreSQL database that is used as a target and a Grafana dashboard using the PostgreSQL DB as a source.

## Pre-Requisites

In order to be able to use the demo pipelines & the Grafana dashboard you need to have the following elements available in your environment:

1. StreamSets Data Collector (tested with v3.6 & 3.7)
2. PostgreSQL Server (tested with v10 & V11)
3. Grafana Server (tested with v5.4.2)
4. Browser to access the UI server interfaces.

## Installation

### StreamSets Data Collector
You can [download the Open Source Data Collector from StreamSets](https://streamsets.com/opensource) and install it in a Linux Server (or a Guest Linux OS in VirtualBox if you're running Windows).

Is recommended to install the Full Tarball or the Full RPM to ensure that all libraries are required but this will result in a larger download (2GB+).

Alternatively download the Core Version and install libraries as required.

Follow the [installation instructions](https://streamsets.com/documentation/datacollector/latest/help/datacollector/UserGuide/Installation/InstallationAndConfig.html#concept_gbn_4lv_1r) and go to [http://localhost:18630](http://localhost:18630).

Log in using ```admin:admin```.

### PostgreSQL

[Download](https://www.postgresql.org/download/) the desired distro of PostgreSQL, follow the installation instructions and once up an running execute the command in the ```db/postgres-ddl.sql``` script in this repo.

This will create to sample tables to store data (sourced using the pipeline ```streamsets/04 - Branching & Splitting.json``` from this repo).

*NOTE: That the pipeline is currently configure to access a server in the same host where StreamSets is installed using the credentials ```postgres:postgres```. If you wish to change the password or the end-point you will need to edit the Destination Stages.*

### Grafana

[Download](https://grafana.com/grafana/download) Grafana for the required OS and follow the installation instructions provided.

Go to [http://localhost:8080](http://localhost:8080) (or whatever port you've configured) and use the credentials ```admin:admin``` - Change them if you wish.

Configure a Data Source named ```PostgreSQL``` pointing to the instance configured in the previous step and (optionally) make it the default connection .

Finally got the "Dashboards --> Manage" from the side panel, click the import button and when prompted paste the content of the ```grafana/Meetup RSVPs Worldwide Dashboard.json``` in the provided text area.

### Slide Deck

The slide-deck with the explanation of this repo will be provided shortly.

***
Cristian Varela - 2019
