connection: "greenlight_smax_aws"

include: "*.view.lkml"

explore:request {
  join: person{
    type: left_outer
    sql_on: ${request.ASSIGNEDTOPERSON} = ${person.id} ;;
    relationship: one_to_one
  }
}

explore: person {}
