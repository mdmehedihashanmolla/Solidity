// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract StructExample{
    // Define a struct

    struct Student{
        string name;
        uint age;
        string course;
    }

    // Declare a struct variable

    Student public student;
    
    // Function to set student data

    function setStudent(string memory _name, uint _age, string memory _course) public {
        student = Student(_name,_age,_course);
    }
    // Function to get student data

    function getStudent() public view returns (string memory,uint, string memory){
        return (student.name, student.age, student.course);
    }
}