#!/usr/bin/ruby -w

# Webbernet examination
# By Bryce Woods

# ---------------------------------------------------------------------------
#
# Name: Validator
# Description: Handles the validation of various inputs.
#
# ---------------------------------------------------------------------------

class Validator


	def initialize()
		#puts "Debug: Validator Loaded..."
	end


	# ---------------------------------------------------
	#
	# Description: Tests if inputString contains only numbers.
	# Input_1: String that is to be tested
	# Return: boolean representing if inputString contains numbers.
	# 
	# ---------------------------------------------------
	def validInt(inputString)
		begin
			Integer(inputString)
			return true
		rescue
			return false
		end
	end
	
	# ---------------------------------------------------
	#
	# Description: Test if input matches a value in the validation array.
	# Input_1: String that is to be tested.
	# Input_2: Array of valid inputs.
	# Return: Boolean representing if inputString is found in the validInputsArray.
	# 
	# ---------------------------------------------------
	def validInput(inputString , validInputsArray)
	
		i = 0
		
		begin
			
			if validInputsArray[i] == inputString
				return true;
			end
			
			i += 1
			
		end until i > validInputsArray.length
		
		return false;
	
	end
	
end