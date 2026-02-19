# Koyeb CLI Surface (authoritative local contract)

- Captured (UTC): 20260219T132708Z
- Host: cosi-node1
- Koyeb CLI version:
```
5.9.0
```

## Top-level help
```
Koyeb CLI

Usage:
  koyeb [command]

Available Commands:
  apps                 Apps
  archives             Archives
  completion           Generate completion script
  compose              Create Koyeb resources from a koyeb-compose.yaml file
  databases            Databases
  deploy               Deploy a directory to Koyeb
  deployments          Deployments
  domains              Domains
  help                 Help about any command
  instances            Instances
  login                Login to your Koyeb account
  metrics              Metrics
  organizations        Organization
  regional-deployments Regional deployments
  secrets              Secrets
  services             Services
  snapshots            Manage snapshots
  version              Get version
  volumes              Manage persistent volumes

Flags:
  -c, --config string         config file (default is $HOME/.koyeb.yaml)
  -d, --debug                 enable the debug output
      --debug-full            do not hide sensitive information (tokens) in the debug output
      --force-ascii           only output ascii characters (no unicode emojis)
      --full                  do not truncate output
  -h, --help                  help for koyeb
      --organization string   organization ID
  -o, --output output         output format (yaml,json,table)
      --token string          API token
      --url string            url of the api (default "https://app.koyeb.com")

Use "koyeb [command] --help" for more information about a command.
```

## Group help (captured opportunistically; missing groups are noted)

### koyeb apps --help
```
Apps

Usage:
  koyeb apps [command]

Aliases:
  apps, a, app

Available Commands:
  create      Create app
  delete      Delete app
  describe    Describe app
  get         Get app
  init        Create app and service
  list        List apps
  pause       Pause app
  resume      Resume app
  update      Update app

Flags:
  -h, --help   help for apps

Global Flags:
  -c, --config string         config file (default is $HOME/.koyeb.yaml)
  -d, --debug                 enable the debug output
      --debug-full            do not hide sensitive information (tokens) in the debug output
      --force-ascii           only output ascii characters (no unicode emojis)
      --full                  do not truncate output
      --organization string   organization ID
  -o, --output output         output format (yaml,json,table)
      --token string          API token
      --url string            url of the api (default "https://app.koyeb.com")

Use "koyeb apps [command] --help" for more information about a command.
```

### koyeb services --help
```
Services

Usage:
  koyeb services [command]

Aliases:
  services, s, svc, service

Available Commands:
  create            Create service
  delete            Delete service
  describe          Describe service
  exec              Run a command in the context of an instance selected among the service instances
  get               Get service
  list              List services
  logs              Get the service logs
  pause             Pause service
  redeploy          Redeploy service
  resume            Resume service
  unapplied-changes Show unapplied changes saved with the --save-only flag, which will be applied in the next deployment
  update            Update service

Flags:
  -h, --help   help for services

Global Flags:
  -c, --config string         config file (default is $HOME/.koyeb.yaml)
  -d, --debug                 enable the debug output
      --debug-full            do not hide sensitive information (tokens) in the debug output
      --force-ascii           only output ascii characters (no unicode emojis)
      --full                  do not truncate output
      --organization string   organization ID
  -o, --output output         output format (yaml,json,table)
      --token string          API token
      --url string            url of the api (default "https://app.koyeb.com")

Use "koyeb services [command] --help" for more information about a command.
```

### koyeb deployments --help
```
Deployments

Usage:
  koyeb deployments [command]

Aliases:
  deployments, d, dep, depl, deployment

Available Commands:
  cancel      Cancel deployment
  describe    Describe deployment
  get         Get deployment
  list        List deployments
  logs        Get deployment logs

Flags:
  -h, --help   help for deployments

Global Flags:
  -c, --config string         config file (default is $HOME/.koyeb.yaml)
  -d, --debug                 enable the debug output
      --debug-full            do not hide sensitive information (tokens) in the debug output
      --force-ascii           only output ascii characters (no unicode emojis)
      --full                  do not truncate output
      --organization string   organization ID
  -o, --output output         output format (yaml,json,table)
      --token string          API token
      --url string            url of the api (default "https://app.koyeb.com")

Use "koyeb deployments [command] --help" for more information about a command.
```

### koyeb logs --help
```
(group not present in this CLI version)
```
