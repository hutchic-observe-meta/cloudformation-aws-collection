# 0.1.0 (2023-08-22)


### Bug Fixes

* add changelog config ([b549a8f](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/b549a8f1c3da56a15b2c775ac0449e21991bda79))
* Add cloudformation:List to the default parameter value of EventBridgeSnapshotConfig. ([9ed87d5](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/9ed87d596704b756d76799e2c03763b43b295e62))
* adjust bucket ownership to allow ACLs ([#12](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/12)) ([bd21e1b](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/bd21e1b886ac72d140d8183a05bce7358efe96a3))
* **collection:** add organizations:List* back to snapshot ([#34](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/34)) ([6a900c5](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/6a900c501bbf4a9aa179a4ebaac417ea90a402ad))
* **collection:** allow configuration of lambda log verbosity ([#29](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/29)) ([269db50](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/269db50e0641a510a26af8bbeff0a124dd22069c))
* **collection:** generate snapshot rule name ([#20](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/20)) ([a828813](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/a828813bbcd775fd84cb3e0781cc4fc3a5b6284e))
* **controltower:** default to unreserved concurrent executions ([#15](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/15)) ([554115f](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/554115f1a559dc38da3a56ed91fbf3a0cbe784e8))
* **controltower:** manage lambda log group ([#16](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/16)) ([61e35c8](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/61e35c8eef01e30fd2bfd676aa36348be8734246))
* **controltower:** rename SNS topic to match stack name ([#17](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/17)) ([5412432](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/5412432453628e0c2b2fbe7b7a3520ff781d6071))
* **default-services:** remove services from the default list refs: OB-21129 ([#27](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/27)) ([9856ea7](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/9856ea7f9bea88f6c96f9f778da5d3917aaccb96))
* **lambda:** bump timeout and memory size based on failure data ([841be86](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/841be865e9190c947aea19c8982541c6acade307))
* make sure lambda log group is successfully deleted on rollback ([#32](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/32)) ([e5b8b99](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/e5b8b99ace7e3b1d8507d5953f3fdf8e6d6e0aeb)), closes [#21](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/21) [#21](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/21)
* remove duplicate log subscription ([#25](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/25)) ([49ceddb](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/49ceddbaa85682eabb77c518b88785abda157d8b))
* support empty param TrailHasExcludeManagementEventSources ([#4](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/4)) ([61ee60b](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/61ee60b0a99a2afe912c5d9ce8d687c225a82fc0))
* update manifests to latest version ([af7bf00](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/af7bf0015f13baa69fe08865bbb389c31450804b))


### Features

* add -latest.yaml manifests ([#2](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/2)) ([f8a6c2f](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/f8a6c2fc0f5b61f06678136bf4835c5fdea2f1f7))
* Add Central Logging Control Tower CF ([8cd3124](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/8cd3124dd30ae3e04e73e7be896c9b1f222d8c98))
* add Cloudwatch Metrics pull example ([#9](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/9)) ([16d5efc](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/16d5efcc887c7a3eee5b00bf85a58b7438a1b3f2))
* **collection:** allow configuration of lambda name ([#21](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/21)) ([383f0e9](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/383f0e9566d8b78c5172df232599e0d78d5210ea))
* **controltower:** allow configuration of logging verbosity ([#18](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/18)) ([1a3e7ff](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/1a3e7ffd2337a3b0629d027832e491587ecc6f93))
* **controltower:** allow lambda to request delivery of config snapshot ([#14](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/14)) ([c099f80](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/c099f80a06a1eb094064ea72dd953ba7ec652822))
* **controltower:** capture config snapshot on subscribe ([#19](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/19)) ([a0eef92](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/a0eef9252badff9f24591bc887028a5e4528b77c))
* enable log delivery to S3 via canned ACL ([#7](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/7)) ([9854bc5](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/9854bc5548711e596c3016197246614649fd4bbd))
* force a release bump ([162cf3c](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/162cf3cb084598eb360a98edb3e6e577e5f819ad))
* initial version-able templates ([81f21c7](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/81f21c7d1d498da15ad91a359d440197c4af8f8e))
* metric stream disable ([#8](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/8)) ([2bd194e](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/2bd194e3937b9e814d6d960ee0536b4b4f3fb58b))
* parameter to disable metric stream ([#8](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/8)) ([2f38cae](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/2f38cae4818e2e2567fb97564ce38b9325836d57))
* parameter to exclude kms/rds cloudtrail events ([#3](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/3)) ([98caf37](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/98caf37778b309a101c94dce24027a3ba6f463b9))
* release automation through github actions ([3f8f576](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/3f8f576391734425ceb43fc59edf4465a037c53a))


### Performance Improvements

* exclude some cloudtrail events from eventbridge rules ([#10](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/issues/10)) ([fced17d](https://github.com/hutchic-observe-meta/cloudformation-aws-collection/commit/fced17d0306450e5e29b2d1f06e7899dd87ffc18))



