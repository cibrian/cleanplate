<h1>Enter your login details</h1>

<?php
echo form_open('user/do_login', 'class="form"');
echo form_label('');
echo form_input('email','','placeholder="Enter email address"');
echo form_label('');
echo form_password('password','','placeholder="Enter your password"');
echo form_label('');
echo form_submit('login','Login','class="btn btn-primary"');
echo form_close();
?>