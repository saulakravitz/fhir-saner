This guide envisions a system architecture comprised of small, easily deliverable
components that can be used together to support deployment of reporting, analysis,
alerting and data aggregation tools to support fast deployment of solutions supporting
public health situational awareness.

The technology uses for SANER includes both FHIR Servers and clients,
implemented in or along side other [Health IT Systems](technology_environment.html) to
support the [use cases](use_cases.html) of this IG.  The use cases in turn are supported
by the definitions of [actors](actors.html) that implement various [transactions](transactions.html)
to implement the functionality described in this guide. These transactions exchange data
conforming to [profiles](profiles_and_extensions.html) and using the [vocabulary](vocabulary.html) defined
in this guide.

### Major Components
The major design components described by this guide support the following functions:

* Reporting - Generates the data to be reported and make it available.
* Presentation - Analyzes and display data.
* Adaptation - Adapts between systems
* FHIR Server - A FHIR Server is an obvious component in a FHIR based implementation guide.
* External Storage - Stores data for later access.

These functions are described in more detail in the sections below.

### Reporting
The reporting component is responsible for reporting utilization data known by an
authoritative system in the hospital. There may be multiple authoritative systems
for different kinds of reporting data.  A reporting component will create FHIR Measurement
Reports documenting the measures that are known to the authoritative system.  These
reports will be collected in some form of centralized storage or transmission solution.
That solution could be as simple as a file system, or more complex (e.g., using
cloud-based storage), and could involve different protocols, including S3, Azure Blob
Storage, SFTP, or FHIR RESTful APIs and a FHIR Server.

In this guide, the Reporting component is implemented by the [Measure Source](actors.html#measure-source) actor.

### Presentation
The presentation component selects some subset of available data and presents it to
end users providing those users with the ability to interpret and act on the presented
information.  These components may generate maps showing hot spots based on some aspect
of the measured data, charts and annotations of recent trends (e.g., current values
plus projections over time), or other visualizations.

In this guide, the Presentation component is implemented by the [Measure Consumer](actors.html#measure-consumer) actor.

### Adapters
Adapters bridge systems lacking certain capabilities with other systems requiring
those capabilities, much like a ground adapter does with two pronged electrical outlet.

In this guide, the Adapter component is implemented by the [Measure Intermediary](actors.html#measure-intermediary) actor.

### FHIR Server
Several off the shelf FHIR Server components exist, which can be stood up in a data center or in the cloud to provide functionality that supports the FHIR Project. HL7 offers a page filled with [Open Source FHIR Servers](https://wiki.hl7.org/Open_Source_FHIR_implementations) (and client) implementation software.

The figure below shows a FHIR Server acting as an Intermediary between a Hospital and Public Health

<div>
{%include FHIRServer.svg%}
</div>



However, a Hospital could simply configure its own FHIR Server, and Public Health could then pull the data they need from it.
<div>
{%include PublicHealthPullFromHospital.svg%}
</div>


Or, Public Health can configure its own FHIR Server, and a Hospital can push the data to it.
<div>
{%include HospitalPushToPublicHealth.svg%}
</div>


### External Storage
Deployments can also use external storage, for example a file system, message queue, network or cloud storage, SFTP, or even Direct Messaging
to exchange data.  In the figure below, a hospital pushes data to its own external storage, and public health pulls data from it.
<div>
{%include PublicHealthPullFromHospitalStorage.svg%}
</div>



But a hospital might as easily push data to public health's external storage system.

<div>
{%include HospitalPushToPublicHealthStorage.svg%}
</div>



### Deployment
System components are designed such that they can be individually deployed and configured.

The following diagrams depict several different deployments with different responsibilities owned by a Hospital or Public Health Agency

#### Hospital Supported Infrastructure

<div>
{%include HospitalPushToExternalStorageAdaptedToPullAPI-0.svg%}
</div>



#### Middle of the Road

<div>
{%include HospitalPushToExternalStorageAdaptedToPullAPI-1.svg%}
</div>



#### Public Health Supported Infrastructure

<div>
{%include HospitalPushToExternalStorageAdaptedToPullAPI-2.svg%}
</div>

