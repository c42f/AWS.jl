# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: medialive
using AWS.Compat
using AWS.UUIDs
"""
    AcceptInputDeviceTransfer()

Accept an incoming input device transfer. The ownership of the device will transfer to your AWS account.

# Required Parameters
- `inputDeviceId`: The unique ID of the input device to accept. For example, hd-123456789abcdef.

"""

accept_input_device_transfer(inputDeviceId; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/inputDevices/$(inputDeviceId)/accept"; aws_config=aws_config)
accept_input_device_transfer(inputDeviceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/inputDevices/$(inputDeviceId)/accept", args; aws_config=aws_config)

"""
    BatchDelete()

Starts delete of resources.

# Optional Parameters
- `channelIds`: List of channel IDs
- `inputIds`: List of input IDs
- `inputSecurityGroupIds`: List of input security group IDs
- `multiplexIds`: List of multiplex IDs
"""

batch_delete(; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/batch/delete"; aws_config=aws_config)
batch_delete(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/batch/delete", args; aws_config=aws_config)

"""
    BatchStart()

Starts existing resources

# Optional Parameters
- `channelIds`: List of channel IDs
- `multiplexIds`: List of multiplex IDs
"""

batch_start(; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/batch/start"; aws_config=aws_config)
batch_start(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/batch/start", args; aws_config=aws_config)

"""
    BatchStop()

Stops running resources

# Optional Parameters
- `channelIds`: List of channel IDs
- `multiplexIds`: List of multiplex IDs
"""

batch_stop(; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/batch/stop"; aws_config=aws_config)
batch_stop(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/batch/stop", args; aws_config=aws_config)

"""
    BatchUpdateSchedule()

Update a channel schedule

# Required Parameters
- `channelId`: Id of the channel whose schedule is being updated.

# Optional Parameters
- `creates`: Schedule actions to create in the schedule.
- `deletes`: Schedule actions to delete from the schedule.
"""

batch_update_schedule(channelId; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/channels/$(channelId)/schedule"; aws_config=aws_config)
batch_update_schedule(channelId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/channels/$(channelId)/schedule", args; aws_config=aws_config)

"""
    CancelInputDeviceTransfer()

Cancel an input device transfer that you have requested.

# Required Parameters
- `inputDeviceId`: The unique ID of the input device to cancel. For example, hd-123456789abcdef.

"""

cancel_input_device_transfer(inputDeviceId; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/inputDevices/$(inputDeviceId)/cancel"; aws_config=aws_config)
cancel_input_device_transfer(inputDeviceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/inputDevices/$(inputDeviceId)/cancel", args; aws_config=aws_config)

"""
    CreateChannel()

Creates a new channel

# Optional Parameters
- `cdiInputSpecification`: Specification of CDI inputs for this channel
- `channelClass`: The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
- `destinations`: 
- `encoderSettings`: 
- `inputAttachments`: List of input attachments for channel.
- `inputSpecification`: Specification of network and file inputs for this channel
- `logLevel`: The log level to write to CloudWatch Logs.
- `name`: Name of channel.
- `requestId`: Unique request ID to be specified. This is needed to prevent retries from
creating multiple resources.

- `reserved`: Deprecated field that's only usable by whitelisted customers.
- `roleArn`: An optional Amazon Resource Name (ARN) of the role to assume when running the Channel.
- `tags`: A collection of key-value pairs.
"""

create_channel(; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/channels", Dict{String, Any}("requestId"=>string(uuid4())); aws_config=aws_config)
create_channel(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/channels", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("requestId"=>string(uuid4())), args)); aws_config=aws_config)

"""
    CreateInput()

Create an input

# Optional Parameters
- `destinations`: Destination settings for PUSH type inputs.
- `inputDevices`: Settings for the devices.
- `inputSecurityGroups`: A list of security groups referenced by IDs to attach to the input.
- `mediaConnectFlows`: A list of the MediaConnect Flows that you want to use in this input. You can specify as few as one
Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a
separate Availability Zone as this ensures your EML input is redundant to AZ issues.

- `name`: Name of the input.
- `requestId`: Unique identifier of the request to ensure the request is handled
exactly once in case of retries.

- `roleArn`: The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
- `sources`: The source URLs for a PULL-type input. Every PULL type input needs
exactly two source URLs for redundancy.
Only specify sources for PULL type Inputs. Leave Destinations empty.

- `tags`: A collection of key-value pairs.
- `type`: 
- `vpc`: 
"""

create_input(; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/inputs", Dict{String, Any}("requestId"=>string(uuid4())); aws_config=aws_config)
create_input(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/inputs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("requestId"=>string(uuid4())), args)); aws_config=aws_config)

"""
    CreateInputSecurityGroup()

Creates a Input Security Group

# Optional Parameters
- `tags`: A collection of key-value pairs.
- `whitelistRules`: List of IPv4 CIDR addresses to whitelist
"""

create_input_security_group(; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/inputSecurityGroups"; aws_config=aws_config)
create_input_security_group(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/inputSecurityGroups", args; aws_config=aws_config)

"""
    CreateMultiplex()

Create a new multiplex.

# Required Parameters
- `availabilityZones`: A list of availability zones for the multiplex. You must specify exactly two.
- `multiplexSettings`: Configuration for a multiplex event.
- `name`: Name of multiplex.
- `requestId`: Unique request ID. This prevents retries from creating multiple
resources.


# Optional Parameters
- `tags`: A collection of key-value pairs.
"""

create_multiplex(availabilityZones, multiplexSettings, name, requestId; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/multiplexes", Dict{String, Any}("availabilityZones"=>availabilityZones, "multiplexSettings"=>multiplexSettings, "name"=>name, "requestId"=>requestId); aws_config=aws_config)
create_multiplex(availabilityZones, multiplexSettings, name, requestId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/multiplexes", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("availabilityZones"=>availabilityZones, "multiplexSettings"=>multiplexSettings, "name"=>name, "requestId"=>requestId), args)); aws_config=aws_config)

"""
    CreateMultiplexProgram()

Create a new program in the multiplex.

# Required Parameters
- `multiplexId`: ID of the multiplex where the program is to be created.
- `multiplexProgramSettings`: The settings for this multiplex program.
- `programName`: Name of multiplex program.
- `requestId`: Unique request ID. This prevents retries from creating multiple
resources.


"""

create_multiplex_program(multiplexId, multiplexProgramSettings, programName, requestId; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/multiplexes/$(multiplexId)/programs", Dict{String, Any}("multiplexProgramSettings"=>multiplexProgramSettings, "programName"=>programName, "requestId"=>requestId); aws_config=aws_config)
create_multiplex_program(multiplexId, multiplexProgramSettings, programName, requestId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/multiplexes/$(multiplexId)/programs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("multiplexProgramSettings"=>multiplexProgramSettings, "programName"=>programName, "requestId"=>requestId), args)); aws_config=aws_config)

"""
    CreateTags()

Create tags for a resource

# Required Parameters
- `resource-arn`: 

# Optional Parameters
- `tags`: 
"""

create_tags(resource_arn; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/tags/$(resource-arn)"; aws_config=aws_config)
create_tags(resource_arn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/tags/$(resource-arn)", args; aws_config=aws_config)

"""
    DeleteChannel()

Starts deletion of channel. The associated outputs are also deleted.

# Required Parameters
- `channelId`: Unique ID of the channel.

"""

delete_channel(channelId; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/channels/$(channelId)"; aws_config=aws_config)
delete_channel(channelId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/channels/$(channelId)", args; aws_config=aws_config)

"""
    DeleteInput()

Deletes the input end point

# Required Parameters
- `inputId`: Unique ID of the input

"""

delete_input(inputId; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/inputs/$(inputId)"; aws_config=aws_config)
delete_input(inputId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/inputs/$(inputId)", args; aws_config=aws_config)

"""
    DeleteInputSecurityGroup()

Deletes an Input Security Group

# Required Parameters
- `inputSecurityGroupId`: The Input Security Group to delete

"""

delete_input_security_group(inputSecurityGroupId; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/inputSecurityGroups/$(inputSecurityGroupId)"; aws_config=aws_config)
delete_input_security_group(inputSecurityGroupId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/inputSecurityGroups/$(inputSecurityGroupId)", args; aws_config=aws_config)

"""
    DeleteMultiplex()

Delete a multiplex. The multiplex must be idle.

# Required Parameters
- `multiplexId`: The ID of the multiplex.

"""

delete_multiplex(multiplexId; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/multiplexes/$(multiplexId)"; aws_config=aws_config)
delete_multiplex(multiplexId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/multiplexes/$(multiplexId)", args; aws_config=aws_config)

"""
    DeleteMultiplexProgram()

Delete a program from a multiplex.

# Required Parameters
- `multiplexId`: The ID of the multiplex that the program belongs to.
- `programName`: The multiplex program name.

"""

delete_multiplex_program(multiplexId, programName; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/multiplexes/$(multiplexId)/programs/$(programName)"; aws_config=aws_config)
delete_multiplex_program(multiplexId, programName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/multiplexes/$(multiplexId)/programs/$(programName)", args; aws_config=aws_config)

"""
    DeleteReservation()

Delete an expired reservation.

# Required Parameters
- `reservationId`: Unique reservation ID, e.g. '1234567'

"""

delete_reservation(reservationId; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/reservations/$(reservationId)"; aws_config=aws_config)
delete_reservation(reservationId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/reservations/$(reservationId)", args; aws_config=aws_config)

"""
    DeleteSchedule()

Delete all schedule actions on a channel.

# Required Parameters
- `channelId`: Id of the channel whose schedule is being deleted.

"""

delete_schedule(channelId; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/channels/$(channelId)/schedule"; aws_config=aws_config)
delete_schedule(channelId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/channels/$(channelId)/schedule", args; aws_config=aws_config)

"""
    DeleteTags()

Removes tags for a resource

# Required Parameters
- `resource-arn`: 
- `tagKeys`: An array of tag keys to delete

"""

delete_tags(resource_arn, tagKeys; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/tags/$(resource-arn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
delete_tags(resource_arn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("DELETE", "/prod/tags/$(resource-arn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    DescribeChannel()

Gets details about a channel

# Required Parameters
- `channelId`: channel ID

"""

describe_channel(channelId; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/channels/$(channelId)"; aws_config=aws_config)
describe_channel(channelId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/channels/$(channelId)", args; aws_config=aws_config)

"""
    DescribeInput()

Produces details about an input

# Required Parameters
- `inputId`: Unique ID of the input

"""

describe_input(inputId; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputs/$(inputId)"; aws_config=aws_config)
describe_input(inputId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputs/$(inputId)", args; aws_config=aws_config)

"""
    DescribeInputDevice()

Gets the details for the input device

# Required Parameters
- `inputDeviceId`: The unique ID of this input device. For example, hd-123456789abcdef.

"""

describe_input_device(inputDeviceId; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputDevices/$(inputDeviceId)"; aws_config=aws_config)
describe_input_device(inputDeviceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputDevices/$(inputDeviceId)", args; aws_config=aws_config)

"""
    DescribeInputDeviceThumbnail()

Get the latest thumbnail data for the input device.

# Required Parameters
- `accept`: The HTTP Accept header. Indicates the requested type for the thumbnail.
- `inputDeviceId`: The unique ID of this input device. For example, hd-123456789abcdef.

"""

describe_input_device_thumbnail(accept, inputDeviceId; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputDevices/$(inputDeviceId)/thumbnailData", Dict{String, Any}("headers"=>Dict{String, Any}("accept"=>accept)); aws_config=aws_config)
describe_input_device_thumbnail(accept, inputDeviceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputDevices/$(inputDeviceId)/thumbnailData", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("headers"=>Dict{String, Any}("accept"=>accept)), args)); aws_config=aws_config)

"""
    DescribeInputSecurityGroup()

Produces a summary of an Input Security Group

# Required Parameters
- `inputSecurityGroupId`: The id of the Input Security Group to describe

"""

describe_input_security_group(inputSecurityGroupId; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputSecurityGroups/$(inputSecurityGroupId)"; aws_config=aws_config)
describe_input_security_group(inputSecurityGroupId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputSecurityGroups/$(inputSecurityGroupId)", args; aws_config=aws_config)

"""
    DescribeMultiplex()

Gets details about a multiplex.

# Required Parameters
- `multiplexId`: The ID of the multiplex.

"""

describe_multiplex(multiplexId; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/multiplexes/$(multiplexId)"; aws_config=aws_config)
describe_multiplex(multiplexId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/multiplexes/$(multiplexId)", args; aws_config=aws_config)

"""
    DescribeMultiplexProgram()

Get the details for a program in a multiplex.

# Required Parameters
- `multiplexId`: The ID of the multiplex that the program belongs to.
- `programName`: The name of the program.

"""

describe_multiplex_program(multiplexId, programName; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/multiplexes/$(multiplexId)/programs/$(programName)"; aws_config=aws_config)
describe_multiplex_program(multiplexId, programName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/multiplexes/$(multiplexId)/programs/$(programName)", args; aws_config=aws_config)

"""
    DescribeOffering()

Get details for an offering.

# Required Parameters
- `offeringId`: Unique offering ID, e.g. '87654321'

"""

describe_offering(offeringId; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/offerings/$(offeringId)"; aws_config=aws_config)
describe_offering(offeringId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/offerings/$(offeringId)", args; aws_config=aws_config)

"""
    DescribeReservation()

Get details for a reservation.

# Required Parameters
- `reservationId`: Unique reservation ID, e.g. '1234567'

"""

describe_reservation(reservationId; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/reservations/$(reservationId)"; aws_config=aws_config)
describe_reservation(reservationId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/reservations/$(reservationId)", args; aws_config=aws_config)

"""
    DescribeSchedule()

Get a channel schedule

# Required Parameters
- `channelId`: Id of the channel whose schedule is being updated.

# Optional Parameters
- `maxResults`: 
- `nextToken`: 
"""

describe_schedule(channelId; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/channels/$(channelId)/schedule"; aws_config=aws_config)
describe_schedule(channelId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/channels/$(channelId)/schedule", args; aws_config=aws_config)

"""
    ListChannels()

Produces list of channels that have been created

# Optional Parameters
- `maxResults`: 
- `nextToken`: 
"""

list_channels(; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/channels"; aws_config=aws_config)
list_channels(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/channels", args; aws_config=aws_config)

"""
    ListInputDeviceTransfers()

List input devices that are currently being transferred. List input devices that you are transferring from your AWS account or input devices that another AWS account is transferring to you.

# Required Parameters
- `transferType`: 

# Optional Parameters
- `maxResults`: 
- `nextToken`: 
"""

list_input_device_transfers(transferType; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputDeviceTransfers", Dict{String, Any}("transferType"=>transferType); aws_config=aws_config)
list_input_device_transfers(transferType, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputDeviceTransfers", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("transferType"=>transferType), args)); aws_config=aws_config)

"""
    ListInputDevices()

List input devices

# Optional Parameters
- `maxResults`: 
- `nextToken`: 
"""

list_input_devices(; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputDevices"; aws_config=aws_config)
list_input_devices(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputDevices", args; aws_config=aws_config)

"""
    ListInputSecurityGroups()

Produces a list of Input Security Groups for an account

# Optional Parameters
- `maxResults`: 
- `nextToken`: 
"""

list_input_security_groups(; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputSecurityGroups"; aws_config=aws_config)
list_input_security_groups(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputSecurityGroups", args; aws_config=aws_config)

"""
    ListInputs()

Produces list of inputs that have been created

# Optional Parameters
- `maxResults`: 
- `nextToken`: 
"""

list_inputs(; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputs"; aws_config=aws_config)
list_inputs(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/inputs", args; aws_config=aws_config)

"""
    ListMultiplexPrograms()

List the programs that currently exist for a specific multiplex.

# Required Parameters
- `multiplexId`: The ID of the multiplex that the programs belong to.

# Optional Parameters
- `maxResults`: The maximum number of items to return.
- `nextToken`: The token to retrieve the next page of results.
"""

list_multiplex_programs(multiplexId; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/multiplexes/$(multiplexId)/programs"; aws_config=aws_config)
list_multiplex_programs(multiplexId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/multiplexes/$(multiplexId)/programs", args; aws_config=aws_config)

"""
    ListMultiplexes()

Retrieve a list of the existing multiplexes.

# Optional Parameters
- `maxResults`: The maximum number of items to return.
- `nextToken`: The token to retrieve the next page of results.
"""

list_multiplexes(; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/multiplexes"; aws_config=aws_config)
list_multiplexes(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/multiplexes", args; aws_config=aws_config)

"""
    ListOfferings()

List offerings available for purchase.

# Optional Parameters
- `channelClass`: Filter by channel class, 'STANDARD' or 'SINGLE_PIPELINE'

- `channelConfiguration`: Filter to offerings that match the configuration of an existing channel, e.g. '2345678' (a channel ID)

- `codec`: Filter by codec, 'AVC', 'HEVC', 'MPEG2', 'AUDIO', or 'LINK'
- `duration`: Filter by offering duration, e.g. '12'
- `maxResults`: 
- `maximumBitrate`: Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'

- `maximumFramerate`: Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
- `nextToken`: 
- `resolution`: Filter by resolution, 'SD', 'HD', 'FHD', or 'UHD'
- `resourceType`: Filter by resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
- `specialFeature`: Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'

- `videoQuality`: Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'

"""

list_offerings(; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/offerings"; aws_config=aws_config)
list_offerings(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/offerings", args; aws_config=aws_config)

"""
    ListReservations()

List purchased reservations.

# Optional Parameters
- `channelClass`: Filter by channel class, 'STANDARD' or 'SINGLE_PIPELINE'

- `codec`: Filter by codec, 'AVC', 'HEVC', 'MPEG2', 'AUDIO', or 'LINK'
- `maxResults`: 
- `maximumBitrate`: Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'

- `maximumFramerate`: Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
- `nextToken`: 
- `resolution`: Filter by resolution, 'SD', 'HD', 'FHD', or 'UHD'
- `resourceType`: Filter by resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
- `specialFeature`: Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'

- `videoQuality`: Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'

"""

list_reservations(; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/reservations"; aws_config=aws_config)
list_reservations(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/reservations", args; aws_config=aws_config)

"""
    ListTagsForResource()

Produces list of tags that have been created for a resource

# Required Parameters
- `resource-arn`: 

"""

list_tags_for_resource(resource_arn; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/tags/$(resource-arn)"; aws_config=aws_config)
list_tags_for_resource(resource_arn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("GET", "/prod/tags/$(resource-arn)", args; aws_config=aws_config)

"""
    PurchaseOffering()

Purchase an offering and create a reservation.

# Required Parameters
- `count`: Number of resources
- `offeringId`: Offering to purchase, e.g. '87654321'

# Optional Parameters
- `name`: Name for the new reservation
- `requestId`: Unique request ID to be specified. This is needed to prevent retries from creating multiple resources.
- `start`: Requested reservation start time (UTC) in ISO-8601 format. The specified time must be between the first day of the current month and one year from now. If no value is given, the default is now.
- `tags`: A collection of key-value pairs
"""

purchase_offering(count, offeringId; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/offerings/$(offeringId)/purchase", Dict{String, Any}("count"=>count, "requestId"=>string(uuid4())); aws_config=aws_config)
purchase_offering(count, offeringId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/offerings/$(offeringId)/purchase", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("count"=>count, "requestId"=>string(uuid4())), args)); aws_config=aws_config)

"""
    RejectInputDeviceTransfer()

Reject the transfer of the specified input device to your AWS account.

# Required Parameters
- `inputDeviceId`: The unique ID of the input device to reject. For example, hd-123456789abcdef.

"""

reject_input_device_transfer(inputDeviceId; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/inputDevices/$(inputDeviceId)/reject"; aws_config=aws_config)
reject_input_device_transfer(inputDeviceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/inputDevices/$(inputDeviceId)/reject", args; aws_config=aws_config)

"""
    StartChannel()

Starts an existing channel

# Required Parameters
- `channelId`: A request to start a channel

"""

start_channel(channelId; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/channels/$(channelId)/start"; aws_config=aws_config)
start_channel(channelId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/channels/$(channelId)/start", args; aws_config=aws_config)

"""
    StartMultiplex()

Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.

# Required Parameters
- `multiplexId`: The ID of the multiplex.

"""

start_multiplex(multiplexId; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/multiplexes/$(multiplexId)/start"; aws_config=aws_config)
start_multiplex(multiplexId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/multiplexes/$(multiplexId)/start", args; aws_config=aws_config)

"""
    StopChannel()

Stops a running channel

# Required Parameters
- `channelId`: A request to stop a running channel

"""

stop_channel(channelId; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/channels/$(channelId)/stop"; aws_config=aws_config)
stop_channel(channelId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/channels/$(channelId)/stop", args; aws_config=aws_config)

"""
    StopMultiplex()

Stops a running multiplex. If the multiplex isn't running, this action has no effect.

# Required Parameters
- `multiplexId`: The ID of the multiplex.

"""

stop_multiplex(multiplexId; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/multiplexes/$(multiplexId)/stop"; aws_config=aws_config)
stop_multiplex(multiplexId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/multiplexes/$(multiplexId)/stop", args; aws_config=aws_config)

"""
    TransferInputDevice()

Start an input device transfer to another AWS account. After you make the request, the other account must accept or reject the transfer.

# Required Parameters
- `inputDeviceId`: The unique ID of this input device. For example, hd-123456789abcdef.

# Optional Parameters
- `targetCustomerId`: The AWS account ID (12 digits) for the recipient of the device transfer.
- `transferMessage`: An optional message for the recipient. Maximum 280 characters.
"""

transfer_input_device(inputDeviceId; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/inputDevices/$(inputDeviceId)/transfer"; aws_config=aws_config)
transfer_input_device(inputDeviceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("POST", "/prod/inputDevices/$(inputDeviceId)/transfer", args; aws_config=aws_config)

"""
    UpdateChannel()

Updates a channel.

# Required Parameters
- `channelId`: channel ID

# Optional Parameters
- `cdiInputSpecification`: Specification of CDI inputs for this channel
- `destinations`: A list of output destinations for this channel.
- `encoderSettings`: The encoder settings for this channel.
- `inputAttachments`: 
- `inputSpecification`: Specification of network and file inputs for this channel
- `logLevel`: The log level to write to CloudWatch Logs.
- `name`: The name of the channel.
- `roleArn`: An optional Amazon Resource Name (ARN) of the role to assume when running the Channel. If you do not specify this on an update call but the role was previously set that role will be removed.
"""

update_channel(channelId; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/channels/$(channelId)"; aws_config=aws_config)
update_channel(channelId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/channels/$(channelId)", args; aws_config=aws_config)

"""
    UpdateChannelClass()

Changes the class of the channel.

# Required Parameters
- `channelClass`: The channel class that you wish to update this channel to use.
- `channelId`: Channel Id of the channel whose class should be updated.

# Optional Parameters
- `destinations`: A list of output destinations for this channel.
"""

update_channel_class(channelClass, channelId; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/channels/$(channelId)/channelClass", Dict{String, Any}("channelClass"=>channelClass); aws_config=aws_config)
update_channel_class(channelClass, channelId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/channels/$(channelId)/channelClass", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("channelClass"=>channelClass), args)); aws_config=aws_config)

"""
    UpdateInput()

Updates an input.

# Required Parameters
- `inputId`: Unique ID of the input.

# Optional Parameters
- `destinations`: Destination settings for PUSH type inputs.
- `inputDevices`: Settings for the devices.
- `inputSecurityGroups`: A list of security groups referenced by IDs to attach to the input.
- `mediaConnectFlows`: A list of the MediaConnect Flow ARNs that you want to use as the source of the input. You can specify as few as one
Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a
separate Availability Zone as this ensures your EML input is redundant to AZ issues.

- `name`: Name of the input.
- `roleArn`: The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
- `sources`: The source URLs for a PULL-type input. Every PULL type input needs
exactly two source URLs for redundancy.
Only specify sources for PULL type Inputs. Leave Destinations empty.

"""

update_input(inputId; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/inputs/$(inputId)"; aws_config=aws_config)
update_input(inputId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/inputs/$(inputId)", args; aws_config=aws_config)

"""
    UpdateInputDevice()

Updates the parameters for the input device.

# Required Parameters
- `inputDeviceId`: The unique ID of the input device. For example, hd-123456789abcdef.

# Optional Parameters
- `hdDeviceSettings`: The settings that you want to apply to the input device.
- `name`: The name that you assigned to this input device (not the unique ID).
"""

update_input_device(inputDeviceId; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/inputDevices/$(inputDeviceId)"; aws_config=aws_config)
update_input_device(inputDeviceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/inputDevices/$(inputDeviceId)", args; aws_config=aws_config)

"""
    UpdateInputSecurityGroup()

Update an Input Security Group's Whilelists.

# Required Parameters
- `inputSecurityGroupId`: The id of the Input Security Group to update.

# Optional Parameters
- `tags`: A collection of key-value pairs.
- `whitelistRules`: List of IPv4 CIDR addresses to whitelist
"""

update_input_security_group(inputSecurityGroupId; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/inputSecurityGroups/$(inputSecurityGroupId)"; aws_config=aws_config)
update_input_security_group(inputSecurityGroupId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/inputSecurityGroups/$(inputSecurityGroupId)", args; aws_config=aws_config)

"""
    UpdateMultiplex()

Updates a multiplex.

# Required Parameters
- `multiplexId`: ID of the multiplex to update.

# Optional Parameters
- `multiplexSettings`: The new settings for a multiplex.
- `name`: Name of the multiplex.
"""

update_multiplex(multiplexId; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/multiplexes/$(multiplexId)"; aws_config=aws_config)
update_multiplex(multiplexId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/multiplexes/$(multiplexId)", args; aws_config=aws_config)

"""
    UpdateMultiplexProgram()

Update a program in a multiplex.

# Required Parameters
- `multiplexId`: The ID of the multiplex of the program to update.
- `programName`: The name of the program to update.

# Optional Parameters
- `multiplexProgramSettings`: The new settings for a multiplex program.
"""

update_multiplex_program(multiplexId, programName; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/multiplexes/$(multiplexId)/programs/$(programName)"; aws_config=aws_config)
update_multiplex_program(multiplexId, programName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/multiplexes/$(multiplexId)/programs/$(programName)", args; aws_config=aws_config)

"""
    UpdateReservation()

Update reservation.

# Required Parameters
- `reservationId`: Unique reservation ID, e.g. '1234567'

# Optional Parameters
- `name`: Name of the reservation
"""

update_reservation(reservationId; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/reservations/$(reservationId)"; aws_config=aws_config)
update_reservation(reservationId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = medialive("PUT", "/prod/reservations/$(reservationId)", args; aws_config=aws_config)
