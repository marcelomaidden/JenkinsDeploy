[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/marcelomaidden/JenkinsDeploy">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Jenkins with Docker</h3>

  <p align="center">
    In this project we build an DockerInDocker image based on the base jenkins/jenkins official image
    available on Docker Hub
    <br />
    <a href="https://github.com/marcelomaidden/JenkinsDeploy"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/marcelomaidden/JenkinsDeploy">View Demo</a>
    ·
    <a href="https://github.com/marcelomaidden/JenkinsDeploy/issues">Report Bug</a>
    ·
    <a href="https://github.com/marcelomaidden/JenkinsDeploy/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This project is intended to create an image of Jenkins wich use Docker In Docker,
so you can create pipelines that uses Docker to build images before deploying it.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* [Docker](https://docs.docker.com/)
* [Jenkins](https://www.jenkins.io/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

Inside the folder jenkins there is a bash script file `build.sh`.
It accepts 2 parameters, the first one is your docker user and the second one
the build number for the image you're building.

```bash
  cd jenkins
  bash build.sh marcelomaidden 1.0
```

After running it, type the `docker images` command and you should see a image built like so

```bash
  marcelomaidden/jenkins_with_docker:1.0
```

Last but not least, you will have a running container from the Jenkins with Docker included in the image.


```bash
  docker ps -a | grep jenkins
```

On your preferred browser, use the URL [http://localhost:9090](http://localhost:9090) to setup your Jenkins.

### Prerequisites

* [Docker](https://docs.docker.com/)

### Installation

Follow the [instructions to install](https://docs.docker.com/get-docker/) present the official Docker website


<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/marcelomaidden/JenkinsDeploy/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

Marcelo - [@marcelomaidden](https://twitter.com/marcelomaidden) - marcelomaidden@gmail.com

Project Link: [https://github.com/marcelomaidden/JenkinsDeploy](https://github.com/marcelomaidden/JenkinsDeploy)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

* [Build a Jenkins image with Docker](https://www.jenkins.io/doc/book/installing/docker/)
* [README template](https://github.com/othneildrew/Best-README-Template)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/marcelomaidden/JenkinsDeploy.svg?style=for-the-badge
[contributors-url]: https://github.com/marcelomaidden/JenkinsDeploy/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/marcelomaidden/JenkinsDeploy.svg?style=for-the-badge
[forks-url]: https://github.com/marcelomaidden/JenkinsDeploy/network/members
[stars-shield]: https://img.shields.io/github/stars/marcelomaidden/JenkinsDeploy.svg?style=for-the-badge
[stars-url]: https://github.com/marcelomaidden/JenkinsDeploy/stargazers
[issues-shield]: https://img.shields.io/github/issues/marcelomaidden/JenkinsDeploy.svg?style=for-the-badge
[issues-url]: https://github.com/marcelomaidden/JenkinsDeploy/issues
[license-shield]: https://img.shields.io/github/license/marcelomaidden/JenkinsDeploy.svg?style=for-the-badge
[license-url]: https://github.com/marcelomaidden/JenkinsDeploy/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/marcelofernandesdearaujo/