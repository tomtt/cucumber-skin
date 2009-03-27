Feature: Html File Formatter

  @tag1 @tag2
  Scenario: Generating files for each tag
    When I run cucumber-skin features -o tmp/features
    Then the directory examples/self_test/tmp/features should exist
    And the file examples/self_test/tmp/features/tag1.html should exist
    And the file examples/self_test/tmp/features/tag2.html should exist
