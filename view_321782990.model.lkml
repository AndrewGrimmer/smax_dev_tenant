connection: "greenlight_smax_aws"

include: "*.view.lkml"

explore:request {
  join: person{
    type: left_outer
    sql_on: ${request.ASSIGNEDTOPERSON} = ${person.id} ;;
    relationship: one_to_one
  }
  join: group {
    type: left_outer
    sql_on: ${request.ASSIGNEDTOGROUP} = ${group.ID}  ;;
    relationship: one_to_one
  }
}

explore: person {}

explore: group {}

explore: incident {
  join: person{
    type: left_outer
    sql_on: ${incident.ASSIGNEDPERSON} = ${person.id} ;;
    relationship: one_to_one
  }
  join: group {
    type: left_outer
    sql_on: ${incident.ASSIGNEDGROUP} = ${group.ID}  ;;
    relationship: one_to_one
  }
}
