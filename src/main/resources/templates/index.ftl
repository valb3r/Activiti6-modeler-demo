<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>Activiti6 Demo</title>

</head>
<body>
<h2>
	<a href='/create?name=activiti&key=123456'>Open process editor</a>
</h2>
<div>
	<table width="100%">
	    <tr>
	        <td width="10%">Model id</td>
	        <td width="10%">Model version</td>
	        <td width="20%">Model name</td>
	        <td width="20%">Model key</td>
	        <td width="40%">Actions</td>
	    </tr>
	        <#list modelList as model>
	        <tr>
	            <td width="10%">${model.id}</td>
	            <td width="10%">${model.version}</td>
	            <td width="20%"><#if (model.name)??>${model.name}<#else> </#if></td>
	            <td width="20%"><#if (model.key)??>${model.key}<#else> </#if></td>
	            <td width="40%">
				 <a href="/download-xml?modelId=${model.id}">Download XML</a>
	             <a href="/editor?modelId=${model.id}">Edit</a>
	             <a href="/publish?modelId=${model.id}">Publish</a>
	             <a href="/revokePublish?modelId=${model.id}">Revoke publish</a>
	             <a href="/delete?modelId=${model.id}">Delete</a>
	            </td>
	        </tr>
	       </#list>
	</table>
	<br/>
	<hr/>
	<br/>
	<form action="/upload-process-def" method="post" enctype="multipart/form-data">
		<td>
			<input type="file" name="inputs" multiple/>
		</td>
		<td>
			<button type="submit" name="upload">Upload process definition</button>
		</td>
	</form>
</div>
</body>
</html>