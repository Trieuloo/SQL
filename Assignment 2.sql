-- Displays the First name, Last name, Age, and Occupation of the Client. 

Create Index PersonalInformation on Client(ClientDoB);
select ClientFirstName, ClientLastName, YEAR(CURDATE()) - ClientDoB as Ages, Occupation -- To get the ages we used  YEAR(curdate()) to inquire that we were searching for the year of our current date.
from client;
