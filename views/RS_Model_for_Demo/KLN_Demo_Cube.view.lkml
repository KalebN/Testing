view: KLN_Demo_Cube {
  label: "KLN Demo Cube"
  sql_table_name: "RS Model for Demo"."KLN Demo Cube";;
  dimension: Color_Product_Color {
    label: "Color"
    type: string
    sql: ${TABLE}.`Product_Color`;;
  }

  dimension: Size_Product_Size {
    label: "Size"
    type: string
    sql: ${TABLE}.`Product_Size`;;
  }

  dimension: Style_Product_Style {
    label: "Style"
    type: string
    sql: ${TABLE}.`Product_Style`;;
  }

  dimension: Weight {
    label: "Weight"
    type: string
    sql: ${TABLE}.`Weight`;;
  }

  dimension: Customer_Gender {
    label: "Gender"
    group_label: "Customer Attributes"
    type: string
    sql: ${TABLE}.`Customer_Gender`;;
  }

  dimension: Customer_Occupation {
    label: "Occupation"
    group_label: "Customer Attributes"
    type: string
    sql: ${TABLE}.`Customer_Occupation`;;
  }

  dimension: Customer_Dimension_Customer_City {
    label: "   City"
    group_label: "Customer Dimension"
    type: string
    sql: ${TABLE}.`Customer_City`;;
    drill_fields: [Customer_Dimension_Customer_Postal_Code]
  }

  dimension: Customer_Dimension_Customer_Country_Region {
    label: "     Country/Region"
    group_label: "Customer Dimension"
    type: string
    sql: ${TABLE}.`Customer_Country/Region`;;
    drill_fields: [Customer_Dimension_Customer_State_Province]
  }

  dimension: Customer_Dimension_Customer_Name {
    label: " Customer"
    group_label: "Customer Dimension"
    type: string
    sql: ${TABLE}.`Customer_Name`;;
  }

  dimension: Customer_Dimension_Customer_Postal_Code {
    label: "  Postal Code"
    group_label: "Customer Dimension"
    type: string
    sql: ${TABLE}.`Customer_Postal_Code`;;
    drill_fields: [Customer_Dimension_Customer_Name]
  }

  dimension: Customer_Dimension_Customer_State_Province {
    label: "    State/Province"
    group_label: "Customer Dimension"
    type: string
    sql: ${TABLE}.`Customer_State/Province`;;
    drill_fields: [Customer_Dimension_Customer_City]
  }

  dimension: Time_YQMD_Order_YQMD_Date {
    label: " Order Date"
    group_label: "Order Time YQMD"
    type: date
    sql: ${TABLE}.`Order YQMD_Date`;;
  }

  dimension: Time_YQMD_Order_YQMD_Month {
    label: "  Order Month"
    group_label: "Order Time YQMD"
    type: date_month
    sql: ${TABLE}.`Order YQMD_Month`;;
    drill_fields: [Time_YQMD_Order_YQMD_Date]
  }

  dimension: Time_YQMD_Order_YQMD_Quarter {
    label: "   Order Quarter"
    group_label: "Order Time YQMD"
    type: date_quarter
    sql: ${TABLE}.`Order YQMD_Quarter`;;
    drill_fields: [Time_YQMD_Order_YQMD_Month]
  }

  dimension: Time_YQMD_Order_YQMD_Year {
    label: "    Order Year"
    group_label: "Order Time YQMD"
    type: date_year
    sql: ${TABLE}.`Order YQMD_Year`;;
    drill_fields: [Time_YQMD_Order_YQMD_Quarter]
  }

  dimension: Time_YWD_Order_YWD_Date {
    label: " Order Date"
    group_label: "Order Time YWD"
    type: date
    sql: ${TABLE}.`Order YWD_Date`;;
  }

  dimension: Time_YWD_Order_YWD_Week {
    label: "  Order Week"
    group_label: "Order Time YWD"
    type: date_week
    sql: ${TABLE}.`Order YWD_Week`;;
    drill_fields: [Time_YWD_Order_YWD_Date]
  }

  dimension: Time_YWD_Order_YWD_Year {
    label: "   Order Year"
    group_label: "Order Time YWD"
    type: date_year
    sql: ${TABLE}.`Order YWD_Year`;;
    drill_fields: [Time_YWD_Order_YWD_Week]
  }

  dimension: Product_Dimension_Product_Category {
    label: "   Product Category"
    group_label: "Product Dimension"
    type: string
    sql: ${TABLE}.`Product_Category`;;
    drill_fields: [Product_Dimension_Product_Subcategory]
  }

  dimension: Product_Dimension_Product_Name {
    label: " Product"
    group_label: "Product Dimension"
    type: string
    sql: ${TABLE}.`Product_Name`;;
  }

  dimension: Product_Dimension_Product_Subcategory {
    label: "  Product Subcategory"
    group_label: "Product Dimension"
    type: string
    sql: ${TABLE}.`Product_Subcategory`;;
    drill_fields: [Product_Dimension_Product_Name]
  }

  dimension: Time_YQMD_Ship_YQMD_Date {
    label: " Ship Date"
    group_label: "Ship Time YQMD"
    type: date
    sql: ${TABLE}.`Ship YQMD_Date`;;
  }

  dimension: Time_YQMD_Ship_YQMD_Month {
    label: "  Ship Month"
    group_label: "Ship Time YQMD"
    type: date_month
    sql: ${TABLE}.`Ship YQMD_Month`;;
    drill_fields: [Time_YQMD_Ship_YQMD_Date]
  }

  dimension: Time_YQMD_Ship_YQMD_Quarter {
    label: "   Ship Quarter"
    group_label: "Ship Time YQMD"
    type: date_quarter
    sql: ${TABLE}.`Ship YQMD_Quarter`;;
    drill_fields: [Time_YQMD_Ship_YQMD_Month]
  }

  dimension: Time_YQMD_Ship_YQMD_Year {
    label: "    Ship Year"
    group_label: "Ship Time YQMD"
    type: date_year
    sql: ${TABLE}.`Ship YQMD_Year`;;
    drill_fields: [Time_YQMD_Ship_YQMD_Quarter]
  }

  dimension: Time_YWD_Ship_YWD_Date {
    label: " Ship Date"
    group_label: "Ship Time YWD"
    type: date
    sql: ${TABLE}.`Ship YWD_Date`;;
  }

  dimension: Time_YWD_Ship_YWD_Week {
    label: "  Ship Week"
    group_label: "Ship Time YWD"
    type: date_week
    sql: ${TABLE}.`Ship YWD_Week`;;
    drill_fields: [Time_YWD_Ship_YWD_Date]
  }

  dimension: Time_YWD_Ship_YWD_Year {
    label: "   Ship Year"
    group_label: "Ship Time YWD"
    type: date_year
    sql: ${TABLE}.`Ship YWD_Year`;;
    drill_fields: [Time_YWD_Ship_YWD_Week]
  }


  measure: Measure_Average_Sale_Price {
    label: "Average Sale Price"
    group_label: "Sales Metrics"
    value_format: "#.####"
    type: average
    sql: ${TABLE}.`Measure_Average_Sale_Price`;;
  }

  measure: Measure_Customer_Count_Estimate {
    label: "Customer Count Estimate"
    group_label: "Sales Metrics"
    value_format: "#.####"
    drill_fields: [DT1*]
    type: count_distinct
    sql: ${TABLE}.`Measure_Customer_Count_Estimate`;;
  }

  measure: Measure_Next_Period_Sales_Amount_Order_YQMD {
    label: "Next Period Sales Amount - Order YQMD"
    group_label: "Sales Metrics"
    description: "The Sales Amount for the next period based on Order YQMD hierarchy"
    value_format: "$#,##0.00"
    type: average
    sql: ${TABLE}.`Measure_Next_Period_Sales_Amount_Order_YQMD`;;
  }

  measure: Measure_Order_Quantity {
    label: "Order Quantity"
    group_label: "Sales Metrics"
    value_format: "#.####"
    drill_fields: [DT1*,DT2*]
    type: sum
    sql: ${TABLE}.`Measure_Order_Quantity`;;
  }

  measure: Measure_Previous_Period_Sales_Amount_Order_YQMD {
    label: "Previous Period Sales Amount - Order YQMD"
    group_label: "Sales Metrics"
    description: "Previous period Sales Amount  for Order YQMD hierarchy"
    value_format: "$#,##0.00"
    type: average
    sql: ${TABLE}.`Measure_Previous_Period_Sales_Amount_Order_YQMD`;;
  }

  measure: Measure_Sales_Amount_No_Reason {
    label: "Sales  Amount -  No Reason"
    group_label: "Sales Metrics"
    value_format: "#.####"
    type: sum
    sql: ${TABLE}.`Measure_Sales_Amount_No_Reason`;;
  }

  measure: Measure_Sales_No_Reason_Share {
    label: "Sales - No Reason Share"
    group_label: "Sales Metrics"
    value_format: "0.00%"
    type: average
    sql: ${TABLE}.`Measure_Sales_No_Reason_Share`;;
  }

  measure: Measure_Sales_Amount {
    label: "Sales Amount"
    group_label: "Sales Metrics"
    value_format: "''$''#,##0.00"
    drill_fields: [DT2*]
    type: sum
    sql: ${TABLE}.`Measure_Sales_Amount`;;
  }

  measure: Measure_Sales_Amount_Growth_Previous_Period_Order_YQMD {
    label: "Sales Amount Growth - Previous Period Order YQMD"
    group_label: "Sales Metrics"
    description: "Growth of Sales Amount compared to previous period in Order YQMD hierarchy"
    value_format: "$#,##0.00"
    type: average
    sql: ${TABLE}.`Measure_Sales_Amount_Growth_Previous_Period_Order_YQMD`;;
  }

  measure: Measure_Sales_Tax {
    label: "Sales Tax"
    group_label: "Sales Metrics"
    value_format: "#.####"
    drill_fields: [DT2*]
    type: sum
    sql: ${TABLE}.`Measure_Sales_Tax`;;
  }

  set: DT1 {
    fields: [Customer_Dimension_Customer_Country_Region,Time_YQMD_Order_YQMD_Year,Product_Dimension_Product_Category,Measure_Customer_Count_Estimate,Measure_Order_Quantity]
  }

  set: DT2 {
    fields: [Time_YQMD_Ship_YQMD_Year,Time_YQMD_Ship_YQMD_Quarter,Time_YQMD_Ship_YQMD_Month,Product_Dimension_Product_Category,Product_Dimension_Product_Subcategory,Product_Dimension_Product_Name,Measure_Order_Quantity,Measure_Sales_Amount,Measure_Sales_Tax]
  }

}
