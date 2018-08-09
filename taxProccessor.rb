#!/usr/bin/ruby -w


# Webbernet examination
# By Bryce Woods


# ---------------------------------------------------------------------------
#
# Name: TaxProcessor
# Description: Handles the calulations regarding tax.
#
# ---------------------------------------------------------------------------

class TaxProcessor

	def initialize()
		#puts "Debug: Tax Proccessor Loaded..."
	end
	
	# ---------------------------------------------------
	#
	# Description: Calculates the amount of tax that needs to be paid based on income.
	# Input_1: Integer representing the users income
	# Return: Integer representing the amount of tax the user will have to pay.
	# 
	# ---------------------------------------------------
	def calculateTax(income)
	
		tax = 0
		
		leftOver = income - 18201
		
		if leftOver <= 0
			return tax;
		end
		
		leftOver -= 18799
		
		if leftOver < 0
			leftOver += 18799
			tax += calculateTaxBracket(0 ,0.19, leftOver)
			return tax
		end
			
		tax += calculateTaxBracket(0 ,0.19, leftOver)
		
		leftOver -= 49999
		
		if leftOver < 0
			leftOver += 49999
			tax += calculateTaxBracket(3572 ,0.32, leftOver)
			return tax
		end
		
		leftOver -= 92999
		
		if leftOver < 0
			leftOver += 92999
			tax += calculateTaxBracket(19822 ,0.32, leftOver)
			return tax
		end
		
		tax += calculateTaxBracket(54232,0.45, leftOver)
			
		return tax
	
	end
	
	private
	
	def calculateTaxBracket(intialTax , taxPerDollar, amountToTax)
		tax = intialTax + (taxPerDollar * amountToTax)
		return tax
	end
	
end