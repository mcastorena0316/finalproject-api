# Final Capstone Project Project API : Tracking app

<div align="center">

  <h1 color= "rgb(243, 190, 44)" font-size= "40"> illnest API </h1>
</div>

## Table of Contents

* [About the Project](#about-the-project)
* [The Back-End API](#the-back-end-api)
  * [How To Use it](#how-to-use-it)
* [Tecnologies used](#tecnologies-used)
* [Author](#author)
* [Show your Support](#show-your-support)
* [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->
## About The Project

The objective of this project was to create a tracking App in which a user is presented with a list of things to be measured. For the Front End, I used React and Ruby on Rails for the Back-End API.

Live version of the project: [Live version](https://illnest-api.herokuapp.com/)

Project Link: [Final-capstone API](https://github.com/mcastorena0316/finalproject-api)


<!-- THE BACKEND API -->
## The Back End API

The back-end for this project consists of a REST API that manages the illnest database. This database is integrated by the next tables:

1. User Table: For storing username, and encrypted password and password confirmation

2. Illness Table: For storing the name of the illness, and its description. It is depended on the user.

3. Tracking Table:  Include the daily information of the illness. This information includes:
* Temperature
* Mood
* Date
* Medicines
* Symptoms


<!-- HOW TO USE IT -->
### How to use it

You can always use the [live version](https://illnest-api.herokuapp.com/) or install it locally using these steps:


#### Clone my repository

`$ git clone https://github.com/mcastorena0316/finalproject-api`

#### Go to my project's folder

`$ cd finalproject-api`

#### Get the dependencies needed

`$ Bundle install`

#### Create and migrate the tables
`$ rails db:create`
`$ rails db:migrate`
`$ rails db:seed`

#### Start the server
`$ rails server`

<!-- TECNOLOGIES USED -->
## Tecnologies used

* Ruby on Rails
* Heroku
* Postgresql
* Rspec
* bcrypt

<!--AUTHOR -->
## Author
<table style="width:100%">
  <tr>
    <td>
      <div align="center">
        <a href="[./docs/img/photo.png](https://github.com/mcastorena0316)" target="_blank" rel="author">
          <img src="https://avatars0.githubusercontent.com/u/52794673?s=460&v=4" style="border-radius: 50%; min-width: 100px;" alt="meli castorena's Photo" width="200px">
        </a>
        <h2>
          <a href="https://mcastorena0316.github.io/portfolio/" target="_blank" rel="author">
              Melissa Castorena
          </a>
        </h2>
      </div>
    </td>
    <td>
      <div align="center">
       <a href="mcastorena0316@gmail.com" target="_blank" rel="author">
          <img src="https://img.icons8.com/color/48/000000/message-squared.png" style="border-radius: 10%" alt="My GitHub" height="45px">
          <h3>
              Email me to 
              <a href="mailto:mcastorena0316@gmail.com">
                  mcastorena0316@gmail.com
              </a>
          </h3>
        </a>
        <a href="https://www.linkedin.com/in/melissa-castorena/">
          <img src="https://img.icons8.com/color/48/000000/linkedin.png" alt="My Linkedin" height="45px">
          <h3>
              Connect to my Linkedin
          </h3>
        </a>
      </div>
    </td>
  </tr>
</table>

<!-- SHOW YOUR SUPPORT -->
## Show your Support

Give a star if you like this project!

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Microverse](https://www.microverse.org/)
