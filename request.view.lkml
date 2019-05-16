view: request {
  sql_table_name: view_321782990.request ;;

 dimension: ID {
    description: "Ticket ID"
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: ASSIGNEDTOPERSON {
    description: "Assignee ID"
    type: number
    sql: ${TABLE}."ASSIGNEDTOPERSON" ;;
  }

 dimension: ASSIGNEDTOGROUP {
    description: "Assignement Group"
    type: string
    sql: ${TABLE}."ASSIGNEDTOGROUP" ;;
  }

  dimension: URGENCY {
    description: "Urgency"
    type: string
    sql: ${TABLE}."URGENCY" ;;
  }

  dimension:CREATETIME {
    label: "Open Time"
    type: date
    sql: ${TABLE}."CREATETIME" ;;
  }

  dimension: PRIORITY{
    label: "Priority"
    type:  string
    sql: ${TABLE}."PRIORITY" ;;
  }

  dimension: PHASEID {
    label: "Workflow Phase"
    type: string
    sql: ${TABLE}."PHASEID" ;;
  }

  dimension: STATUS {
    type: string
    sql: SUBSTRING(${TABLE}."STATUS", 14) ;;
  }

############### measure defintions ###############
  measure: URGENCYCOUNT {
    type: count
    drill_fields: [URGENCY]
  }
  measure: URGENCYSUM {
    type: count_distinct
    sql: ${TABLE}."URGENCY" ;;
    drill_fields: [URGENCYCOUNT]
  }
  measure: STATUSCOUNT {
    type: count
  }
}
