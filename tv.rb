class Television
	attr_accessor:channel
	attr_accessor:volume
	attr_accessor:isMuted
	attr_accessor:isPowered

def initialize
	@channel=1
	@volume=1
	@isMuted=false
	@isPowered=true	
end

#---Channel Methods---
def channelUp
	if @isPowered==false
		puts "Please power on television before continuing"
		return
	end

	if @channel != 100
		@channel +=1
	else
		puts "Channel can not exceed 100"
	end
	return @channel
end

def channelDown
	if @isPowered==false
		puts "Please power on television before continuing"
		return
	end
	if @channel != 1
		@channel -=1
	else 
		puts "Channel cant be lower than 1"
	end
	return @channel
end

def changeChannel(val)
	if @isPowered==false
		puts "Please power on television before continuing"
		return
	end
	if val < 1 || val >100
		return "Channel can not be less than 1 or greater than 100"
	else
		@channel=val
	end
	return @channel
end

#---Volume Methods---
def volUp
	if @isPowered==false
		puts "Please power on television before continuing"
		return
	end
	if @isMuted == true
		@isMuted=false
		puts "Mute has been turned off."
	end

	if @volume != 32
		@volume +=1
	else
		puts "Volume can not exceed 32"
	end
	return @volume
end

def volDown
	if @isPowered==false
		puts "Please power on television before continuing"
		return
	end
	if @isMuted == true
		@isMuted=false
		puts "Mute has been turned off."
	end
	if @volume != 1
		@volume -=1
	else
		puts "Volume can not be lower than 1"
	end
	return @volume
end

#---Mute Methods---
def toggleMute
	if @isPowered==false
		puts "Please power on television before continuing"
		return
	end
	@isMuted= !@isMuted
	if @isMuted==true
		puts "TV has been muted"
	else
		puts "TV has been unmuted.  Current Volume is:"
		return @volume
	end
end

#--Power Methods--
def togglePower
	@isPowered=!@isPowered
	if @isPowered==true
		puts "Welcome Back!"
	else
		puts "Goodbye!"
	end
end

end