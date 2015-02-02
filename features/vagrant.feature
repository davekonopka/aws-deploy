Feature: Development vm is serving expected web content

    Scenario: Ensure expected web content is accessible from host
        Given development vm is up and provisioned
        When I browse to vm ip 192.168.55.2
        Then I should see "Word"
