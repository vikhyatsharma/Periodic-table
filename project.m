%this programme takes input such as name, symbol or atomic number and prints 
%the rest of the inforamtion of that element

% a vector with element names
element_names=["hydrogen" "helium" "lithium" "beryllium" "boron" "carbon" "nitrogen" "oxygen" "fluorine" "neon" "sodium" "magnesium" "aluminum" "silicon" "phosphorus" "sulfur" "chlorine" "argon" "potassium" "calcium" "scandium" "titanium" "vanadium" "chromium" "manganese" "iron" "cobalt" "nickel" "copper" "zinc" "gallium" "germanium" "arsenic" "selenium" "bromine" "krypton" "rubidium" "strontium" "yttrium" "zirconium" "niobium" "molybdenum" "technetium" "ruthenium" "rhodium" "palladium" "silver" "cadmium" "indium" "tin" "antimony" "tellurium" "iodine" "xenon" "cesium" "barium" "lanthanum" "cerium" "praseodymium" "neodymium" "promethium" "samarium" "europium" "gadolinium" "terbium" "dysprosium" "holmium" "erbium" "thulium" "ytterbium" "lutetium" "hafnium" "tantalum" "tungsten" "rhenium" "osmium" "iridium" "platinum" "gold" "mercury" "thallium" "lead" "bismuth" "polonium" "astatine" "radon" "francium" "radium" "actinium" "thorium" "protactinium" "uranium" "neptunium" "plutonium" "americium" "curium" "berkelium" "californium" "einsteinium" "fermium" "mendelevium" "nobelium" "lawrencium" "rutherfordium " "dubnium" "seaborgium" "bohrium" "hassium" "meitnerium" "darmstadtium" "roentgenium" "copernicium" "nihonium" "flerovium" "moscovium" "livermorium" "tennessine" "oganesson" ]; 

% a vector with symbols of elements
element_symbols= [ "H" "He" "Li" "Be" "B" "C" "N" "O" "F" "Ne" "Na" "Mg" "Al" "Si" "P" "S" "Cl" "Ar" "K" "Ca" "Sc" "Ti" "V" "Cr" "Mn" "Fe" "Co" "Ni" "Cu" "Zn" "Ga" "Ge" "As" "Se" "Br" "Kr" "Rb" "Sr" "Y" "Zr" "Nb" "Mo" "Tc" "Ru" "Rh" "Pd" "Ag" "Cd" "In" "Sn" "Sb" "Te" "In" "Xe" "Cs" "Ba" "La" "Ce" "Pr" "Nd" "Pm" "Sm" "Eu" "Gd" "Tb" "Dy" "Ho" "Er" "Tm" "Yb" "Lu" "Hf" "Ta" "W" "Re" "Os" "Ir" "Pt" "Au" "Hg" "Tl" "Pb" "Bi" "Po" "At" "Rn" "Fr" "Ra" "Ac" "Th" "Pa" "U" "Np" "Pu" "Am" "Cm" "Bk" "Cf" "Es" "Fm" "Md" "No" "Lr" "Rf" "Db" "Sg" "Bh" "Hs" "Mt" "Ds" "Rg" "Cn" "Nh" "Fl" "Mc" "Lv" "Ts" "Og"];

%a vector with atomic numbers
atomic_number= 1:118;

% a vector with atomic weight of elements
element_atomic_weight= [ 1.01 4.00 6.94 9.01 10.81 12.01 14.01 15.99 18.99 20.18 22.99 24.31 26.98 28.09 30.98 32.07 35.45 39.95 39.09 40.08 44.96 47.87 50.94 51.97 54.94 55.85 58.93 58.69 63.55 65.39 69.72 72.64 74.92 78.96 79.90 83.8 85.47 87.62 88.91 91.22 92.91 95.94 98.00 101.07 102.91 106.42 107.87 112.41 114.82 118.71 121.76 127.60 126.91 131.29 132.91 137.33 138.91 140.12 140.91 144.24 145.00 150.36 151.96 157.25 158.93 162.50 164.93 167.26 168.93 173.04 174.97 178.49 180.95 183.84 186.21 190.23 196.97 192.22 195.08 200.60 204.38 207.20 208.98 209.00 210.00 222.00 223.00 226.00 227.00 232.04 231.04 238.03 237.00 244.00 243.00 247.00 247.00 251.00 252.00 257.00 258.00 259.00 262.00 261.00 262.00 266.00 264.00 277.00 268.00 261.90 271.80 285.00 286.00 289.00 288.00 293.00 260.90 294.00  ];

%Asking user to select an option(1. atomic number, 2.element name, 3.element symbol)
%to display the details of the element
disp("please choose a number from 1-3")

%informing users of the 3 options available 
disp("Enter 1 to obtain information via atomic number."); 
disp("Enter 2 to obtain information via element name.");
disp("Enter 3 to obtain information via element symbol.");

%even though the integer values are required, 's' will allow string to be
%entered so user input errors do not disturb code
options=input("Enter input option: ", 's');

%while loop will make sure if user doesnt enter the right the value
%programme will keep asking for the right value
while ~(str2double(options)==1||str2double(options)==2||str2double(options)==3)  %'str2double' will convert the string in 'option' to double
    disp("Incorrect number.");                                                      %that will help with the switch case
    options=input("Please choose a valid input option (1,2,3): ",'s');
end

%converts options to double due to conditions in switch cases
options=str2double(options);

%switch cases used due to efficiency and convenience
switch options
    
%ATOMIC NUMBER        
case (1)     

%while loop will make sure if user doesnt enter the right the value
%programme will keep asking for the right value     
while(1)
%even though the integer values are required, 's' will allow string to be
%entered so user input errors do not disturb code   
user_atomicNumber=input("Enter atomic number: ", 's'); 

%string2double is used to convert input to numerical values to allow logical operators in 'if' statement to work;
%as variable 'input_atomicNumber' will have numerical value, it will be used to determine  index number for other vectors
user_atomicNumber=str2double(user_atomicNumber); 

%conditional if statement allowing specific index numbers of other vectors to be displayed
%logical operators utilised for specific conditions
 if (user_atomicNumber) >= 1 && (user_atomicNumber) <= 118
     %details of elememt is displayed 
    fprintf("Element Name is: %s \n", upper(element_names(user_atomicNumber))); %capitalising the name of the element
    fprintf("Element Symbol is: %s \n", element_symbols(user_atomicNumber));
    fprintf("Atomic weight: %0.2f \n", element_atomic_weight(user_atomicNumber)); 
    break; %break statment stop programme to go into another loop
 else
     %ensures that if user enters invalid number programme will keep asking for valid option 
     user_atomicNumber=str2double(user_atomicNumber);
     disp("Invalid number. Please enter a valid atomic number, in the range of 1 - 118.");
 end
end

%ELEMENT NAME
case (2)

while (1)
user_element_name=input("Enter the name of the element: ",'s'); %asking for valid element name

%user input is converted to all lower case letters, as element_names vector contains all lower case elements
user_element_name=lower(user_element_name);

for i= 1:length(element_names)
    %input is compared to every name in element_name and when the element 
    %is found its index number is stored to display other details of
    %element
    if strcmp(user_element_name, element_names(i))  
        %symbol letters, atomic number, and atomic weight are displayed -
        %according to element name entered by user 
        fprintf("Element symbol is %s \n", element_symbols(i));
        fprintf("Atomic number is : %.0d \n", atomic_number(i));
        fprintf("Atomic weight is : %0.2f \n",element_atomic_weight(i));
    end
end
%ensures that if invalid value is inputted by user, programme will
%continuously ask for a valid input until provided one (loop is repeated)
if  ~ismember(user_element_name, element_names) 
    disp("Invalid name, Please check the spelling of the element");
else
    break  %terminates the execution of the for loop, stops programme from repeating 
end
end 

case (3)
%ELEMENT SYMBOL

while (1)
input_symbolName=input("Enter symbol of the element: ",'s');

for i= 1:length(element_symbols)
    
%input is compared to all variables in element_symbols vector if found the
%index number is stored and the corresponding details of the element is
%printed out
     if strcmp(input_symbolName, element_symbols(i))
        %element name, atomic number, and atomic weight is displayed -
        %according to symbol name entered by user 
        fprintf ("Element Name is : %s\n",(upper(element_names(i)))); %Element name is captalised
        fprintf("Atomic number is : %.0d \n",atomic_number(i));
        fprintf("Atomic weight is : %0.2f \n",element_atomic_weight(i));
    end
end
%ensures that if invalid value is inputted by user, programme will
%continuously ask for a valid input until provided one
if ~ismember(input_symbolName, element_symbols)
    disp("Invalid. Please ensure correct capital letters are used.");% As programme is case sensitive
else
   break %terminates the execution of the for loop, stops programme from repeating in the for loop
end
end
end
