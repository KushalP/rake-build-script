Feature: mkdirs
  In order to build H5BP
  As a user
  I need the correct directories to be present

  @announce-stdout
  Scenario: make the directories
    Given a clean build
    When I run `h5bp mkdirs`
    Then it should make the required directories
    And the output should contain:
    """
    Creating directories...
    """
    And the exit status should be 0
