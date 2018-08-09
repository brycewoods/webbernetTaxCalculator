#!/usr/bin/ruby -w
load 'taxCalculator.rb'


# Webbernet examination
# By Bryce Woods


# ---------------------------------------------------------------------------
#
# Name: Main
# Description: Script that starts the tax calculator
#
# ---------------------------------------------------------------------------

begin

	calculator = TaxCalculator.new
	
	calculator.begin
	
rescue Exception => error
	puts error
end

gets

