<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="1" simplifyMaxScale="1" styleCategories="AllStyleCategories" simplifyAlgorithm="0" simplifyDrawingTol="1" simplifyDrawingHints="1" readOnly="0" version="3.4.5-Madeira" maxScale="0" simplifyLocal="1" minScale="800000" labelsEnabled="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" enableorderby="0" symbollevels="0" type="singleSymbol">
    <symbols>
      <symbol name="0" type="fill" alpha="0.5" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" locked="0" class="LinePatternFill" pass="0">
          <prop v="45" k="angle"/>
          <prop v="55,126,184,255" k="color"/>
          <prop v="2" k="distance"/>
          <prop v="3x:0,0,0,0,0,0" k="distance_map_unit_scale"/>
          <prop v="MM" k="distance_unit"/>
          <prop v="0.26" k="line_width"/>
          <prop v="3x:0,0,0,0,0,0" k="line_width_map_unit_scale"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@0" type="line" alpha="1" clip_to_extent="1" force_rhr="0">
            <layer enabled="1" locked="0" class="SimpleLine" pass="0">
              <prop v="square" k="capstyle"/>
              <prop v="5;2" k="customdash"/>
              <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
              <prop v="MM" k="customdash_unit"/>
              <prop v="0" k="draw_inside_polygon"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="194,158,215,255" k="line_color"/>
              <prop v="solid" k="line_style"/>
              <prop v="0.3" k="line_width"/>
              <prop v="MM" k="line_width_unit"/>
              <prop v="0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="0" k="ring_filter"/>
              <prop v="0" k="use_custom_dash"/>
              <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer enabled="1" locked="0" class="SimpleFill" pass="0">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="0,0,0,0" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="194,158,215,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="1" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="no" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property value="OBJECTID" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory width="15" scaleBasedVisibility="0" sizeType="MM" lineSizeType="MM" height="15" minimumSize="0" backgroundAlpha="255" penAlpha="255" maxScaleDenominator="1e+08" sizeScale="3x:0,0,0,0,0,0" barWidth="5" penColor="#000000" opacity="1" enabled="0" lineSizeScale="3x:0,0,0,0,0,0" minScaleDenominator="0" backgroundColor="#ffffff" scaleDependency="Area" rotationOffset="270" penWidth="0" diagramOrientation="Up" labelPlacementMethod="XHeight">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute color="#000000" label="" field=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings dist="0" zIndex="0" placement="1" priority="0" obstacle="0" linePlacementFlags="18" showAll="1">
    <properties>
      <Option type="Map">
        <Option value="" name="name" type="QString"/>
        <Option name="properties"/>
        <Option value="collection" name="type" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="OBJECTID">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="COUNCIL">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AREA">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AREA_ha">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="TYPE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DES_TITLE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="COMPILER">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DES_REF">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CREATED">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="UPDATED">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PRECISION">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ACCURACY">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LINK">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="REDESIG">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="X">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Y">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DESIG">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CLASS">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LEGISLATIO">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Shape_Length">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Shape_Area">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="OBJECTID"/>
    <alias index="1" name="" field="COUNCIL"/>
    <alias index="2" name="" field="AREA"/>
    <alias index="3" name="" field="AREA_ha"/>
    <alias index="4" name="" field="TYPE"/>
    <alias index="5" name="" field="DES_TITLE"/>
    <alias index="6" name="" field="COMPILER"/>
    <alias index="7" name="" field="DES_REF"/>
    <alias index="8" name="" field="CREATED"/>
    <alias index="9" name="" field="UPDATED"/>
    <alias index="10" name="" field="PRECISION"/>
    <alias index="11" name="" field="ACCURACY"/>
    <alias index="12" name="" field="LINK"/>
    <alias index="13" name="" field="REDESIG"/>
    <alias index="14" name="" field="X"/>
    <alias index="15" name="" field="Y"/>
    <alias index="16" name="" field="DESIG"/>
    <alias index="17" name="" field="CLASS"/>
    <alias index="18" name="" field="LEGISLATIO"/>
    <alias index="19" name="" field="Shape_Length"/>
    <alias index="20" name="" field="Shape_Area"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="OBJECTID" expression=""/>
    <default applyOnUpdate="0" field="COUNCIL" expression=""/>
    <default applyOnUpdate="0" field="AREA" expression=""/>
    <default applyOnUpdate="0" field="AREA_ha" expression=""/>
    <default applyOnUpdate="0" field="TYPE" expression=""/>
    <default applyOnUpdate="0" field="DES_TITLE" expression=""/>
    <default applyOnUpdate="0" field="COMPILER" expression=""/>
    <default applyOnUpdate="0" field="DES_REF" expression=""/>
    <default applyOnUpdate="0" field="CREATED" expression=""/>
    <default applyOnUpdate="0" field="UPDATED" expression=""/>
    <default applyOnUpdate="0" field="PRECISION" expression=""/>
    <default applyOnUpdate="0" field="ACCURACY" expression=""/>
    <default applyOnUpdate="0" field="LINK" expression=""/>
    <default applyOnUpdate="0" field="REDESIG" expression=""/>
    <default applyOnUpdate="0" field="X" expression=""/>
    <default applyOnUpdate="0" field="Y" expression=""/>
    <default applyOnUpdate="0" field="DESIG" expression=""/>
    <default applyOnUpdate="0" field="CLASS" expression=""/>
    <default applyOnUpdate="0" field="LEGISLATIO" expression=""/>
    <default applyOnUpdate="0" field="Shape_Length" expression=""/>
    <default applyOnUpdate="0" field="Shape_Area" expression=""/>
  </defaults>
  <constraints>
    <constraint notnull_strength="1" unique_strength="1" constraints="3" field="OBJECTID" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="COUNCIL" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="AREA" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="AREA_ha" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="TYPE" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="DES_TITLE" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="COMPILER" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="DES_REF" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="CREATED" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="UPDATED" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="PRECISION" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="ACCURACY" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="LINK" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="REDESIG" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="X" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="Y" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="DESIG" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="CLASS" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="LEGISLATIO" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="Shape_Length" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="Shape_Area" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="OBJECTID" desc="" exp=""/>
    <constraint field="COUNCIL" desc="" exp=""/>
    <constraint field="AREA" desc="" exp=""/>
    <constraint field="AREA_ha" desc="" exp=""/>
    <constraint field="TYPE" desc="" exp=""/>
    <constraint field="DES_TITLE" desc="" exp=""/>
    <constraint field="COMPILER" desc="" exp=""/>
    <constraint field="DES_REF" desc="" exp=""/>
    <constraint field="CREATED" desc="" exp=""/>
    <constraint field="UPDATED" desc="" exp=""/>
    <constraint field="PRECISION" desc="" exp=""/>
    <constraint field="ACCURACY" desc="" exp=""/>
    <constraint field="LINK" desc="" exp=""/>
    <constraint field="REDESIG" desc="" exp=""/>
    <constraint field="X" desc="" exp=""/>
    <constraint field="Y" desc="" exp=""/>
    <constraint field="DESIG" desc="" exp=""/>
    <constraint field="CLASS" desc="" exp=""/>
    <constraint field="LEGISLATIO" desc="" exp=""/>
    <constraint field="Shape_Length" desc="" exp=""/>
    <constraint field="Shape_Area" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column width="-1" name="OBJECTID" type="field" hidden="0"/>
      <column width="-1" name="COUNCIL" type="field" hidden="0"/>
      <column width="-1" name="AREA" type="field" hidden="0"/>
      <column width="-1" name="AREA_ha" type="field" hidden="0"/>
      <column width="-1" name="TYPE" type="field" hidden="0"/>
      <column width="-1" name="DES_TITLE" type="field" hidden="0"/>
      <column width="-1" name="COMPILER" type="field" hidden="0"/>
      <column width="-1" name="DES_REF" type="field" hidden="0"/>
      <column width="-1" name="CREATED" type="field" hidden="0"/>
      <column width="-1" name="UPDATED" type="field" hidden="0"/>
      <column width="-1" name="PRECISION" type="field" hidden="0"/>
      <column width="-1" name="ACCURACY" type="field" hidden="0"/>
      <column width="-1" name="LINK" type="field" hidden="0"/>
      <column width="-1" name="REDESIG" type="field" hidden="0"/>
      <column width="-1" name="X" type="field" hidden="0"/>
      <column width="-1" name="Y" type="field" hidden="0"/>
      <column width="-1" name="DESIG" type="field" hidden="0"/>
      <column width="-1" name="CLASS" type="field" hidden="0"/>
      <column width="-1" name="LEGISLATIO" type="field" hidden="0"/>
      <column width="-1" name="Shape_Length" type="field" hidden="0"/>
      <column width="-1" name="Shape_Area" type="field" hidden="0"/>
      <column width="-1" type="actions" hidden="1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="ACCURACY" editable="1"/>
    <field name="AREA" editable="1"/>
    <field name="AREA_ha" editable="1"/>
    <field name="CLASS" editable="1"/>
    <field name="COMPILER" editable="1"/>
    <field name="COUNCIL" editable="1"/>
    <field name="CREATED" editable="1"/>
    <field name="DESIG" editable="1"/>
    <field name="DES_REF" editable="1"/>
    <field name="DES_TITLE" editable="1"/>
    <field name="LEGISLATIO" editable="1"/>
    <field name="LINK" editable="1"/>
    <field name="OBJECTID" editable="1"/>
    <field name="PRECISION" editable="1"/>
    <field name="REDESIG" editable="1"/>
    <field name="Shape_Area" editable="1"/>
    <field name="Shape_Length" editable="1"/>
    <field name="TYPE" editable="1"/>
    <field name="UPDATED" editable="1"/>
    <field name="X" editable="1"/>
    <field name="Y" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="ACCURACY"/>
    <field labelOnTop="0" name="AREA"/>
    <field labelOnTop="0" name="AREA_ha"/>
    <field labelOnTop="0" name="CLASS"/>
    <field labelOnTop="0" name="COMPILER"/>
    <field labelOnTop="0" name="COUNCIL"/>
    <field labelOnTop="0" name="CREATED"/>
    <field labelOnTop="0" name="DESIG"/>
    <field labelOnTop="0" name="DES_REF"/>
    <field labelOnTop="0" name="DES_TITLE"/>
    <field labelOnTop="0" name="LEGISLATIO"/>
    <field labelOnTop="0" name="LINK"/>
    <field labelOnTop="0" name="OBJECTID"/>
    <field labelOnTop="0" name="PRECISION"/>
    <field labelOnTop="0" name="REDESIG"/>
    <field labelOnTop="0" name="Shape_Area"/>
    <field labelOnTop="0" name="Shape_Length"/>
    <field labelOnTop="0" name="TYPE"/>
    <field labelOnTop="0" name="UPDATED"/>
    <field labelOnTop="0" name="X"/>
    <field labelOnTop="0" name="Y"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>OBJECTID</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
