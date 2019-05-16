view: group {
  sql_table_name: view_321782990.persongroup ;;

  dimension: ID {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: NAME {
    label: "Group Name"
    type: string
    sql: ${TABLE}."NAME" ;;
  }
}
