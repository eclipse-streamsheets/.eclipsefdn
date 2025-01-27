local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('iot.streamsheets', 'eclipse-streamsheets') {
  settings+: {
    packages_containers_internal: false,
    packages_containers_public: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('streamsheets') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "javascript",
        "javascript-typescript",
        "typescript"
      ],
      code_scanning_default_setup_enabled: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "An open-source tool for processing stream data using a spreadsheet-like interface.",
      homepage: "https://docs.cedalo.com/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "apis",
        "automated",
        "automation",
        "development",
        "docker",
        "integrations",
        "javascript",
        "mqtt",
        "no-code",
        "node",
        "nodejs",
        "raspberry-pi",
        "react",
        "reactjs",
        "streamsheets",
        "workflow",
        "workflow-automation"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
}
