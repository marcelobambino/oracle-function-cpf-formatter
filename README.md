# Oracle Function CPF Formatter using RegExp

Simple function that format CPF using RegExp.

# How to use

Run the CPF_FORMATTER.sql file to create the function on your database.

Then you can test with the command below:

<pre>
<code> select CPF_FORMATTER(12345678911) as CPF from dual; </code>
</pre>

Output:
<pre>
<code> 123.456.789-11 </code>
</pre> 
