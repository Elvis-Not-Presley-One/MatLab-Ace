%% Tyler Elvis 2/18/24  ENG 108, Lab Ace Data 

%% Ace Data 

clc, clear 
format short, format compact

%% Instructions 
%Download the datafile ace_data_5th.dat to the current folder for Lab 4.
%Load the ace_data_5th.dat file into the script for Lab 4.
%Extract the data from each column, into individual arrays. You should have arrays named. Suppress the data from being displayed. 
%years 
% %ace
%tropical_storms
%hurricanes
%major_hurricanes

%Use the max function to determine which year had the highest
%ACE value
%Number of tropical storms
%Number of hurricanes
%Number of major hurricanes

%Determine the mean and the median values for each column in the array, except for the year.

%Use the sortrows function to rearrange the ace_data array based on the ACE value, sorted from high to low.

%% Data Org

load ace_data_5th.dat;  %loads the data fom the .dat file 

Data = ace_data_5th;    %creating a function for the loaded data
   
%Creats an aray for each col from the data set 
  
    year = Data(:,1);
    ace = Data(:,2);
    tropical_storms = Data(:,3);
    hurricanes = Data(:,4);
    major_hurricanes = Data(:,5);

    %% Highest value in each year


[values,rows] = max(ace,[],"all");  %finds the max value and row of the variable 
MAX_ACE_YEAR = year(rows,1,1);      % takes the rows value and outputs the year 
MAX_ACE = [values,MAX_ACE_YEAR];    % Puts both the year and max value into one function 
Table_Ace = table(MAX_ACE)          % displays the data in an table using the table function 

% Copy and paste and change the variables 

    [values,rows] = max(tropical_storms,[],"all");
    MAX_YEAR = year(rows,1,1);
    MAX_Tropical_storms = [values,MAX_YEAR];
    Tropical_Storms_Table = table(MAX_Tropical_storms)

        [values,rows] = max(hurricanes,[],"all");
        MAX_YEAR = year(rows,1,1);
        Max_hurricanes = [values,MAX_YEAR];
        Hurricanes_Table = table(Max_hurricanes)

            [values,rows] = max(major_hurricanes,[],"all");
            MAX_YEAR = year(rows,1,1);
            Max_Major_hurricanes = [values,MAX_YEAR];
            Major_Hurricanes_Table = table(Max_Major_hurricanes)

  %% find the mean 

Median_AND_MEAN_for_ACE = [(mean(ace)),(median(ace))] % creates the mean and median by () to only do that action [] to output it all as one 

    MEAN_AND_MEDIAN_FOR_TROPICAL_STORMS = [(mean(tropical_storms)),(median(tropical_storms))]

        MEAN_AND_MEDIAN_FOR_HURICANES = [(mean(hurricanes)),(median(hurricanes))]

            MEAN_AND_MEDIAN_FOR_MAJOR_HURICANES = [(mean(major_hurricanes)),(median(major_hurricanes))]


%% sort rows 

Rows_SORTED = sortrows(Data,2,"descend"); % sorts the ace row from descending order 
Table = table(Rows_SORTED)
