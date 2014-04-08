Internet Of Energy
==================

Tesi di Laurea triennale di Simone Rondelli

Un framework di analisi e di servizi innovativi per la mobilità veicolare elettrica

A Framework for Analysis and innovative services for Electrical Mobility


Relatore: Luciano Bononi
Correlatore: Tullio Salomon Cinotti, Luca Bedogni, Marco Di Felice

Internet of Energy is a European research project born with the aim of
developing hardware and software infrastructure to introduce the electrical
mobility in modern urban environments.
It was Montori Federico’s thesis subject in 2012. He developed a
first prototype of platform that included a City Service(CS) for manage the
recharge reservations, a mobile application that can interact with the CS and
a simulator for testing the platform. In the course of more than a year of
development i rewrote all the software components of this project extending
considerably the functionality, making it modular and better engineered.
Inherited from the original project was the ontology-based architecture
that relies on storing and exchanging information through the Smart-M3
framework. The ontological approach ensures interoperability between software
agents who know the semantic structure of the exchanged data. All the
entities that make up the domain model are defined by a class of ontology.
M3 is a middleware architecture born with the aim to share semantic
information about the physical world in cross-domain, multi-vendor, multi-
platform, multi-device, applications . Smart-M3 is the first Open Source
implementation of M3, proposed by SOFIA, a European Project (2009-11)
of the ARTEMIS framework. The heart of this architecture is the Semantic 
Information Broker (SIB) which has the task of storing and sharing
information in M3 applications. The information is stored in RDF format.
All the information exchanged by the various agents of the system (cars,
charging stations, city service etc. . . ) pass through the SIB. The communication
protocols are implemented through the mechanism of subscriptions,
provided by the SIB, which permits to receive a notification when there are
changes made in a given set of data. Therefor the sender of a message puts
a set of RDF Triples into SIB and the recipient receives a notification with
the URI of message.
My contribution started in 2012 with the rewriting of the mobile application
that initially worked only in a simulated environment. Now the application
can interface with a real vehicle through the Blue&Me technology.
This is possible because Fiat is a partner of the IoE project and gave us the
opportunity to go in their research center in Turin (CRF - Centro Ricerche
Fiat) to test the application with a prototype of electrical Iveco Daily. I have
introduced many other features such as the estimation of requested energy
to reach a destination based on the study of the altimetric profile. The path
between the user and the destination is drawn on the map with different colors
to highlight the downhills (green), the uphills (red) and the flat stretches,
so the user can choose the best road for reach the destination. The altimetric
profile and the exact path to the destination is obtained thanks to a library
that I have developed for this purpose (UniboGeoTools). Moreover I have
mapped all the classes of ontology in an equivalent Entity class in Java (like
the ORM approach) and I have created a Controller class that provides the
simple CRUD operations. This greatly simplifies the programming activity.
During 2013, after a redefinition of the reservation protocol, i have rewrote
completely the City Service. First, I made it compatible with the new protocol
that now provides more parameters to choose the best Charge Option.
I took the opportunity to make the service high performance through techniques
such as thread pooling, object pooling and data caching.
The last part of which the project comprises is the Simulator whose architecture
is based on following three components:

• SUMO: Simulator of Urban MObility which allowed to model the
scenario of Bologna. The SUMO simulations are purely microscopic:
each vehicle is modeled explicitly, has an own route, and moves 
individually through the network. In fact you can keep control of each vehicle
of the simulation (and many other parameters) through a TCP/IP interface called TraCI.

•OMNeT++: a discrete event simulator born with the aim to build
network simulations. It allows to define many simulation aspects
such as vehicle logic, the battery model, the charging station model
and the drivers’ behaviour.

• Veins: an OMNeT++ module which permits to take control of a vehicle
in the SUMO simulation through TraCI interface. For each
vehicle in the traffic simulation Veins creates a corresponding module
in OMNeT++.

The initial version of simulator was only a proof of concept and could
not be used for collecting useful data. Therefor i have decided to rewrite
it from scratch. I greatly improved the application design, performance and
features. Now the simulator can be used to evaluate the impact of introducing
the electrical mobility in a realistic scenario. The simulator keeps track of
the occupation of charging stations , the various states of the vehicle (eg:
going to recharge, charging, normal driving etc. . . ), the number of failed
tries to recharge and some information about each vehicle such as battery
consumption, speed, altitude, acceleration etc. . .
The simulation can be executed with or without the reservation service,
so you can measure the benefits of this service. The charging stations are
configured by an external xml file that describes their power, voltage and
current.
You can study the number of Electrical Vehicle supported by the city
by making a simulation in which you can vary the number of vehicles and the
penetration rate of Electrical Vehicle. Than for example is possible to study
where would be better to place a new charging station or where it would be
sensible to improve the efficiency of existent ones.
Another important feature that I have introduced in the simulator is the
possibility to import the altimetric profile of the scenario in the simulation
and the introduction of it in the battery consumption model. This is possible
thanks to the SRTM files that enhance the map (imported by Open Street
Map) that constitutes the scenario. The consumption model takes into account 
the regenerative braking that permits the battery to recharge when
the driver brakes.
It is possible to vary a lot of parameters to customize the scenario, you
can change the behavior of the driver that establishes, for example, what
a driver does when arriving at charging station that is occupied, or which
charging station he chooses when the battery is low. You can vary some
vehicles parameters such as weight, engine efficiency, battery capacity etc. . .
Ultimately I have developed a very useful service that can build the trust
of users towards electric mobility and an efficient simulation framework to
test it. The simulator can be used both by energy providers and by the public
administration to test the maximum number of electrical vehicles that the
city can support, the impact of this upon traffic and many other important
parameters.





