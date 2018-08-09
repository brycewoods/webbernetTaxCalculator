#!/usr/bin/ruby -w

# Webbernet examination
# By Bryce Woods

load "validator.rb"

# ---------------------------------------------------------------------------
#
# Name: Console
# Description: Outputs and returns information from the user.
#
# ---------------------------------------------------------------------------

class Console

	def initialize()
		#puts "Console Object Loaded.."
		@@validator = Validator.new
	end

	# ---------------------------------------------------
	#
	# Description: Outputs the msg to the user.
	# Input_1: Message to be shown.
	# Return: none.
	# 
	# ---------------------------------------------------
	def showMessage(msg)
		puts msg
	end
	
	# ---------------------------------------------------
	#
	# Description: Requests input from the user based on the input message.
	# Input_1: Request message
	# Return: String representing the users response.
	# 
	# ---------------------------------------------------
	def requestInput(requestMsg)
		showMessage(requestMsg)
		response = getInput
		return response
	end
	
	
	# ---------------------------------------------------
	#
	# Description: Requests input from the user. Must be an integer
	# Input_1: Request message
	# Return: Integer representing the users response.
	# 
	# ---------------------------------------------------
	def requestInputInteger(requestMsg , errorMessage)
		
		# request input
		# If input fails to hold only valid integers, keep requesting.
		showMessage(requestMsg)
		response = getInput
		
		while(!@@validator.validInt(response))
			showMessage(errorMessage)
			showMessage(requestMsg)
			response = getInput
		end
		
		return Integer(response)
		
	end
	
	# ---------------------------------------------------
	#
	# Description: Requests input from the user. Input must one of the inputs in the array.
	# Input_1: Request message
	# Input_2: Error messahe
	# Input_3: Array of valid inputs.
	# Return: String response from user.
	# 
	# ---------------------------------------------------
	
	def requestInputTestAgainst(requestMsg , errorMessage,validInputArray)
	
		showMessage(requestMsg)
		response = getInput
		
		while(!@@validator.validInput(response,validInputArray))
			showMessage(errorMessage)
			showMessage(requestMsg)
			response = getInput
		end
		
		return response
	end
	
	private
	
	# ---------------------------------------------------
	#
	# Description: Gets input from the user.
	# Input: none
	# Return: String representing the users response.
	# 
	# ---------------------------------------------------
	def getInput
		return gets
	end
	
	

end