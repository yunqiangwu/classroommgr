webpackJsonp([15],{672:function(a,b,c){var d=c(340)(c(991),c(856),null,null);a.exports=d.exports},856:function(a){a.exports={render:function(){var c=this,d=c.$createElement,e=c._self._c||d;return e('div',[e('div',{staticClass:'crumbs'},[e('el-breadcrumb',{attrs:{separator:'/'}},[e('el-breadcrumb-item',[e('i',{staticClass:'el-icon-date'}),c._v(' \u8868\u5355')]),c._v(' '),e('el-breadcrumb-item',[c._v('\u57FA\u672C\u8868\u5355')])],1)],1),c._v(' '),e('div',{staticClass:'form-box'},[e('el-form',{ref:'form',attrs:{model:c.form,'label-width':'80px'}},[e('el-form-item',{attrs:{label:'\u8868\u5355\u540D\u79F0'}},[e('el-input',{model:{value:c.form.name,callback:function(f){c.form.name=f},expression:'form.name'}})],1),c._v(' '),e('el-form-item',{attrs:{label:'\u9009\u62E9\u5668'}},[e('el-select',{attrs:{placeholder:'\u8BF7\u9009\u62E9'},model:{value:c.form.region,callback:function(f){c.form.region=f},expression:'form.region'}},[e('el-option',{key:'bbk',attrs:{label:'\u6B65\u6B65\u9AD8',value:'bbk'}}),c._v(' '),e('el-option',{key:'xtc',attrs:{label:'\u5C0F\u5929\u624D',value:'xtc'}}),c._v(' '),e('el-option',{key:'imoo',attrs:{label:'imoo',value:'imoo'}})],1)],1),c._v(' '),e('el-form-item',{attrs:{label:'\u65E5\u671F\u65F6\u95F4'}},[e('el-col',{attrs:{span:11}},[e('el-date-picker',{staticStyle:{width:'100%'},attrs:{type:'date',placeholder:'\u9009\u62E9\u65E5\u671F'},model:{value:c.form.date1,callback:function(f){c.form.date1=f},expression:'form.date1'}})],1),c._v(' '),e('el-col',{staticClass:'line',attrs:{span:2}},[c._v('-')]),c._v(' '),e('el-col',{attrs:{span:11}},[e('el-time-picker',{staticStyle:{width:'100%'},attrs:{type:'fixed-time',placeholder:'\u9009\u62E9\u65F6\u95F4'},model:{value:c.form.date2,callback:function(f){c.form.date2=f},expression:'form.date2'}})],1)],1),c._v(' '),e('el-form-item',{attrs:{label:'\u9009\u62E9\u5F00\u5173'}},[e('el-switch',{attrs:{'on-text':'','off-text':''},model:{value:c.form.delivery,callback:function(f){c.form.delivery=f},expression:'form.delivery'}})],1),c._v(' '),e('el-form-item',{attrs:{label:'\u591A\u9009\u6846'}},[e('el-checkbox-group',{model:{value:c.form.type,callback:function(f){c.form.type=f},expression:'form.type'}},[e('el-checkbox',{attrs:{label:'\u6B65\u6B65\u9AD8',name:'type'}}),c._v(' '),e('el-checkbox',{attrs:{label:'\u5C0F\u5929\u624D',name:'type'}}),c._v(' '),e('el-checkbox',{attrs:{label:'imoo',name:'type'}})],1)],1),c._v(' '),e('el-form-item',{attrs:{label:'\u5355\u9009\u6846'}},[e('el-radio-group',{model:{value:c.form.resource,callback:function(f){c.form.resource=f},expression:'form.resource'}},[e('el-radio',{attrs:{label:'\u6B65\u6B65\u9AD8'}}),c._v(' '),e('el-radio',{attrs:{label:'\u5C0F\u5929\u624D'}}),c._v(' '),e('el-radio',{attrs:{label:'imoo'}})],1)],1),c._v(' '),e('el-form-item',{attrs:{label:'\u6587\u672C\u6846'}},[e('el-input',{attrs:{type:'textarea'},model:{value:c.form.desc,callback:function(f){c.form.desc=f},expression:'form.desc'}})],1),c._v(' '),e('el-form-item',[e('el-button',{attrs:{type:'primary'},on:{click:c.onSubmit}},[c._v('\u63D0\u4EA4')]),c._v(' '),e('el-button',[c._v('\u53D6\u6D88')])],1)],1)],1)])},staticRenderFns:[]}},991:function(a,b){'use strict';Object.defineProperty(b,'__esModule',{value:!0}),b['default']={data:function(){return{form:{name:'',region:'',date1:'',date2:'',delivery:!0,type:['\u6B65\u6B65\u9AD8'],resource:'\u5C0F\u5929\u624D',desc:''}}},methods:{onSubmit:function(){this.$message.success('\u63D0\u4EA4\u6210\u529F\uFF01')}}}}});