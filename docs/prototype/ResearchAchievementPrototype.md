# ResearchAchievementPrototype
*typename: `research-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player completes a specific research.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `technology` | `TechnologyID` | yes | Mandatory if `research_all` is not defined. Researching this technology will trigger the achievement. |
| `research_all` | `boolean` | yes | Mandatory if `technology` is not defined. This will only trigger if the player has learned every research in the game. |
