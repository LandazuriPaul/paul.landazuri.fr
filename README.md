# Paul Landázuri's little corner of the web

This is the source code for my personal website: [https://paul.landazuri.fr](https://paul.landazuri.fr).

It is a static website generated using [Hugo](https://gohugo.io/)
and the [Nightfall theme](https://github.com/LordMathis/hugo-theme-nightfall).

## Local development

To run this website locally, follow the steps below:

1. Install the extended version of Hugo: see [official documentation](https://gohugo.io/installation/).
2. Install Dart Sass: see [official documentation](https://gohugo.io/hugo-pipes/transpile-sass-to-css/#dart-sass).
3. Run the Hugo server: `hugo server -D`

## Deployment & Continuous Integration (CI)

This website is containerised using [Docker](https://www.docker.com/) (see the [Dockerfile](./Dockerfile))
and deployed on my personal [microk8s](https://microk8s.io/) cluster.

For efficiency reasons, the website is not built in an extra Dockerfile stage.
Instead, this project leverages the GitHub Actions (see [main.yaml](./.github/workflows/main.yaml))
and simply copies the generated `public` folder into the [NGINX](https://www.nginx.com/) webserver,
which is configured to optimise speed with caching and file compression (see [nginx.conf](./nginx.conf)).
