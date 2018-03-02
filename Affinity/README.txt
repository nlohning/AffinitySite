Web.config file needs 
<appSettings>
    <add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />
  </appSettings>
  in order for validation to work
if you get a public key error with web.config just delete it and run to create a new one then re add this^
