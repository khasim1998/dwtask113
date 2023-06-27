%dw 2.0
// Here i used the update function to update the given input based on my output Requirement.
output application/json skipNullOn = 'everywhere'
---
payload  update {
    case .Bank -> $
    case .IFS -> null
    case .SysID -> payload.IFS ++  payload.SysID[2 to -1] replace  " " with "-"
}