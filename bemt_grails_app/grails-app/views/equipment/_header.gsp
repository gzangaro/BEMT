    <div class="row">
     	<div class="small-12 columns">
     		<br/>
     		<g:if test="${bc}">
	     		<div class="bemt-breadcrumb">
		     		<g:link action="index">&larr; Back to list of Equipment</g:link> / ${bc}
		     	</div>
		    </g:if>
     		<div class="right"><h2><i class="fa fa-cogs"></i></h2></div>
				<h2>${title}</h2>
			</div>
		</div>
    <div class="row">
     	<div class="small-8 columns">
				<g:render template="../components/flashmessage" model="[flash: flash]"/>
				<g:render template="../components/validationerrormessage" model="[bean: product]"/>
			</div>
		</div>	