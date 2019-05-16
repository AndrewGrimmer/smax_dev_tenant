view: person {
  sql_table_name: view_321782990.person ;;

  dimension: id {
    primary_key: yes
    hidden:  yes
    type:  number
    sql:  ${TABLE}."ID" ;;
  }
  dimension: Name {
    type:  string
    sql: ${TABLE}."NAME" ;;
  }
}
