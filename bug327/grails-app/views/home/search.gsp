<!DOCTYPE html>
<html>
<head>
    <title>Search</title>
</head>
<body>
    <br/>
    <h1>Search</h1>
    <br/>
    <g:hasErrors bean="${searchCommand}">
        <div id="errorBlock" class="alert alert-block error-list">
            <ul class="errors" role="alert" id="errorsId" tabindex="-1">
                <g:eachError bean="${searchCommand}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <g:form controller="disruption" action="search" class="form-inline" role="search">
        <div class="form-group ${hasErrors(bean: searchCommand, field: 'caseNumber', 'has-error')}">
            <label for="caseNumber" class="control-label col-sm-5">Notification Number</label>
            <input type="text" id="caseNumber" value="${searchCommand.caseNumber}" name="caseNumber" pattern="${searchCommand?.constrainedProperties.caseNumber.matches}" title="Case Number (digits)" placeholder="######" size="7" class="form-control" aria-live="polite" />
        </div>
        <br/>
        <br/>
        <div class="form-group">
            <g:actionSubmit class="btn btn-success" controller="home" action="search" value="Search"/>
        </div>

    </g:form>

</body>
</html>

