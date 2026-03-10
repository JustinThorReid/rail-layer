# TemporaryContainerPrototype
*typename: `temporary-container`*
*extends: `ContainerPrototype`*

A container that can automatically destroy itself when it is emptied or after it has existed for a
certain time.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `destroy_on_empty` | `boolean` | yes | Whether the container is automatically destroyed when it is emptied. |
| `time_to_live` | `uint32` | yes | Duration after which the container and its contents are automatically destroyed. In ticks, 0 for infinite. |
| `alert_after_time` | `uint32` | yes | If the container has existed for this long, [an alert](prototype:UtilitySprites::unclaimed_cargo_icon) is show on it.... |
