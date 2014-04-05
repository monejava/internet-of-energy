Internet Of Energy
==================

Tesi di Laurea triennale di Simone Rondelli

Un framework di analisi e di servizi innovativi per la mobilità veicolare elettrica

Relatore: Luciano Bononi
Correlatore: Tullio Salomon Cinotti, Luca Bedogni, Marco Di Felice

Internet of Energy is a European research project born with the aim of
developing hardware and software infrastructure to introduce the electrical
mobility in modern urban environments.
It was Montori Federico’s thesis object in 2012. He developed a
first prototype of platform that included a City Service(CS) for manage the
recharge reservations, a Mobile Application that can interact with the CS
and a simulator for testing the platform. In the course of more than a
year of development i have rewritten all the software components that made
up the project extending considerably the functionalities making modular
and well engineered. From the original project was inherited the ontology-
based architecture that relies on storing and exchanging information through
the Smart-M3 framework. The ontological approach ensures interoperability
between software agents who know the semantic structure of the data ex
changed. All the entities that make up the domain model are defined by a
class of the ontology.
M3 is a middleware architecture born with the aim to share semantic
information about the physical world in cross-domain, multi-vendor, multi-
platform, multi-device, applications. Smart-M3 is the first Open Source
implementation of M3, proposed by SOFIA, an European Project (2009-
11) of the ARTEMIS framework. The hart of this architcture is the
Semantic Information Broker (SIB) which has the task for storing and sharing
information in M3 applications. The informations are stored in RDF format.
All the information exchanged by the various agents of the system (cars,
charging stations, city service ecc..) pass through the SIB. The com
munication protocols are implemented through the subscriptions mechanism
provided by the SIB which permits to have a notification when there are
some changes in a given set of data. So the sender of a message put a set of
RDF Triples into SIB and the recipient receive a notification with the URI
of message.
My contribution starts in 2012 with the rewriting of the mobile appli
cation that initially worked only in a simulated environment. Now the ap
plication can interface with a real vehicle through the Blue&Me technology.
This is possible because Fiat is a partner of the IoE project and gave us the
opportunity to go in their research center, in Turin, (CRF - Centro Ricerche
Fiat) to test the application with a prototype of electrical Iveco Daily. I have
introduced many other features such as the estimation of requested energy
to reach some destination based on the study of the altimetric profile. The
path between the user and the destination is drawn on the map with different 
colors for to highlight the downhill, the uphill and the plain, so the user
can choose the better road for reach the destination. The altimetric profile
and the exact path to the destination is obtained thanks to a library that i
have developed for this purpose (UniboGeoTools). Moreover i have mapped
all the ontology class in an equivalent java Entity class (like the ORM approach)
and i have created a Controller class that provide the simple CRUD
operations. This greatly simplifies the programming activity.
During the 2013, after a redefinition of the reservation protocol, i have
totally rewritten the City Service. First, I made it compatible with the new
protocol that now provide more parameters for choose the better Charge
Option. I took the opportunity to make the service high performance through
techniques such as thread pool, object pooling and data caching.
The last part that comprising the project is the Simulator. His architecture 
is based on three components:

• SUMO: simulator of urban mobility which allowed to model the
scenario of Bologna. The SUMO simulations are purely microscopic:
each vehicle is modelled explicitly, has an own route, and moves in-
dividually through the network. Infact you can keep the control of
each vehicle of the simulation (and many other parameters) trough a
TCP/IP interface called TraCI.

• OMNeT++: discrete event simulator born with the aim to build net-
work simulations. Has allowed to define many simulation aspects
such as vehicle logic, the battery model, the charging station model
and the drivers behaviour.

• Veins: OMNeT++ module which permits to get control of a vehicle
in the SUMO simulation through TraCI interface. For each
vehicle in the traffic simulation Veins creates a corresponding module
in OMNeT++.

Initial version of simulator was only a proof of concept and could not be
used for collecting useful data. So i have decided to rewrite it from scratch.
I have improved a lot the application design, performance and features. Now
the simulator can be used to evaluate the impact of introducing the electrical
mobility in a realistic scenario. The simulator keep track of the occupation
of charging stations , the various states of the vehicle (eg: going to recharge,
charging, normal driving ecc. . . ), the number of failed tries of recharge and
some information about each vehicle such as battery consumption, speed,
altitude, acceleration ecc. . .
The simulation can be executed either with reservation service active than
without, so you can measure the benefits brought by the introduction of this
service. The charging stations are configured by an external xml file where
you can describe their power, voltage and current. You can also vary the
number of vehicle in the simulation and the penetration rate of Electrical
Vehicle, so you can study the number of these supported by the city and
for example is possible to study where is better to put a new charging station
or where is sensible improve the efficency of existent ones.
Another important feature that i have introduced in the simulator is the
possibility to import the altimetric profile of the scenario in the simulation
and the introduction of it in the battery consumption model. This is possible
thanks to SRTM files that enhances the map (imported by Open Street Map)
that constitutes the scenario. The consumption model takes into account the
regenerative braking that permits to recharge the battery when driver brakes.
Is possible to vary a lot of parameters for customize the scenario, you
can change some driver behavior that establish, for example, what a driver
do when arrives at charging station that is occupied, or which charging station
choose when the vehicle battery is low. Or you can vary some vehicles
parameters such as weight, engine efficiency, battery capacity ecc..
Ultimately i have developed a very useful service that can improve the
trust of users towards electric mobility and an efficent simulation framwork
to test it. The simulator can be used either by energy providers than by
the public administration for test the maximum number of electrical vehicles
that the city can support, the impact of this on the traffic and many other
important parameters.




