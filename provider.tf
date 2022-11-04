terraform {
  required_providers {
    newrelic = {
        source = "newrelic/newrelic"
        version = "3.2.1"
        # version = "3.5.0"
    }
  }
}

provider "newrelic" {
#   account_id = 3627436  # Your New Relic accNRAK-KAA0NS59T13Eount ID
#   api_key = "NRAK-JC08DMMZR3IF1DYMELC1KWEM571" # Your New Relic user key
  account_id = secrets.NEW_RELIC_API_KEY  # Your New Relic accNRAK-KAA0NS59T13Eount ID
  api_key = secrets.NEW_RELIC_ACCOUNT_ID # Your New Relic user key
  region  = "US"        # US or EU (defaults to US)
}