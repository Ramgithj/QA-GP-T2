# QA Cloud Native - Final Project - SFIA3
## Group 2

## Contents
* [Brief](#brief)
	* [Team](#team)
	* [Requirements](#requirenments)
* [Planning](#planning)
	* [Jira Board](#jira-board)
	* [Risk Assessment](#risk-asessment)
	* [Entity Relationship Diagram](#entity-relationship-diagram)
	* [Team Meetings](#team-meetings)
* [CI Pipeline](#ci-pipeline)
	* [Github](#github)
	* [Jenkins](#jenkins)
* [Testing](#testing)
	* [Unit Tests](#unit-tests)
	* [Integration Tests](#integration-tests)
* [Application Navigation](#application-navigation)
* [Acknowledgements](#acknowledgements)

## Brief
The final project within the QA Academy had required us to be split into groups and develop a Help Queue web application for use within QA. This application would showcase base CRUD functionality, allowing for users to create a help ticket and monitor its journey.
A ticket would have the following fields:
 * title
 * topic
 * description
 * urgency
 * time submitted
 A user would create a ticket, this would then be entered into a filterable list, whereby the user would be able to filter and search by topic, keyword, urgency and time order.

 As well as the base functionality, we had also been required to implement two additional functions. For these, our group had chosen the following:
 * Implement a help queue per cohort, such that trainees can navigate to their cohort to see the help queue specific to their class.
 * Tickets should be tagged with a topic. This should allow users to filter tickets based on a topic.
 * Tickets can be marked with different levels of urgency.
 * Implement a search bar feature, so that users can filter tickets based on keywords.

The initial brief required us (within a team) to create a Help Queue web application for use in the Academy, which functions as a CRUD list, allowing users to create issues and for trainers to mark them as complete.

### Team Structure
* Sam Horner - AWS Infrastructure, Nexus Set-Up, Jenkins Pipeline + Build, Kubernetes
* Ramgith Jagajith - Front-end development, front-end functionality
* Sheraz Shahid - AWS Infrastructure (Terraform, Ansible), Docker containerisation, Jenkins Pipeline, Kubernetes
* Lewis Thomson - Front-end development, front-end functionality, front-end testing, back-end unit testing
* Lisandro Villarruel - Back-end development, back-end functionality, back-end integration testing


## Project Management & Planning
The project had been approached with Agile Methodology practises being followed. A scrum master had been assigned (Sheraz Shahid) and we had 3 sprints, each begining with a 'Start of Sprint' meeting and ending with a Sprint Review and Sprint Retrospecive (both outlined below).

### Jira Board
In order to break down the requirements, we had convereted these into user stories and then used them as product backlog items. Each backlog item was assigned story points (unanimously decided) and grouped by epics (functionality based). Product backlog items were then assigned to each sprint, therefore becoming part of the sprint backlog.
This project had entailed 3 sprints in its entirity, which the backlog items for each sprint devided by the group in the weekly 'Start of Sprint' meeting.

Below shows a screenshot of the last week's sprint.

![alt text](https://drive.google.com/file/d/1iGEpRvDdhjrcdKM3Bp_OMYBhnlH7Gl8I/view?usp=sharing)

### Risk Assessment
In order to assess and minimise the chance of the project being impacted greatly by any external or internal threats, we had completed a Risk Assesment prior to starting the project. In doing so, this would allow for us to be prepared for potential threats and risks that we may face and therefore look to minimise and mitigate risks before they may arise.

![alt text](https://drive.google.com/file/d/1xo8n703Y8jFdXZ8AblZHSR0eqMAW0rn_/view?usp=sharing)

### Entity Relationship Diagram
Below is the attached entity relationship diagram for the project. Originally we attempted a multi relational architecture with 4 tables (trainer, trainee, ticket, ticket_trainee); however, due to time constraints, we had then stripped this down to a single ticket table architecture. The table with all fields are as shown below:

![alt text](https://drive.google.com/file/d/13r1DDmQVFi0EBc-75S3oqUJzp-6JhNAV/view?usp=sharing)

### Team Meetings
Due to this project following agile methodology, there was a set procedure/guideline we would follow, alongside any additions we had added on our own accord. At the start of each sprint, we would hold a 'Start of Sprint' meeting in order to discuss the sprint backlog items and associate members to each item. Each sprint was concluded with a Sprint Review and Sprint Retrospective. A link to all the meeting minutes and retrospectives can be found as below:

*INSERT GOOGLE LINKS TO MEETING MINUTES AND RETROSPECTIVES*

## CI Pipeline
For this project, we had decided on and aimed towards the following architecture diagram:

*INSERT SCREENSHOT OF ARCHITECTURE DIAGRAM*

As shown in the above diagram, we had decided upon ....

### Github
Github was used a the version control system for the project. The project was broken down into different parts and seperate branches were created for each part of the project. Each team member will commit and push their latest changes to their relative branches. At the end of the project, the branches will be merged to main.

In addition to this, webhooks were set up in github to automate the process of deploying the website whenever a change is made.

### Jenkins
In order to automate the deployment, a number of commands were written in a specific file called 'Jenkinsfile'. By running this file using Jenkins, we have built the images, pushed to the image registry, created pods using kubectl and deployed the webpage.

## Testing

### Unit Tests

### Integration Tests

### Jest Testing

### User Design
The initial plan was to create a fully function help queue service which allows trainers and trainees to create an account and log in. The functionality also include the trainee being able to post an issue, sort tickets by topic and time. However due to time constrain, the team decided to shorten the project by allowing anyone to post an issue without having to log in. Anyone can post an issue and issues can be sorted by topic and author. There is a seperate page which shows all the responded issues which has an option to be deleted.

Overall, the userall UX has a very minimalistic design with a easy on the eye colour scheme. Users can easily post issues and read other issues without any trouble.


## Outcome
Overall, we had been able to create, develop and deploy a functional Help Queue Application which incorporated the required functionality. In doing so, we showcased the skills learnt, including: java/spring development, react/html/javascript development, AWS cloud architecture and infrastructure. The functionality can be showcased within the application and the entire application is deployed via Kubernetes through a CI pipeline so that any changes made to the code (with any updates pushed to git) would trigger the build and deployement update.

Once run, the application can be accessed via the node cluster IP for the frontend, which would send data to the backend pod and the database.

## Future Improvements
As a group, we feel we managed the project as best we could however did hit many bumps along the way. If we were to complete this project again, there would be multiple areas of improvement as we are all collectively more knowledgable now than we had been when we started. The following would be our key areas of improvement on this project:

* Arrange for basic functionality and putting this through the pipeline, then adding features in a more organised manner
* Incorporate fully functional and secure login functionality as we had gotten most the way there yet hit bumps.
* Include NAT gateway and Bastion Host in order to access instances within private subnet 
* Improve functionality and user design to increase professional look


## Acknowledgements
In memory of Shaquille Ricketts-Sesay

Trello : https://trello.com/b/C5f54Wkv/final-project-group-2 <br>
Jira Board: https://sshahid.atlassian.net/secure/RapidBoard.jspa?projectKey=GRP2&rapidView=5# <br>
