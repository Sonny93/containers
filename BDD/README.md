# DB Backups

## Setup

copy and edit .env file

> cp example.env .env

## Crontab

Create new crontab

> crontab -e

and set for exemple `00 23 * * * 00 23 * * * /docker/BDD/backup.sh` (dont forget to change path)