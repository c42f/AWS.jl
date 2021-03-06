# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: servicediscovery
using AWS.Compat
using AWS.UUIDs
"""
    CreateHttpNamespace()

Creates an HTTP namespace. Service instances that you register using an HTTP namespace can be discovered using a DiscoverInstances request but can't be discovered using DNS.  For the current quota on the number of namespaces that you can create using the same AWS account, see AWS Cloud Map quotas in the AWS Cloud Map Developer Guide.

# Required Parameters
- `Name`: The name that you want to assign to this namespace.

# Optional Parameters
- `CreatorRequestId`: A unique string that identifies the request and that allows failed CreateHttpNamespace requests to be retried without the risk of executing the operation twice. CreatorRequestId can be any unique string, for example, a date/time stamp.
- `Description`: A description for the namespace.
- `Tags`: The tags to add to the namespace. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
"""

create_http_namespace(Name; aws_config::AWSConfig=global_aws_config()) = servicediscovery("CreateHttpNamespace", Dict{String, Any}("Name"=>Name, "CreatorRequestId"=>string(uuid4())); aws_config=aws_config)
create_http_namespace(Name, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("CreateHttpNamespace", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "CreatorRequestId"=>string(uuid4())), args)); aws_config=aws_config)

"""
    CreatePrivateDnsNamespace()

Creates a private namespace based on DNS, which will be visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service will be backend.example.com. For the current quota on the number of namespaces that you can create using the same AWS account, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.

# Required Parameters
- `Name`: The name that you want to assign to this namespace. When you create a private DNS namespace, AWS Cloud Map automatically creates an Amazon Route 53 private hosted zone that has the same name as the namespace.
- `Vpc`: The ID of the Amazon VPC that you want to associate the namespace with.

# Optional Parameters
- `CreatorRequestId`: A unique string that identifies the request and that allows failed CreatePrivateDnsNamespace requests to be retried without the risk of executing the operation twice. CreatorRequestId can be any unique string, for example, a date/time stamp.
- `Description`: A description for the namespace.
- `Tags`: The tags to add to the namespace. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
"""

create_private_dns_namespace(Name, Vpc; aws_config::AWSConfig=global_aws_config()) = servicediscovery("CreatePrivateDnsNamespace", Dict{String, Any}("Name"=>Name, "Vpc"=>Vpc, "CreatorRequestId"=>string(uuid4())); aws_config=aws_config)
create_private_dns_namespace(Name, Vpc, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("CreatePrivateDnsNamespace", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "Vpc"=>Vpc, "CreatorRequestId"=>string(uuid4())), args)); aws_config=aws_config)

"""
    CreatePublicDnsNamespace()

Creates a public namespace based on DNS, which will be visible on the internet. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service will be backend.example.com. For the current quota on the number of namespaces that you can create using the same AWS account, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.

# Required Parameters
- `Name`: The name that you want to assign to this namespace.

# Optional Parameters
- `CreatorRequestId`: A unique string that identifies the request and that allows failed CreatePublicDnsNamespace requests to be retried without the risk of executing the operation twice. CreatorRequestId can be any unique string, for example, a date/time stamp.
- `Description`: A description for the namespace.
- `Tags`: The tags to add to the namespace. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
"""

create_public_dns_namespace(Name; aws_config::AWSConfig=global_aws_config()) = servicediscovery("CreatePublicDnsNamespace", Dict{String, Any}("Name"=>Name, "CreatorRequestId"=>string(uuid4())); aws_config=aws_config)
create_public_dns_namespace(Name, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("CreatePublicDnsNamespace", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "CreatorRequestId"=>string(uuid4())), args)); aws_config=aws_config)

"""
    CreateService()

Creates a service, which defines the configuration for the following entities:   For public and private DNS namespaces, one of the following combinations of DNS records in Amazon Route 53:    A     AAAA     A and AAAA     SRV     CNAME      Optionally, a health check   After you create the service, you can submit a RegisterInstance request, and AWS Cloud Map uses the values in the configuration to create the specified entities. For the current quota on the number of instances that you can register using the same namespace and using the same service, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.

# Required Parameters
- `Name`: The name that you want to assign to the service. If you want AWS Cloud Map to create an SRV record when you register an instance, and if you're using a system that requires a specific SRV format, such as HAProxy, specify the following for Name:   Start the name with an underscore (_), such as _exampleservice    End the name with ._protocol, such as ._tcp    When you register an instance, AWS Cloud Map creates an SRV record and assigns a name to the record by concatenating the service name and the namespace name, for example:  _exampleservice._tcp.example.com 

# Optional Parameters
- `CreatorRequestId`: A unique string that identifies the request and that allows failed CreateService requests to be retried without the risk of executing the operation twice. CreatorRequestId can be any unique string, for example, a date/time stamp.
- `Description`: A description for the service.
- `DnsConfig`: A complex type that contains information about the Amazon Route 53 records that you want AWS Cloud Map to create when you register an instance. 
- `HealthCheckConfig`:  Public DNS and HTTP namespaces only. A complex type that contains settings for an optional Route 53 health check. If you specify settings for a health check, AWS Cloud Map associates the health check with all the Route 53 DNS records that you specify in DnsConfig.  If you specify a health check configuration, you can specify either HealthCheckCustomConfig or HealthCheckConfig but not both.  For information about the charges for health checks, see AWS Cloud Map Pricing.
- `HealthCheckCustomConfig`: A complex type that contains information about an optional custom health check.  If you specify a health check configuration, you can specify either HealthCheckCustomConfig or HealthCheckConfig but not both.  You can't add, update, or delete a HealthCheckCustomConfig configuration from an existing service.
- `NamespaceId`: The ID of the namespace that you want to use to create the service.
- `Tags`: The tags to add to the service. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
"""

create_service(Name; aws_config::AWSConfig=global_aws_config()) = servicediscovery("CreateService", Dict{String, Any}("Name"=>Name, "CreatorRequestId"=>string(uuid4())); aws_config=aws_config)
create_service(Name, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("CreateService", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "CreatorRequestId"=>string(uuid4())), args)); aws_config=aws_config)

"""
    DeleteNamespace()

Deletes a namespace from the current account. If the namespace still contains one or more services, the request fails.

# Required Parameters
- `Id`: The ID of the namespace that you want to delete.

"""

delete_namespace(Id; aws_config::AWSConfig=global_aws_config()) = servicediscovery("DeleteNamespace", Dict{String, Any}("Id"=>Id); aws_config=aws_config)
delete_namespace(Id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("DeleteNamespace", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id), args)); aws_config=aws_config)

"""
    DeleteService()

Deletes a specified service. If the service still contains one or more registered instances, the request fails.

# Required Parameters
- `Id`: The ID of the service that you want to delete.

"""

delete_service(Id; aws_config::AWSConfig=global_aws_config()) = servicediscovery("DeleteService", Dict{String, Any}("Id"=>Id); aws_config=aws_config)
delete_service(Id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("DeleteService", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id), args)); aws_config=aws_config)

"""
    DeregisterInstance()

Deletes the Amazon Route 53 DNS records and health check, if any, that AWS Cloud Map created for the specified instance.

# Required Parameters
- `InstanceId`: The value that you specified for Id in the RegisterInstance request.
- `ServiceId`: The ID of the service that the instance is associated with.

"""

deregister_instance(InstanceId, ServiceId; aws_config::AWSConfig=global_aws_config()) = servicediscovery("DeregisterInstance", Dict{String, Any}("InstanceId"=>InstanceId, "ServiceId"=>ServiceId); aws_config=aws_config)
deregister_instance(InstanceId, ServiceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("DeregisterInstance", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceId"=>InstanceId, "ServiceId"=>ServiceId), args)); aws_config=aws_config)

"""
    DiscoverInstances()

Discovers registered instances for a specified namespace and service. You can use DiscoverInstances to discover instances for any type of namespace. For public and private DNS namespaces, you can also use DNS queries to discover instances.

# Required Parameters
- `NamespaceName`: The name of the namespace that you specified when you registered the instance.
- `ServiceName`: The name of the service that you specified when you registered the instance.

# Optional Parameters
- `HealthStatus`: The health status of the instances that you want to discover.
- `MaxResults`: The maximum number of instances that you want AWS Cloud Map to return in the response to a DiscoverInstances request. If you don't specify a value for MaxResults, AWS Cloud Map returns up to 100 instances.
- `OptionalParameters`: Opportunistic filters to scope the results based on custom attributes. If there are instances that match both the filters specified in both the QueryParameters parameter and this parameter, they are returned. Otherwise, these filters are ignored and only instances that match the filters specified in the QueryParameters parameter are returned.
- `QueryParameters`: Filters to scope the results based on custom attributes for the instance. For example, {version=v1, az=1a}. Only instances that match all the specified key-value pairs will be returned.
"""

discover_instances(NamespaceName, ServiceName; aws_config::AWSConfig=global_aws_config()) = servicediscovery("DiscoverInstances", Dict{String, Any}("NamespaceName"=>NamespaceName, "ServiceName"=>ServiceName); aws_config=aws_config)
discover_instances(NamespaceName, ServiceName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("DiscoverInstances", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("NamespaceName"=>NamespaceName, "ServiceName"=>ServiceName), args)); aws_config=aws_config)

"""
    GetInstance()

Gets information about a specified instance.

# Required Parameters
- `InstanceId`: The ID of the instance that you want to get information about.
- `ServiceId`: The ID of the service that the instance is associated with.

"""

get_instance(InstanceId, ServiceId; aws_config::AWSConfig=global_aws_config()) = servicediscovery("GetInstance", Dict{String, Any}("InstanceId"=>InstanceId, "ServiceId"=>ServiceId); aws_config=aws_config)
get_instance(InstanceId, ServiceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("GetInstance", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceId"=>InstanceId, "ServiceId"=>ServiceId), args)); aws_config=aws_config)

"""
    GetInstancesHealthStatus()

Gets the current health status (Healthy, Unhealthy, or Unknown) of one or more instances that are associated with a specified service.  There is a brief delay between when you register an instance and when the health status for the instance is available.  

# Required Parameters
- `ServiceId`: The ID of the service that the instance is associated with.

# Optional Parameters
- `Instances`: An array that contains the IDs of all the instances that you want to get the health status for. If you omit Instances, AWS Cloud Map returns the health status for all the instances that are associated with the specified service.  To get the IDs for the instances that you've registered by using a specified service, submit a ListInstances request. 
- `MaxResults`: The maximum number of instances that you want AWS Cloud Map to return in the response to a GetInstancesHealthStatus request. If you don't specify a value for MaxResults, AWS Cloud Map returns up to 100 instances.
- `NextToken`: For the first GetInstancesHealthStatus request, omit this value. If more than MaxResults instances match the specified criteria, you can submit another GetInstancesHealthStatus request to get the next group of results. Specify the value of NextToken from the previous response in the next request.
"""

get_instances_health_status(ServiceId; aws_config::AWSConfig=global_aws_config()) = servicediscovery("GetInstancesHealthStatus", Dict{String, Any}("ServiceId"=>ServiceId); aws_config=aws_config)
get_instances_health_status(ServiceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("GetInstancesHealthStatus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ServiceId"=>ServiceId), args)); aws_config=aws_config)

"""
    GetNamespace()

Gets information about a namespace.

# Required Parameters
- `Id`: The ID of the namespace that you want to get information about.

"""

get_namespace(Id; aws_config::AWSConfig=global_aws_config()) = servicediscovery("GetNamespace", Dict{String, Any}("Id"=>Id); aws_config=aws_config)
get_namespace(Id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("GetNamespace", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id), args)); aws_config=aws_config)

"""
    GetOperation()

Gets information about any operation that returns an operation ID in the response, such as a CreateService request.  To get a list of operations that match specified criteria, see ListOperations. 

# Required Parameters
- `OperationId`: The ID of the operation that you want to get more information about.

"""

get_operation(OperationId; aws_config::AWSConfig=global_aws_config()) = servicediscovery("GetOperation", Dict{String, Any}("OperationId"=>OperationId); aws_config=aws_config)
get_operation(OperationId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("GetOperation", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("OperationId"=>OperationId), args)); aws_config=aws_config)

"""
    GetService()

Gets the settings for a specified service.

# Required Parameters
- `Id`: The ID of the service that you want to get settings for.

"""

get_service(Id; aws_config::AWSConfig=global_aws_config()) = servicediscovery("GetService", Dict{String, Any}("Id"=>Id); aws_config=aws_config)
get_service(Id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("GetService", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id), args)); aws_config=aws_config)

"""
    ListInstances()

Lists summary information about the instances that you registered by using a specified service.

# Required Parameters
- `ServiceId`: The ID of the service that you want to list instances for.

# Optional Parameters
- `MaxResults`: The maximum number of instances that you want AWS Cloud Map to return in the response to a ListInstances request. If you don't specify a value for MaxResults, AWS Cloud Map returns up to 100 instances.
- `NextToken`: For the first ListInstances request, omit this value. If more than MaxResults instances match the specified criteria, you can submit another ListInstances request to get the next group of results. Specify the value of NextToken from the previous response in the next request.
"""

list_instances(ServiceId; aws_config::AWSConfig=global_aws_config()) = servicediscovery("ListInstances", Dict{String, Any}("ServiceId"=>ServiceId); aws_config=aws_config)
list_instances(ServiceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("ListInstances", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ServiceId"=>ServiceId), args)); aws_config=aws_config)

"""
    ListNamespaces()

Lists summary information about the namespaces that were created by the current AWS account.

# Optional Parameters
- `Filters`: A complex type that contains specifications for the namespaces that you want to list. If you specify more than one filter, a namespace must match all filters to be returned by ListNamespaces.
- `MaxResults`: The maximum number of namespaces that you want AWS Cloud Map to return in the response to a ListNamespaces request. If you don't specify a value for MaxResults, AWS Cloud Map returns up to 100 namespaces.
- `NextToken`: For the first ListNamespaces request, omit this value. If the response contains NextToken, submit another ListNamespaces request to get the next group of results. Specify the value of NextToken from the previous response in the next request.  AWS Cloud Map gets MaxResults namespaces and then filters them based on the specified criteria. It's possible that no namespaces in the first MaxResults namespaces matched the specified criteria but that subsequent groups of MaxResults namespaces do contain namespaces that match the criteria. 
"""

list_namespaces(; aws_config::AWSConfig=global_aws_config()) = servicediscovery("ListNamespaces"; aws_config=aws_config)
list_namespaces(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("ListNamespaces", args; aws_config=aws_config)

"""
    ListOperations()

Lists operations that match the criteria that you specify.

# Optional Parameters
- `Filters`: A complex type that contains specifications for the operations that you want to list, for example, operations that you started between a specified start date and end date. If you specify more than one filter, an operation must match all filters to be returned by ListOperations.
- `MaxResults`: The maximum number of items that you want AWS Cloud Map to return in the response to a ListOperations request. If you don't specify a value for MaxResults, AWS Cloud Map returns up to 100 operations.
- `NextToken`: For the first ListOperations request, omit this value. If the response contains NextToken, submit another ListOperations request to get the next group of results. Specify the value of NextToken from the previous response in the next request.  AWS Cloud Map gets MaxResults operations and then filters them based on the specified criteria. It's possible that no operations in the first MaxResults operations matched the specified criteria but that subsequent groups of MaxResults operations do contain operations that match the criteria. 
"""

list_operations(; aws_config::AWSConfig=global_aws_config()) = servicediscovery("ListOperations"; aws_config=aws_config)
list_operations(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("ListOperations", args; aws_config=aws_config)

"""
    ListServices()

Lists summary information for all the services that are associated with one or more specified namespaces.

# Optional Parameters
- `Filters`: A complex type that contains specifications for the namespaces that you want to list services for.  If you specify more than one filter, an operation must match all filters to be returned by ListServices.
- `MaxResults`: The maximum number of services that you want AWS Cloud Map to return in the response to a ListServices request. If you don't specify a value for MaxResults, AWS Cloud Map returns up to 100 services.
- `NextToken`: For the first ListServices request, omit this value. If the response contains NextToken, submit another ListServices request to get the next group of results. Specify the value of NextToken from the previous response in the next request.  AWS Cloud Map gets MaxResults services and then filters them based on the specified criteria. It's possible that no services in the first MaxResults services matched the specified criteria but that subsequent groups of MaxResults services do contain services that match the criteria. 
"""

list_services(; aws_config::AWSConfig=global_aws_config()) = servicediscovery("ListServices"; aws_config=aws_config)
list_services(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("ListServices", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists tags for the specified resource.

# Required Parameters
- `ResourceARN`: The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.

"""

list_tags_for_resource(ResourceARN; aws_config::AWSConfig=global_aws_config()) = servicediscovery("ListTagsForResource", Dict{String, Any}("ResourceARN"=>ResourceARN); aws_config=aws_config)
list_tags_for_resource(ResourceARN, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN), args)); aws_config=aws_config)

"""
    RegisterInstance()

Creates or updates one or more records and, optionally, creates a health check based on the settings in a specified service. When you submit a RegisterInstance request, the following occurs:   For each DNS record that you define in the service that is specified by ServiceId, a record is created or updated in the hosted zone that is associated with the corresponding namespace.   If the service includes HealthCheckConfig, a health check is created based on the settings in the health check configuration.   The health check, if any, is associated with each of the new or updated records.    One RegisterInstance request must complete before you can submit another request and specify the same service ID and instance ID.  For more information, see CreateService. When AWS Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:    If the health check is healthy: returns all the records    If the health check is unhealthy: returns the applicable value for the last healthy instance    If you didn't specify a health check configuration: returns all the records   For the current quota on the number of instances that you can register using the same namespace and using the same service, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.

# Required Parameters
- `Attributes`: A string map that contains the following information for the service that you specify in ServiceId:   The attributes that apply to the records that are defined in the service.    For each attribute, the applicable value.   Supported attribute keys include the following:  AWS_ALIAS_DNS_NAME  If you want AWS Cloud Map to create an Amazon Route 53 alias record that routes traffic to an Elastic Load Balancing load balancer, specify the DNS name that is associated with the load balancer. For information about how to get the DNS name, see \"DNSName\" in the topic AliasTarget in the Route 53 API Reference. Note the following:   The configuration for the service that is specified by ServiceId must include settings for an A record, an AAAA record, or both.   In the service that is specified by ServiceId, the value of RoutingPolicy must be WEIGHTED.   If the service that is specified by ServiceId includes HealthCheckConfig settings, AWS Cloud Map will create the Route 53 health check, but it won't associate the health check with the alias record.   Auto naming currently doesn't support creating alias records that route traffic to AWS resources other than Elastic Load Balancing load balancers.   If you specify a value for AWS_ALIAS_DNS_NAME, don't specify values for any of the AWS_INSTANCE attributes.    AWS_EC2_INSTANCE_ID   HTTP namespaces only. The Amazon EC2 instance ID for the instance. If the AWS_EC2_INSTANCE_ID attribute is specified, then the only other attribute that can be specified is AWS_INIT_HEALTH_STATUS. When the AWS_EC2_INSTANCE_ID attribute is specified, then the AWS_INSTANCE_IPV4 attribute will be filled out with the primary private IPv4 address.  AWS_INIT_HEALTH_STATUS  If the service configuration includes HealthCheckCustomConfig, you can optionally use AWS_INIT_HEALTH_STATUS to specify the initial status of the custom health check, HEALTHY or UNHEALTHY. If you don't specify a value for AWS_INIT_HEALTH_STATUS, the initial status is HEALTHY.  AWS_INSTANCE_CNAME  If the service configuration includes a CNAME record, the domain name that you want Route 53 to return in response to DNS queries, for example, example.com. This value is required if the service specified by ServiceId includes settings for an CNAME record.  AWS_INSTANCE_IPV4  If the service configuration includes an A record, the IPv4 address that you want Route 53 to return in response to DNS queries, for example, 192.0.2.44. This value is required if the service specified by ServiceId includes settings for an A record. If the service includes settings for an SRV record, you must specify a value for AWS_INSTANCE_IPV4, AWS_INSTANCE_IPV6, or both.  AWS_INSTANCE_IPV6  If the service configuration includes an AAAA record, the IPv6 address that you want Route 53 to return in response to DNS queries, for example, 2001:0db8:85a3:0000:0000:abcd:0001:2345. This value is required if the service specified by ServiceId includes settings for an AAAA record. If the service includes settings for an SRV record, you must specify a value for AWS_INSTANCE_IPV4, AWS_INSTANCE_IPV6, or both.  AWS_INSTANCE_PORT  If the service includes an SRV record, the value that you want Route 53 to return for the port. If the service includes HealthCheckConfig, the port on the endpoint that you want Route 53 to send requests to.  This value is required if you specified settings for an SRV record or a Route 53 health check when you created the service.  Custom attributes  You can add up to 30 custom attributes. For each key-value pair, the maximum length of the attribute name is 255 characters, and the maximum length of the attribute value is 1,024 characters. The total size of all provided attributes (sum of all keys and values) must not exceed 5,000 characters.
- `InstanceId`: An identifier that you want to associate with the instance. Note the following:   If the service that is specified by ServiceId includes settings for an SRV record, the value of InstanceId is automatically included as part of the value for the SRV record. For more information, see DnsRecord &gt; Type.   You can use this value to update an existing instance.   To register a new instance, you must specify a value that is unique among instances that you register by using the same service.    If you specify an existing InstanceId and ServiceId, AWS Cloud Map updates the existing DNS records, if any. If there's also an existing health check, AWS Cloud Map deletes the old health check and creates a new one.   The health check isn't deleted immediately, so it will still appear for a while if you submit a ListHealthChecks request, for example.   
- `ServiceId`: The ID of the service that you want to use for settings for the instance.

# Optional Parameters
- `CreatorRequestId`: A unique string that identifies the request and that allows failed RegisterInstance requests to be retried without the risk of executing the operation twice. You must use a unique CreatorRequestId string every time you submit a RegisterInstance request if you're registering additional instances for the same namespace and service. CreatorRequestId can be any unique string, for example, a date/time stamp.
"""

register_instance(Attributes, InstanceId, ServiceId; aws_config::AWSConfig=global_aws_config()) = servicediscovery("RegisterInstance", Dict{String, Any}("Attributes"=>Attributes, "InstanceId"=>InstanceId, "ServiceId"=>ServiceId, "CreatorRequestId"=>string(uuid4())); aws_config=aws_config)
register_instance(Attributes, InstanceId, ServiceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("RegisterInstance", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Attributes"=>Attributes, "InstanceId"=>InstanceId, "ServiceId"=>ServiceId, "CreatorRequestId"=>string(uuid4())), args)); aws_config=aws_config)

"""
    TagResource()

Adds one or more tags to the specified resource.

# Required Parameters
- `ResourceARN`: The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.
- `Tags`: The tags to add to the specified resource. Specifying the tag key is required. You can set the value of a tag to an empty string, but you can't set the value of a tag to null.

"""

tag_resource(ResourceARN, Tags; aws_config::AWSConfig=global_aws_config()) = servicediscovery("TagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags); aws_config=aws_config)
tag_resource(ResourceARN, Tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes one or more tags from the specified resource.

# Required Parameters
- `ResourceARN`: The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.
- `TagKeys`: The tag keys to remove from the specified resource.

"""

untag_resource(ResourceARN, TagKeys; aws_config::AWSConfig=global_aws_config()) = servicediscovery("UntagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys); aws_config=aws_config)
untag_resource(ResourceARN, TagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys), args)); aws_config=aws_config)

"""
    UpdateInstanceCustomHealthStatus()

Submits a request to change the health status of a custom health check to healthy or unhealthy. You can use UpdateInstanceCustomHealthStatus to change the status only for custom health checks, which you define using HealthCheckCustomConfig when you create a service. You can't use it to change the status for Route 53 health checks, which you define using HealthCheckConfig. For more information, see HealthCheckCustomConfig.

# Required Parameters
- `InstanceId`: The ID of the instance that you want to change the health status for.
- `ServiceId`: The ID of the service that includes the configuration for the custom health check that you want to change the status for.
- `Status`: The new status of the instance, HEALTHY or UNHEALTHY.

"""

update_instance_custom_health_status(InstanceId, ServiceId, Status; aws_config::AWSConfig=global_aws_config()) = servicediscovery("UpdateInstanceCustomHealthStatus", Dict{String, Any}("InstanceId"=>InstanceId, "ServiceId"=>ServiceId, "Status"=>Status); aws_config=aws_config)
update_instance_custom_health_status(InstanceId, ServiceId, Status, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("UpdateInstanceCustomHealthStatus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceId"=>InstanceId, "ServiceId"=>ServiceId, "Status"=>Status), args)); aws_config=aws_config)

"""
    UpdateService()

Submits a request to perform the following operations:   Update the TTL setting for existing DnsRecords configurations   Add, update, or delete HealthCheckConfig for a specified service  You can't add, update, or delete a HealthCheckCustomConfig configuration.    For public and private DNS namespaces, note the following:   If you omit any existing DnsRecords or HealthCheckConfig configurations from an UpdateService request, the configurations are deleted from the service.   If you omit an existing HealthCheckCustomConfig configuration from an UpdateService request, the configuration is not deleted from the service.   When you update settings for a service, AWS Cloud Map also updates the corresponding settings in all the records and health checks that were created by using the specified service.

# Required Parameters
- `Id`: The ID of the service that you want to update.
- `Service`: A complex type that contains the new settings for the service.

"""

update_service(Id, Service; aws_config::AWSConfig=global_aws_config()) = servicediscovery("UpdateService", Dict{String, Any}("Id"=>Id, "Service"=>Service); aws_config=aws_config)
update_service(Id, Service, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = servicediscovery("UpdateService", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id, "Service"=>Service), args)); aws_config=aws_config)
