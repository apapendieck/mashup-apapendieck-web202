<gm:page title="Sample - Maps Mashup" authenticate="false">

  <!--
    The mashup application demonstrates taking a external RSS feed with
    geo-location information and mapping it on a Google Map. Interaction
    between a list and a map is also demonstrated via the handleEvent tag.
    @author: GME Team
  -->

  <div class="gm-app-header">
    <h1>Maps Mashup</h1>
  </div>

  <table width="100%">
    <tr>
      <td style="padding-right:10px; width:250px" valign="top">
        <gm:list id="myList" data="http://pipes.yahoo.com/pipes/pipe.run?_id=5eda95fccb04b4f95b5c6dc9490654b0&_render=rss"
            pagesize="10" template="myListTemplate">
          <gm:handleEvent event="select" src="myMap"/>
        </gm:list>
      </td>
      <td valign="top">
        <gm:map id="myMap" style="border:solid black 1px" control="large"
            maptypes="true" data="${myList}" geolocationref="atom:title"
            infotemplate="myMapDetailsTemplate"
            lat="30.53" lng="-89.68" zoom="9">
          <gm:handleEvent event="select" src="myList"/>
        </gm:map>
      </td>
    </tr>    
  </table>

  <gm:template id="myListTemplate">
    <table class="blue-theme" style="width:250px">
      <tr repeat="true">
        <td><gm:text ref="atom:title"/></td>
      </tr>
      <tfoot>
        <tr>
          <td align="center"><gm:pager compact="true"/></td>
        </tr>
      </tfoot>
    </table>
  </gm:template>

  <gm:template id="myMapDetailsTemplate">
    <div repeat="true">
      <b><gm:text ref="atom:title"/></b><br/>
      Lat: <gm:text ref="geo:long"/><br/>
      Long: <gm:text ref="geo:long"/>
    </div>
  </gm:template>

</gm:page>
