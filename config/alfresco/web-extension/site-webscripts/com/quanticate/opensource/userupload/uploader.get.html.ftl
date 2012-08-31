<#assign id = args.htmlid>
<#assign jsid = args.htmlid?js_string>

<script type="text/javascript">//<![CDATA[
(function()
{
   new Alfresco.widget.DashletResizer("${id}", "${instance.object.id}");
   new Alfresco.widget.DashletTitleBarActions("${args.htmlid}").setOptions(
   {
      actions:
      [
         {
            cssClass: "help",
            bubbleOnClick:
            {
               message: "${msg("dashlet.help")?js_string}"
            },
            tooltip: "${msg("dashlet.help.tooltip")?js_string}"
         }
      ]
   });
})();
//]]></script>

<div class="dashlet">
   <div class="title">${msg("header")}</div>

   <div class="body scrollableList" <#if args.height??>style="height: ${args.height}px;"</#if>>
      <div style="margin: 0.4em">
        <div class="upload">
            <b>Upload</b><br />
            <p>To add new users to your system, please upload a spreadsheet
             (.xls, .xlsx or .csv) here:</p>

            <!-- TODO Do this with AJAX for nicer feedback -->
            <form method="post" enctype="multipart/form-data"
                  action="${url.context}/proxy/alfresco/api/people/upload">
              <input type="file" name="spreadsheet" />
              <br />
              <input type="submit" value="Upload Users" />
            </form>
        </div>

        <br />

        <div class="template">
            <b>Templates</b><br />
            <p>Template spreadsheets, detailing the available fields and
             required order, are available in a number of formats:</p>
            <p>
              <a href="${url.context}/proxy/alfresco/api/people/upload?format=xls">Excel .xls</a> -
              <a href="${url.context}/proxy/alfresco/api/people/upload?format=xlsx">Excel .xlsx</a> -
              <a href="${url.context}/proxy/alfresco/api/people/upload?format=csv">CSV .csv</a>
            </p>
        </div>
      </div>
   </div>
</div>
