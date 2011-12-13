<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template name="template-release">h2. Release Metrics

| &amp;nbsp; | Points | Stories |
| In Release | {{value query: SELECT SUM('Story Points Total') WHERE Type = Story AND Release = THIS CARD}} | {{value query: SELECT COUNT(*) WHERE Type = Story AND Release = THIS CARD}} |
| Completed | {{value query: SELECT SUM('Story Points Total') WHERE Type = Story AND Release = THIS CARD AND Status = Accepted}} |  {{value query: SELECT COUNT(*) WHERE Type = Story AND Release = THIS CARD AND Status = Accepted}} |

&lt;br&gt;

{% two-columns %}
  {% left-column %}
    {% dashboard-half-panel %}
 {% panel-heading %}Team Velocity for this release{% panel-heading %}
 {% panel-content %}
{{
  stack-bar-chart
    chart-height: 300
    chart-width: 430
    plot-height: 175
    plot-width: 285
    legend-max-width: 100
    y-title: Done and Total Release
    x-title: Sprint

    conditions: type = Story
    labels: SELECT DISTINCT Sprint ORDER BY Sprint
    three-d: true
    cumulative: false
    series: 
    - label: Total Points not Done
      combine: overlay-bottom
      color: red
      data: SELECT 'Sprint', SUM('Story Points Total') WHERE Release = THIS CARD AND Status &lt; 'Accepted' AND Sprint != NULL

    - label: Total Points Done
      combine: overlay-bottom
      color: green
      data: SELECT 'Sprint', SUM('Story Points Total') WHERE Release = THIS CARD AND Status = 'Accepted' AND Sprint != NULL
}}
 {% panel-content %}
    {% dashboard-half-panel %}
  {% left-column %}
  {% right-column %}
    {% dashboard-half-panel %}
      {% panel-heading %}Status Percentage of commitment level 'Int. HIGH'{% panel-heading %}
      {% panel-content %}
        {{
          pie-chart
            data: SELECT status, count(*) WHERE type = story AND 'commitment level'= 'Int. HIGH' AND  release = THIS CARD
        }}
      {% panel-content %}
    {% dashboard-half-panel %}
  {% right-column %}
{% two-columns %}

{% dashboard-panel %}
 {% panel-heading %}Release and Products Burnup - This Release {% panel-heading %}
 {% panel-content %}
{{ 
  data-series-chart  
    conditions: 'Type' = 'Story' 
    x-title: Sprint
    y-title: Total Story Points
    show-start-label: true
    data-point-symbol: diamond
    data-labels: true    
    cumulative: true
    chart-height: 500
    chart-width: 920
    plot-height: 375
    plot-width: 730
    series: 
    - label: Total Release Done
      color: grey
      data: SELECT 'Sprint', SUM('Story Points Total') WHERE Status = 'Accepted' AND Release = THIS CARD
    - label: Total Release Scope
      color: black
      data: SELECT 'Sprint', SUM('Story Points Total')

    - label: Switch Done
      color: SkyBlue
      trend: false
      trend-line-width: 2
      data: SELECT 'Sprint', SUM('Story Points Total') WHERE Status = 'Accepted'  AND 'Product Name' = 'Switch' AND Release=THIS CARD
    - label: Switch
      color: blue
      trend: false
      trend-line-width: 2
      data: SELECT 'Sprint', SUM('Story Points Total') WHERE 'Product Name' = 'Switch' AND Release=THIS CARD
}}

 {% panel-content %}
{% dashboard-panel %}

h2. Completed stories in this release

{{table query: SELECT Number, Name, Status, Sprint, 'Story Points Total', 'Sprint Completed' WHERE Type = Story AND Status = Accepted AND Release = THIS CARD}}


h2. Open stories in this release

{{table query: SELECT Number, Name, Status, Sprint, 'Story Points Total' WHERE Type = Story AND Status != Accepted AND Release = THIS CARD ORDER BY Sprint}}
</xsl:template>
</xsl:stylesheet>