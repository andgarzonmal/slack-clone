<h3><b>Slack clone</b></h3>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
- [👥 Authors](#authors)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)

<!-- PROJECT DESCRIPTION -->

# 📖 [Slack-clone] <a name="Slack-clone"></a>

**[Slack-clone]** a messaging app for business that connects people to the information they need. By bringing people together to work as one unified team, Slack transforms the way organizations communicate.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://guides.rubyonrails.org/index.html">Ruby on rails</a></li>
  </ul>
  <ul>
    <li><a href="https://www.docker.com/">Docker</a></li>
  </ul>
  <ul>
    <li><a href="https://developer.mozilla.org/es/docs/Web/JavaScript">Javascript</a></li>
  </ul>
  <ul>
    <li><a href="https://github.com/heartcombo/devise">Devise</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[You can work on this project without needing to install any dependencie thanks to docker]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Docker desktop

### Setup

Clone this repository to your desired folder:

Example commands:

```sh
  cd my-folder
  git clone git@github.com:myaccount/my-project.git
```

-

### Install

Install this project with:

Example command:

```sh
  cd my-project
  bundle install
```

### Usage

To run the project, execute the following commands:

#### create Docker volumes

```
docker volume create --name drkiq-postgres
```

```
docker volume create --name drkiq-redis
```

#### Run Docker compose

```
docker compose up --build
```

At some point, it’s going to begin building the Rails application. You will eventually see the terminal output, including lines similar to these:
postgres_1 | ...
redis_1 | ...
drkiq_1 | ...
sidekiq_1 | ...
nginx_1 | ...

You will notice that the drkiq_1 container threw an error saying the database doesn’t exist. This is a completely normal error to expect when running a Rails application because we haven’t initialized the database yet.

#### Initialize the database

Hit CTRL+C in the terminal to stop everything. If you see any errors, you can safely ignore them.

Run the following commands to initialize the database:

```
docker­ compose run drkiq rake db:reset
```

```
docker­ compose run drkiq rake db:migrate
```

#### Start using the project

Run the following command to initialize the project:

```
docker compose up
```

your app will be running in localhost:8020

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Andres Garzon Maldonado**

- GitHub: [@githubhandle](https://github.com/andgarzonmal)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/andres-garzon-maldonado/)

👤 **Nicolas Mariño Parra**

- GitHub: [@githubhandle](https://github.com/nicolasmarino99)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/nicol%C3%A1s-mari%C3%B1o-parra-45a707177/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Live chat]**
- [ ] **[live videocalls]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Write a message to encourage readers to support your project

If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>
