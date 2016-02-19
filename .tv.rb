class Television
attr_accessor: channel
attr_accessor: volume
attr_accessor: IsMuted
attr_accessor: IsPowered

def initialize
	@channel=1
@volume=1
@IsMuted=false
@IsPowered=true
end

def channelUp
if @channel !== 100
	@channel+=1
	puts @channel
end