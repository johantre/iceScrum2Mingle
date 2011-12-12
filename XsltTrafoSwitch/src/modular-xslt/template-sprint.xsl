<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template name="template-sprint" >

h2. Burndown

{{
   data-series-chart
    conditions: 'Type' = Story AND 'Sprint' = THIS CARD
    cumulative: true

    x-labels-start: THIS CARD.Start Date
    x-labels-end: THIS CARD.End Date
    x-labels-step: 1
    chart-width: 800
    plot-width: 550
    chart-height: 350
    series:
  
    - label: Stories complete
      color: red
      data: SELECT 'Moved to Accepted on', SUM('Story Points Total')
      trend: true
      trend-line-width: 1
      down-from: SELECT SUM('Story Points Total') WHERE Status = 'Accepted'
}}


h2. Stories - Accepted this Sprint

{{table query: SELECT Number, Name, Status, 'Story Points Total', 'Moved to Accepted on' WHERE Type = Story AND Sprint = THIS CARD AND Status = Accepted}}


h2. Stories - Dev Complete this Sprint

{{table query: SELECT Number, Name, Status, 'Story Points Total' WHERE Type = Story AND Sprint = THIS CARD AND Status &gt; 'In Development' AND Status != Accepted}}


h2. Other Stories in this Sprint

{{table query: SELECT Number, Name, Status, 'Story Points Total' WHERE Type = Story AND Sprint = THIS CARD AND Status &lt; 'Ready for Testing'}}</xsl:template>
</xsl:stylesheet>