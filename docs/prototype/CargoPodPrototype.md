# CargoPodPrototype
*typename: `cargo-pod`*
*extends: `EntityWithOwnerPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `default_graphic` | `ProcessionGraphic` | yes | Has to be of type 'pod-catalogue'. |
| `default_shadow_graphic` | `ProcessionGraphic` | yes | Has to be of type 'pod-catalogue'. |
| `procession_graphic_catalogue` | `ProcessionGraphicCatalogue` | yes |  |
| `procession_audio_catalogue` | `ProcessionAudioCatalogue` | yes |  |
| `shadow_slave_entity` | `EntityID` | yes |  |
| `inventory_size` | `ItemStackIndex` | no |  |
| `spawned_container` | `EntityID` | no |  |
| `impact_trigger` | `Trigger` | yes |  |
