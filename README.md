<h1 align="center" style="border-bottom: none">
  <div>
    <a href="https://www.docuseal.co">
      <img  alt="DocuSeal" src="https://github.com/docusealco/docuseal/assets/5418788/c12cd051-81cd-4402-bc3a-92f2cfdc1b06" width="80" />
      <br>
    </a>
    DocuSeal
  </div>
</h1>
<h3 align="center">
  Open source document filling and signing
</h3>
<p align="center">
  <a href="https://hub.docker.com/r/docuseal/docuseal">
    <img alt="Docker releases" src="https://img.shields.io/docker/v/docuseal/docuseal">
  </a>
  <a href="https://discord.com/invite/B5wg5wKk">
    <img src="https://img.shields.io/discord/1125112641170448454?logo=discord"/>
  </a>
  <a href="https://twitter.com/intent/follow?screen_name=docusealco">
    <img src="https://img.shields.io/twitter/follow/docusealco?style=social" alt="Follow @docusealco" />
  </a>
</p>
<p>
DocuSeal is an open source platform that provides secure and efficient digital document signing and processing. Create PDF forms to have them filled and signed online on any device with an easy-to-use, mobile-optimized web tool.
</p>
<h2 align="center">
  <a href="https://demo.docuseal.co">✨ Live Demo</a>
</h2>

![preview](https://github.com/docusealco/docuseal/assets/5418788/d7a74971-c196-427a-972e-b16eab1ad738)

## Features
- [x] PDF form template builder (WYSIWYG)
- [x] Multiple submitters per document
- [x] Automated emails via SMTP
- [x] Files storage on AWS S3, Google Storage, or Azure
- [x] Automatic PDF eSignature
- [x] PDF validation
- [x] Users management
- [x] Mobile-optimized
- [x] Easy to deploy in minutes

## Deploy

| Heroku                                                                       | Railway                                                                      | DigitalOcean                                                                 |
| ---------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| [<img alt="Deploy on Heroku" src="https://www.herokucdn.com/deploy/button.svg" height="40">](https://heroku.com/deploy?template=https://github.com/docusealco/docuseal-heroku)   | [<img alt="Deploy on Railway" src="https://railway.app/button.svg" height="40">](https://railway.app/template/IGoDnc?referralCode=ruU7JR)             | [<img alt="Deploy on DigitalOcean" src="https://www.deploytodo.com/do-btn-blue.svg" height="40">](https://cloud.digitalocean.com/apps/new?repo=https://github.com/docusealco/docuseal/tree/master&refcode=421d50f53990) |


#### Docker

```sh
docker run --name docuseal -p 3000:3000 -v.:/data docuseal/docuseal
```

By default DocuSeal docker container uses an SQLite database to store data and configurations. Alternatively, it is possible use PostgreSQL or MySQL databases by specifying the `DATABASE_URL` env variable.

#### Docker Compose

Download docker-compose.yml into your private server:
```sh
curl https://raw.githubusercontent.com/docusealco/docuseal/master/docker-compose.yml > docker-compose.yml
```

Run docker compose under a custom domain over https (make sure your DNS points to the server to automatically issue ssl certs with Caddy):
```sh
HOST=your-domain-name.com docker-compose up
```

## License

DocuSeal is released under the GNU Affero General Public License v3.0.
