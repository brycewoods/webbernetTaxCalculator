#!/usr/bin/ruby -w
load "console.rb"
load "taxProccessor.rb"

# Webbernet examination
# By Bryce Woods


# ---------------------------------------------------------------------------
#
# Name: TaxCalculator
# Description: This is used to communcate between the 'Console' and 
# 'TaxProcessor' object.
#
# ---------------------------------------------------------------------------
class TaxCalculator

	
	def initialize()
	
		#puts "Debug: Tax Calculator Loaded.."
		@@m_consoleObj = Console.new
		@@m_processorObj = TaxProcessor.new
		
	end

	
	# ---------------------------------------------------
	#
	# Description: Initiates the tax calculator process.
	# Input: none.
	# Return: none.
	# 
	# ---------------------------------------------------
	def begin()
	
		running = true
		validExitInputArray = ["Y\n" , "N\n"]
	
		@@m_consoleObj.showMessage("------------------------------------")
		@@m_consoleObj.showMessage("Welcome to the 'Ruby Tax Calculator'")
		@@m_consoleObj.showMessage("NOTE: This is a demo product only. Values shown may be wrong.")
		@@m_consoleObj.showMessage("------------------------------------")
		
		
		while(running)
		
			income = @@m_consoleObj.requestInputInteger("Please enter in your annual income:" ,
											"Must only include valid integers. E.g. 40000")
		
			@@m_consoleObj.showMessage("You are required to pay: $" + 
			String(@@m_processorObj.calculateTax(income)) + " in tax.")
			
			exitFlag = @@m_consoleObj.requestInputTestAgainst("Would you like to try another income [Y|N]" ,
													"Must enter in either 'Y' or 'N'" ,
													validExitInputArray )
			
			if exitFlag == "N\n"
				running = false
			end
	
		end
		
		@@m_consoleObj.showMessage("GoodBye!")
			
	end
	
end