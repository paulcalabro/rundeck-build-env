### Setup Instructions

* Set up access to AWS:
  * More information can be found [here](https://kitchen.ci/docs/drivers/aws/#aws-authentication).
* Install Test Kitchen:
  * `bundle config set --local path 'vendor/bundle'`
  * `bundle install`

### Build Instructions

* Run the Test Kitchen provisioner:
  * `bundle exec kitchen converge`
    * [Download the WAR file](https://github.com/paulcalabro/rundeck-build-env/blob/4808c1d4cbc6a45c96733962216e3a13b784005c/kitchen.yml#L26-L29).
