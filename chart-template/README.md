# instructions for package structure 

mychart  #root package<br>
&nbsp;Chart.yaml #chart information<br>
&nbsp;values.yaml #default setting value <br>
&nbsp;charts/ #subcharts witch depends on<br>
&nbsp;templates/<br>
&nbsp;&nbsp;&nbsp;tests/ # similar unit test, for example, after chart install, we want to verify a db connection<br>
&nbsp;&nbsp;&nbsp;_helpers.tpl<br>
&nbsp;&nbsp;&nbsp;NOTES.txt # this will display after install chart<br>
&nbsp;&nbsp;&nbsp;*.yaml<br>
...

--disable-openapi-validation