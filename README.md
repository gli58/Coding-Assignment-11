# Coding Assignment 11 – Docker File

This repository contains a React app and a Dockerfile for running it inside a Docker container.
The app runs on **http://127.0.0.1:7775** and shows an `<h1>` with the text **Codin 1**.

## Build the image
From the project root folder, run:

```bash
docker build -t li_gavin_coding_assignment11:dev .

## Run the container
Start the container with:

```bash
docker run --rm --name "li_gavin_coding_assignment11" -p 7775:7775 li_gavin_coding_assignment11:dev

## Verify

Open your browser at:

http://127.0.0.1:7775

You should see a page with Codin 1.
Stop the container with Ctrl + C.

## Notes

The working directory inside the container is Li_Gavin_site (assignment requirement).

The container is named li_gavin_coding_assignment11 and exposes port 7775.