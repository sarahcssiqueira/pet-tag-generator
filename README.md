# Pet Tag Generator

[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Release Version](https://img.shields.io/github/release/sarahcssiqueira/pet-tag-generator.svg)](https://github.com/sarahcssiqueira/pet-tag-generator/releases/latest)
[![Support Level](https://img.shields.io/badge/support-may_take_time-yellow.svg)](#support-level)

Welcome to the Pet Tag Generator! This open-source project provides an easy way to create personalized pet tags with QR codes, ensuring your pets are always safe and secure.

## Features

- **Free and Easy**: Create pet tags at no cost.
- **Custom QR Codes**: Generate unique QR codes linked to a webpage with your pet's information.
- **Update Anytime**: Modify your pet’s information through the website as needed.
- **Secure**: Only authorized users can view or update the pet information.
- **Vet-Friendly**: Ideal for veterinarians to use in their consultories for providing clients with customizable pet tags.

## Getting Started

To get started with the Pet Tag Generator, follow these steps:

### Prerequisites

- Ruby (version `3.3.3` or later)
- Rails (version `7.2.1` or later)
- PostgreSQL (or your preferred database)
- Node.js and Yarn (for managing JavaScript dependencies)

### Installation

1. Clone the Repository

    `git clone https://github.com/your-username/pet-tag-generator.git`

    `cd -pet-tag-generator`


2. Install Gems

`bundle install`

3. Setup Database

```bash

rails db:create
rails db:migrate
rails db:seed
```

4. Run the Rails Server

`rails server`

Visit http://localhost:3000 in your browser to see the application in action.

### Usage

- Register Your Pet: Fill out a form with your pet’s details.
- Generate QR Code: Create and print a QR code linked to your pet’s information.
- Attach: Put the QR code on your pet’s collar or tag.
- Update Information: Log in to update your pet’s details as needed.

### Vet Use

Veterinarians can integrate this tool into their consultories, allowing pet owners to easily create and manage customized pet tags. This feature enhances the safety and security of pets and provides an additional service for clients.

### Deployment


### Contributing

We welcome contributions to enhance the Free Pet Tag Generator. To contribute:

- Fork the repository.
- Create a new branch (git checkout -b feature-branch).
- Commit your changes (git commit -am 'Add new feature').
- Push to the branch (git push origin feature-branch).
- Open a Pull Request.

### License

This project is licensed under the MIT License - see the LICENSE file for details.
Acknowledgements

- Bootstrap for styling.
- QR Code Libraries for QR code generation.

### Contact

For any questions or feedback, please open an issue on GitHub.