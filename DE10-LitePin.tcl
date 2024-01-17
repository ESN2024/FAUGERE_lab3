;# look in my book(s) or www.amos.eguru-il.com
;###########################################################
;# A template script for the assigning the DE10_LITE board #
;# Choosing: device, pins, and making design safer !       #
;# Written by: Amos Zaslavsky (C)copyright - Ver 3.0       #
;###########################################################
puts \n
if {![is_project_open]} {
   puts "========================================"
   puts " ERROR: Assignments can not be done,    "
   puts " because there isn't any project open ! "
   puts "========================================"		
   } else {	     
   puts "================================="
   puts " Assigning the DE1 device & pins "
   puts " ...                             "    
   
   ;################################
   ;# First Clock Signal of 50 MHz #
   ;################################

#   I/O standards   
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLK
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLK1   
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to MAX10_CLK1_50

#   *** Pin Assignment ***    
#   set_location_assignment PIN_P11 -to CLK            ;# CLK
#   set_location_assignment PIN_P11 -to CLK1           ;# CLK1 
#   set_location_assignment PIN_P11 -to MAX10_CLK1_50  ;# MAX10_CLK1_50

   
   ;#################################
   ;# Second Clock Signal of 50 MHz #
   ;#################################
   
   
#   I/O standards   
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to MAX10_CLK2_50   

#   *** Pin Assignment ***    
#   set_location_assignment PIN_N14 -to MAX10_CLK2_50  ;# MAX10_CLK2_50

   ;################################
   ;# Third Clock Signal of 10 MHz #
   ;################################

#   I/O standards   
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_CLK_10   

#   *** Pin Assignment ***    
#   set_location_assignment PIN_N5  -to ADC_CLK_10     ;# ADC_CLK_10


   ;########################################################
   ;# Debounced Push-Buttons Active-Low ('0' when pressed) #
   ;########################################################

#   I/O standards      
#   set_instance_assignment -name IO_STANDARD "3.3 V Schmitt Trigger" -to KEY[0]
#   set_instance_assignment -name IO_STANDARD "3.3 V Schmitt Trigger" -to KEY[1]

#   *** Pin Assignment ***    
#   set_location_assignment PIN_B8 -to KEY[0]  ;# KEY[0]
#   set_location_assignment PIN_A7 -to KEY[1]  ;# KEY[1]


   ;################################
   ;# Slide Switches ('1' when up) #
   ;################################

#   I/O standards      
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[0]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[1]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[2]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[3]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[4]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[5]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[6]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[7]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[8]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[9]

#   *** Pin Assignment ***          
#   set_location_assignment PIN_C10 -to SW[0]  ;# SW[0]
#   set_location_assignment PIN_C11 -to SW[1]  ;# SW[1]
#   set_location_assignment PIN_D12 -to SW[2]  ;# SW[2]
#   set_location_assignment PIN_C12 -to SW[3]  ;# SW[3]
#   set_location_assignment PIN_A12 -to SW[4]  ;# SW[4]
#   set_location_assignment PIN_B12 -to SW[5]  ;# SW[5]
#   set_location_assignment PIN_A13 -to SW[6]  ;# SW[6]
#   set_location_assignment PIN_A14 -to SW[7]  ;# SW[7]
#   set_location_assignment PIN_B14 -to SW[8]  ;# SW[8]
#   set_location_assignment PIN_F15 -to SW[9]  ;# SW[9]


   ;#############################################
   ;# 10 Green LEDs Active-High (Glow when '1') #
   ;#############################################

#   I/O standards      
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[0]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[1]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[2]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[3]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[4]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[5]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[6]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[7]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[8]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[9]

#   *** Pin Assignment ***    
#   set_location_assignment PIN_A8  -to LEDR[0]  ;# LEDR[0]
#   set_location_assignment PIN_A9  -to LEDR[1]  ;# LEDR[1]
#   set_location_assignment PIN_A10 -to LEDR[2]  ;# LEDR[2]
#   set_location_assignment PIN_B10 -to LEDR[3]  ;# LEDR[3]
#   set_location_assignment PIN_D13 -to LEDR[4]  ;# LEDR[4]
#   set_location_assignment PIN_C13 -to LEDR[5]  ;# LEDR[5]
#   set_location_assignment PIN_E14 -to LEDR[6]  ;# LEDR[6]
#   set_location_assignment PIN_D14 -to LEDR[7]  ;# LEDR[7]
#   set_location_assignment PIN_A11 -to LEDR[8]  ;# LEDR[8]
#   set_location_assignment PIN_B11 -to LEDR[9]  ;# LEDR[9]

   ;###############################
   ;# 7 * Seven Segments          #
   ;# a=6 b=5 c=4 d=3 e=2 f=1 g=0 #
   ;# DP is connected !!!!        #
   ;# Active low (ON when '0')    #
   ;###############################


#   I/O standards      
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DP[0]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DP[1]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DP[2]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DP[3]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DP[4]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DP[5]

#   *** Pin Assignment ***    
#   set_location_assignment PIN_D15 -to dp[0]  ;# DP[0]
#   set_location_assignment PIN_A16 -to dp[1]  ;# DP[1]
#   set_location_assignment PIN_A19 -to dp[2]  ;# DP[2]
#   set_location_assignment PIN_D22 -to dp[3]  ;# DP[3]
#   set_location_assignment PIN_F17 -to dp[4]  ;# DP[4]
#   set_location_assignment PIN_L19 -to dp[5]  ;# DP[5]

#   I/O standards   
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0S[6]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0S[5]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0S[4]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0S[3]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0S[2]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0S[1]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0S[0]

#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1S[6]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1S[5]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1S[4]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1S[3]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1S[2]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1S[1]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1S[0]

#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2S[6]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2S[5]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2S[4]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2S[3]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2S[2]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2S[1]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2S[0]

#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3S[6]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3S[5]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3S[4]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3S[3]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3S[2]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3S[1]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3S[0]

#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4S[6]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4S[5]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4S[4]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4S[3]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4S[2]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4S[1]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4S[0]

#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5S[6]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5S[5]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5S[4]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5S[3]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5S[2]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5S[1]
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5S[0]

#   *** Pin Assignment *** 
   
#   set_location_assignment PIN_C14 -to HEX0S[6]  ;# a  HEX0S[6]
#   set_location_assignment PIN_E15 -to HEX0S[5]  ;# b  HEX0S[5]
#   set_location_assignment PIN_C15 -to HEX0S[4]  ;# c  HEX0S[4]
#   set_location_assignment PIN_C16 -to HEX0S[3]  ;# d  HEX0S[3]
#   set_location_assignment PIN_E16 -to HEX0S[2]  ;# e  HEX0S[2]
#   set_location_assignment PIN_D17 -to HEX0S[1]  ;# f  HEX0S[1]
#   set_location_assignment PIN_C17 -to HEX0S[0]  ;# g  HEX0S[0]


#   set_location_assignment PIN_C18 -to HEX1S[6]  ;# a  HEX1S[6]
#   set_location_assignment PIN_D18 -to HEX1S[5]  ;# b  HEX1S[5]
#   set_location_assignment PIN_E18 -to HEX1S[4]  ;# c  HEX1S[4]
#   set_location_assignment PIN_B16 -to HEX1S[3]  ;# d  HEX1S[3]
#   set_location_assignment PIN_A17 -to HEX1S[2]  ;# e  HEX1S[2]
#   set_location_assignment PIN_A18 -to HEX1S[1]  ;# f  HEX1S[1]
#   set_location_assignment PIN_B17 -to HEX1S[0]  ;# g  HEX1S[0]

#   set_location_assignment PIN_B20 -to HEX2S[6]  ;# a  HEX2S[6]
#   set_location_assignment PIN_A20 -to HEX2S[5]  ;# b  HEX2S[5]
#   set_location_assignment PIN_B19 -to HEX2S[4]  ;# c  HEX2S[4]
#   set_location_assignment PIN_A21 -to HEX2S[3]  ;# d  HEX2S[3]
#   set_location_assignment PIN_B21 -to HEX2S[2]  ;# e  HEX2S[2]
#   set_location_assignment PIN_C22 -to HEX2S[1]  ;# f  HEX2S[1]
#   set_location_assignment PIN_B22 -to HEX2S[0]  ;# g  HEX2S[0]

#   set_location_assignment PIN_F21 -to HEX3S[6]  ;# a  HEX3S[6]
#   set_location_assignment PIN_E22 -to HEX3S[5]  ;# b  HEX3S[5]
#   set_location_assignment PIN_E21 -to HEX3S[4]  ;# c  HEX3S[4]
#   set_location_assignment PIN_C19 -to HEX3S[3]  ;# d  HEX3S[3]
#   set_location_assignment PIN_C20 -to HEX3S[2]  ;# e  HEX3S[2]
#   set_location_assignment PIN_D19 -to HEX3S[1]  ;# f  HEX3S[1]
#   set_location_assignment PIN_E17 -to HEX3S[0]  ;# g  HEX3S[0]

#   set_location_assignment PIN_F18 -to HEX4S[6]  ;# a  HEX4S[0]
#   set_location_assignment PIN_E20 -to HEX4S[5]  ;# b  HEX4S[1]
#   set_location_assignment PIN_E19 -to HEX4S[4]  ;# c  HEX4S[2]
#   set_location_assignment PIN_J18 -to HEX4S[3]  ;# d  HEX4S[3]
#   set_location_assignment PIN_H19 -to HEX4S[2]  ;# e  HEX4S[4]
#   set_location_assignment PIN_F19 -to HEX4S[1]  ;# f  HEX4S[5]
#   set_location_assignment PIN_F20 -to HEX4S[0]  ;# g  HEX4S[6]

#   set_location_assignment PIN_J20 -to HEX5S[6]  ;# a  HEX5S[0]
#   set_location_assignment PIN_K20 -to HEX5S[5]  ;# b  HEX5S[1]
#   set_location_assignment PIN_L18 -to HEX5S[4]  ;# c  HEX5S[2]
#   set_location_assignment PIN_N18 -to HEX5S[3]  ;# d  HEX5S[3]
#   set_location_assignment PIN_M20 -to HEX5S[2]  ;# e  HEX5S[4]
#   set_location_assignment PIN_N19 -to HEX5S[1]  ;# f  HEX5S[5]
#   set_location_assignment PIN_N20 -to HEX5S[0]  ;# g  HEX5S[6]


   ;#################
   ;# VGA interface #
   ;#################

#   I/O standards   
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[0]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[1]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[2]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[3]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[0]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[1]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[2]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[3]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[0]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[1]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[2]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[3]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_HORIZ_SYNC
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_VERT_SYNC   

#   *** Pin Assignment ***    
   
#   set_location_assignment PIN_AA1 -to VGA_RED[0]
#   set_location_assignment PIN_V1  -to VGA_RED[1]
#   set_location_assignment PIN_Y2  -to VGA_RED[2]
#   set_location_assignment PIN_Y1  -to VGA_RED[3]

#   set_location_assignment PIN_P1  -to VGA_BLUE[0]
#   set_location_assignment PIN_T1  -to VGA_BLUE[1]
#   set_location_assignment PIN_P4  -to VGA_BLUE[2]
#   set_location_assignment PIN_N2  -to VGA_BLUE[3]

#   set_location_assignment PIN_W1  -to VGA_GREEN[0]
#   set_location_assignment PIN_T2  -to VGA_GREEN[1]
#   set_location_assignment PIN_R2  -to VGA_GREEN[2]
#   set_location_assignment PIN_R1  -to VGA_GREEN[3]

#   set_location_assignment PIN_N3  -to VGA_HORIZ_SYNC
#   set_location_assignment PIN_N1  -to VGA_VERT_SYNC

   ;###################################
   ;# Arduino Uno R3 Expansion Header #
   ;###################################

#   I/O standards      
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[0]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[1]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[2]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[3]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[4]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[5]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[6]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[7]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[8]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[9]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[10]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[11]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[12]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[13]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[14]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_IO[15]
#   set_instance_assignment -name IO_STANDARD "3.3 V Schmitt Trigger" -to ARDUINO_RESET_N
      
#   *** Pin Assignment ***    
   
#   set_location_assignment PIN_AB5  -to ARDUINO_IO[0]   ;# RXD   pin #8 on Hedaer 8 JP3 (useful with rs232 shield)
#   set_location_assignment PIN_AB6  -to ARDUINO_IO[1]   ;# TXD   pin #7 on Hedaer 8 JP3 (useful with rs232 shield)
#   set_location_assignment PIN_AB7  -to ARDUINO_IO[2]            pin #6 on Hedaer 8 JP3
#   set_location_assignment PIN_AB8  -to ARDUINO_IO[3]            pin #5 on Hedaer 8 JP3
#   set_location_assignment PIN_AB9  -to ARDUINO_IO[4]            pin #4 on Hedaer 8 JP3
#   set_location_assignment PIN_Y10  -to ARDUINO_IO[5]            pin #3 on Hedaer 8 JP3
#   set_location_assignment PIN_AA11 -to ARDUINO_IO[6]            pin #2 on Hedaer 8 JP3
#   set_location_assignment PIN_AA12 -to ARDUINO_IO[7]            pin #1 on Hedaer 8 JP3
#   set_location_assignment PIN_AB17 -to ARDUINO_IO[8]                                       pin #10 on Hedaer 10 JP2
#   set_location_assignment PIN_AA17 -to ARDUINO_IO[9]                                       pin #9  on Hedaer 10 JP2
#   set_location_assignment PIN_AB19 -to ARDUINO_IO[10]  ;# SS                               pin #8  on Hedaer 10 JP2
#   set_location_assignment PIN_AA19 -to ARDUINO_IO[11]  ;# MOSI  pin #4 on Hedaer 2x3 JP4 & pin #7  on Header 10 JP2
#   set_location_assignment PIN_Y19  -to ARDUINO_IO[12]  ;# MISO  pin #1 on Hedaer 2x3 JP4 & pin #6  on Header 10 JP2
#   set_location_assignment PIN_AB20 -to ARDUINO_IO[13]  ;# SCK   pin #3 on Hedaer 2x3 JP4 & pin #5  on Header 10 JP2
#   set_location_assignment PIN_AB21 -to ARDUINO_IO[14]  ;# SDA                            & pin #2  on Header 10 JP2
#   set_location_assignment PIN_AA20 -to ARDUINO_IO[15]  ;# SCL                            & pin #1  on Header 10 JP2
#   set_location_assignment PIN_F16  -to ARDUINO_RESET_N ;# active low Reset signal pin #5 on Hedaer 2x3 JP4 &  pin3 of Hedaer8 JP7 

;# https://www.sparkfun.com/products/13029
;# https://www.dfrobot.com/product-1030.html
;# https://www.dfrobot.com/product-1024.html
;# http://www.tinyosshop.com/arduino-rs232-rs485-shield
;# https://www.sparkfun.com/products/retired/11649
;# https://www.thanksbuyer.com/arduino-usb-host-shield-for-arduino-uno-mega-google-adk-android-16801
;# https://www.sparkfun.com/products/7914?_ga=2.105592453.781109548.1515594385-1167449454.1515594385
;# https://www.sparkfun.com/products/retired/9363
;# https://www.robotshop.com/en/bluetooth-shield-arduino-master-slave.html
;# https://www.robotshop.com/en/rs232-shield-arduino.html
;# https://www.seeedstudio.com/Danger-Shield-Complete-kits-p-141.html


   ;###############################
   ;# On Chip ADC                 #
   ;# connected to HEADER 6 (JP8) #
   ;###############################

#   *** Pin Assignment ***    
      
#   set_location_assignment PIN_F5 -to ADC1IN1 ;# pin #1 on Header 6 (JP8 under Arduiono Footprint) 
#   set_location_assignment PIN_F4 -to ADC1IN2 ;# pin #2 on Header 6 (JP8 under Arduiono Footprint)
#   set_location_assignment PIN_J8 -to ADC1IN3 ;# pin #3 on Header 6 (JP8 under Arduiono Footprint)
#   set_location_assignment PIN_J9 -to ADC1IN4 ;# pin #4 on Header 6 (JP8 under Arduiono Footprint)
#   set_location_assignment PIN_H3 -to ADC1IN5 ;# pin #5 on Header 6 (JP8 under Arduiono Footprint)
#   set_location_assignment PIN_J4 -to ADC1IN6 ;# pin #6 on Header 6 (JP8 under Arduiono Footprint)

#   set_location_assignment PIN_K5 -to ADC1IN7 ;# TP1 pin 
#   set_location_assignment PIN_K6 -to ADC1IN8 ;# TP2 pin 


   ;##################################################### 
   ;# 3-axis accelerometer ADXL345 (SPI)                #
   ;# access through SPI & I2C interfaces               #
   ;#####################################################
   ;# CS_N id SPI's cs or Tie CS_n to high for I2C mode #
   ;#####################################################
   ;# With the GSENSOR_SDO signal to high, the          #
   ;# 7-bit I2C address for the device is 0x1D,         #
   ;# followed by the R/W bit. This translates          #
   ;# to 0x3A for a write and 0x3B for a read.          #
   ;# An alternate I2C address of 0x53                  #
   ;# (followed by the R/W bit) can be chosen           #
   ;# by low the GSENSOR_SDO signal. This translates    #
   ;# to 0xA6 for a write and 0xA7 for a read.          #
   ;# Default : I2C Address 0xA6/0xA7                   #
   ;#####################################################

#   I/O standards      
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GSENSOR_CS_N
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GSENSOR_INT[1]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GSENSOR_INT[2]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GSENSOR_SCLK
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GSENSOR_SDI
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GSENSOR_SDO   

#   *** Pin Assignment ***       
#   set_location_assignment PIN_AB16 -to GSENSOR_CS_N   ;# output of FPGA & input of device SPI-cs / I2C mode select
#   set_location_assignment PIN_Y14  -to GSENSOR_INT[1] ;# input  of FPGA & output of device (interrupt)
#   set_location_assignment PIN_Y13  -to GSENSOR_INT[2] ;# input  of FPGA & output of device (interrupt)
#   set_location_assignment PIN_AB15 -to GSENSOR_SCLK   ;# I2C-SCL/SPI-SCLK pulled up with 2.2K resistor
#   set_location_assignment PIN_V11  -to GSENSOR_SDI    ;# I2C-SDA/SPI-SDI  pulled up with 2.2K resistor
#   set_location_assignment PIN_V12  -to GSENSOR_SDO    ;# SDO and I2C alternative address 


   ;#########
   ;# SDRAM #
   ;#########   

#   I/O standards      
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[0]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[1]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[2]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[3]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[4]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[5]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[6]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[7]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[8]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[9]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[10]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[11]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[12]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_BA[0]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_BA[1]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CAS_N
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CKE
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CLK
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CS_N
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[0]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[1]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[2]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[3]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[4]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[5]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[6]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[7]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[8]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[9]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[10]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[11]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[12]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[13]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[14]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[15]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_LDQM
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_RAS_N
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_UDQM
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_WE_N
   
#   *** Pin Assignment ***    
            
   ;# SDRASM address
#   set_location_assignment PIN_U17  -to DRAM_ADDR[0]
#   set_location_assignment PIN_W19  -to DRAM_ADDR[1]
#   set_location_assignment PIN_V18  -to DRAM_ADDR[2]
#   set_location_assignment PIN_U18  -to DRAM_ADDR[3]
#   set_location_assignment PIN_U19  -to DRAM_ADDR[4]
#   set_location_assignment PIN_T18  -to DRAM_ADDR[5]
#   set_location_assignment PIN_T19  -to DRAM_ADDR[6]
#   set_location_assignment PIN_R18  -to DRAM_ADDR[7]
#   set_location_assignment PIN_P18  -to DRAM_ADDR[8]
#   set_location_assignment PIN_P19  -to DRAM_ADDR[9]
#   set_location_assignment PIN_T20  -to DRAM_ADDR[10]
#   set_location_assignment PIN_P20  -to DRAM_ADDR[11]
#   set_location_assignment PIN_R20  -to DRAM_ADDR[12]
   
   ;# SDRASM data
#   set_location_assignment PIN_Y21  -to DRAM_DQ[0]
#   set_location_assignment PIN_Y20  -to DRAM_DQ[1]
#   set_location_assignment PIN_AA22 -to DRAM_DQ[2]
#   set_location_assignment PIN_AA21 -to DRAM_DQ[3]
#   set_location_assignment PIN_Y22  -to DRAM_DQ[4]
#   set_location_assignment PIN_W22  -to DRAM_DQ[5]
#   set_location_assignment PIN_W20  -to DRAM_DQ[6]
#   set_location_assignment PIN_V21  -to DRAM_DQ[7]
#   set_location_assignment PIN_P21  -to DRAM_DQ[8]
#   set_location_assignment PIN_J22  -to DRAM_DQ[9]
#   set_location_assignment PIN_H21  -to DRAM_DQ[10]
#   set_location_assignment PIN_H22  -to DRAM_DQ[11]
#   set_location_assignment PIN_G22  -to DRAM_DQ[12]
#   set_location_assignment PIN_G20  -to DRAM_DQ[13]
#   set_location_assignment PIN_G19  -to DRAM_DQ[14]
#   set_location_assignment PIN_F22  -to DRAM_DQ[15]

   ;# SDRASM controls
#   set_location_assignment PIN_T21 -to DRAM_BA[0]
#   set_location_assignment PIN_T22 -to DRAM_BA[1]
#   set_location_assignment PIN_U21 -to DRAM_CAS_N
#   set_location_assignment PIN_N22 -to DRAM_CKE
#   set_location_assignment PIN_L14 -to DRAM_CLK
#   set_location_assignment PIN_U20 -to DRAM_CS_N
#   set_location_assignment PIN_V22 -to DRAM_LDQM
#   set_location_assignment PIN_U22 -to DRAM_RAS_N
#   set_location_assignment PIN_J21 -to DRAM_UDQM
#   set_location_assignment PIN_V20 -to DRAM_WE_N
   

   ;#####################################
   ;# JP0 - the left connector (GPIO 0) #
   ;#####################################

#   I/O standards      
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[0]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[1]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[2]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[3]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[4]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[5]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[6]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[7]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[8]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[9]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[10]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[11]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[12]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[13]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[14]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[15]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[16]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[17]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[18]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[19]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[20]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[21]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[22]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[23]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[24]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[25]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[26]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[27]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[28]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[29]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[30]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[31]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[32]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[33]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[34]
#   set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO[35]

#   *** Pin Assignment ***    
      
#   set_location_assignment PIN_V10  -to GPIO[0]    ;# pin  1
#   set_location_assignment PIN_W10  -to GPIO[1]    ;# pin  2
#   set_location_assignment PIN_V9   -to GPIO[2]    ;# pin  3
#   set_location_assignment PIN_W9   -to GPIO[3]    ;# pin  4
#   set_location_assignment PIN_V8   -to GPIO[4]    ;# pin  5
#   set_location_assignment PIN_W8   -to GPIO[5]    ;# pin  6
#   set_location_assignment PIN_V7   -to GPIO[6]    ;# pin  7
#   set_location_assignment PIN_W7   -to GPIO[7]    ;# pin  8
#   set_location_assignment PIN_W6   -to GPIO[8]    ;# pin  9
#   set_location_assignment PIN_V5   -to GPIO[9]    ;# pin  10
# +5 Volt                                       ;# pin  11 
# GND                                           ;# pin  12
#   set_location_assignment PIN_W5   -to GPIO[10]   ;# pin  13
#   set_location_assignment PIN_AA15 -to GPIO[11]   ;# pin  14
#   set_location_assignment PIN_AA14 -to GPIO[12]   ;# pin  15
#   set_location_assignment PIN_W13  -to GPIO[13]   ;# pin  16
#   set_location_assignment PIN_W12  -to GPIO[14]   ;# pin  17
#   set_location_assignment PIN_AB13 -to GPIO[15]   ;# pin  18
#   set_location_assignment PIN_AB12 -to GPIO[16]   ;# pin  19
#   set_location_assignment PIN_Y11  -to GPIO[17]   ;# pin  20
#   set_location_assignment PIN_AB11 -to GPIO[18]   ;# pin  21
#   set_location_assignment PIN_W11  -to GPIO[19]   ;# pin  22
#   set_location_assignment PIN_AB10 -to GPIO[20]   ;# pin  23
#   set_location_assignment PIN_AA10 -to GPIO[21]   ;# pin  24
#   set_location_assignment PIN_AA9  -to GPIO[22]   ;# pin  25
#   set_location_assignment PIN_Y8   -to GPIO[23]   ;# pin  26
#   set_location_assignment PIN_AA8  -to GPIO[24]   ;# pin  27
#   set_location_assignment PIN_Y7   -to GPIO[25]   ;# pin  28
# +3.3 Volt                                     ;# pin  29 
# GND                                           ;# pin  30
#   set_location_assignment PIN_AA7  -to GPIO[26]   ;# pin  31
#   set_location_assignment PIN_Y6   -to GPIO[27]   ;# pin  32
#   set_location_assignment PIN_AA6  -to GPIO[28]   ;# pin  33
#   set_location_assignment PIN_Y5   -to GPIO[29]   ;# pin  34
#   set_location_assignment PIN_AA5  -to GPIO[30]   ;# pin  35
#   set_location_assignment PIN_Y4   -to GPIO[31]   ;# pin  36
#   set_location_assignment PIN_AB3  -to GPIO[32]   ;# pin  37
#   set_location_assignment PIN_Y3   -to GPIO[33]   ;# pin  38
#   set_location_assignment PIN_AB2  -to GPIO[34]   ;# pin  39
#   set_location_assignment PIN_AA2  -to GPIO[35]   ;# pin  40
      

   ;##############################################
   ;# Device selection & Making connections safe #
   ;##############################################
   ;# Analysis & Synthesis Assignments
   set_global_assignment -name FAMILY "MAX 10 FPGA"
   set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
   set_global_assignment -name DEVICE_FILTER_PIN_COUNT 484
   set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 7

   ;# fitter assignments
   set_global_assignment -name DEVICE 10M50DAF484C7G
   
   ;# UNUSED PINS
#   set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
#   set_global_assignment -name RESERVE_ALL_UNUSED_PINS_WEAK_PULLUP "AS OUTPUT DRIVING GROUND"
    set_global_assignment -name RESERVE_ALL_UNUSED_PINS_WEAK_PULLUP "AS INPUT TRI-STATED"

   set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (VHDL)"
   set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation
   
   puts " And making the design safer !   "
   puts "================================="
   
   ;# run compilation after pin assignment
#   load_package flow
#   execute_flow -compile
}
