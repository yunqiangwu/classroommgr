webpackJsonp([8],{564:function(a,b,c){c(711);var d=c(217)(c(840),c(694),null,null);a.exports=d.exports},661:function(a,b,c){b=a.exports=c(91)(void 0),b.push([a.i,".user-icon{width:20px}.btngroup{float:right;margin-bottom:10px}",""])},694:function(a){a.exports={render:function(){var c=this,d=c.$createElement,e=c._self._c||d;return e("div",{staticClass:"table"},[e("div",{staticClass:"crumbs"},[e("el-breadcrumb",{attrs:{separator:"/"}},[e("el-breadcrumb-item",[e("i",{staticClass:"el-icon-menu"}),c._v("\u5B66\u751F")]),c._v(" "),e("el-breadcrumb-item",[c._v("\u5B66\u751F\u7BA1\u7406")])],1)],1),c._v(" "),e("el-button-group",{staticClass:"btngroup"},[e("el-button",{attrs:{icon:"plus",type:"primary"},on:{click:function(){c.handleAdd()}}},[c._v("\u65B0\u589E\u5B66\u751F")]),c._v(" "),e("el-badge",{staticClass:"item",attrs:{value:c.changedDatas.length}},[e("el-button",{attrs:{icon:"upload",type:"success"},on:{click:function(){c.handleSave()}}},[c._v("\u4FDD\u5B58\u4FEE\u6539")])],1)],1),c._v(" "),e("el-table",{staticStyle:{width:"100%"},attrs:{data:c.tableData,border:""}},[e("el-table-column",{attrs:{label:"\u5934\u50CF",width:"100"},scopedSlots:c._u([{key:"default",fn:function(f){return[e("img",{staticClass:"user-icon",attrs:{src:f.row.logo}})]}}])}),c._v(" "),e("el-table-column",{attrs:{prop:"username",label:"\u8D26\u53F7",sortable:"",width:"175"}}),c._v(" "),e("el-table-column",{attrs:{prop:"realname",label:"\u59D3\u540D",width:"125"}}),c._v(" "),e("el-table-column",{attrs:{prop:"qq",label:"QQ",width:"180"}}),c._v(" "),e("el-table-column",{attrs:{label:"\u6240\u5C5E\u5206\u7EC4"},scopedSlots:c._u([{key:"default",fn:function(f){return c._l(c.getGroupListById(f.row.id),function(g){return e("el-tag",{key:g.id,attrs:{type:"primary",type:g.type}},[c._v(c._s(g.name))])})}}])}),c._v(" "),e("el-table-column",{attrs:{label:"\u64CD\u4F5C",width:"180"},scopedSlots:c._u([{key:"default",fn:function(f){return[e("el-button",{attrs:{size:"small"},on:{click:function(){c.handleEdit(f.$index,f.row)}}},[c._v("\u7F16\u8F91")]),c._v(" "),e("el-button",{attrs:{size:"small",type:"danger"},on:{click:function(){c.handleDelete(f.$index,f.row)}}},[c._v("\u5220\u9664")])]}}])})],1),c._v(" "),e("el-dialog",{attrs:{size:"large",title:"\u7F16\u8F91\u5B66\u751F\u4FE1\u606F",visible:c.dialogFormVisible},on:{"update:visible":function(f){c.dialogFormVisible=f}}},[e("el-form",{ref:"editForm",attrs:{model:c.editingData,rules:c.rules,"label-width":"80px"}},[e("el-row",[e("el-col",{attrs:{span:11}},[e("el-form-item",{attrs:{label:"\u5B66\u53F7",prop:"username"}},[e("el-input",{model:{value:c.editingData.username,callback:function(f){c.editingData.username=f},expression:"editingData.username"}})],1)],1),c._v(" "),e("el-col",{staticClass:"line",attrs:{span:2}}),c._v(" "),e("el-col",{attrs:{span:11}},[e("el-form-item",{attrs:{label:"\u59D3\u540D",prop:"realname"}},[e("el-input",{model:{value:c.editingData.realname,callback:function(f){c.editingData.realname=f},expression:"editingData.realname"}})],1)],1)],1),c._v(" "),e("el-row",[e("el-col",{attrs:{span:11}},[e("el-form-item",{attrs:{label:"\u90AE\u7BB1",prop:"email"}},[e("el-input",{model:{value:c.editingData.email,callback:function(f){c.editingData.email=f},expression:"editingData.email"}})],1)],1),c._v(" "),e("el-col",{staticClass:"line",attrs:{span:2}}),c._v(" "),e("el-col",{attrs:{span:11}},[e("el-form-item",{attrs:{label:"\u7535\u8BDD",prop:"tel"}},[e("el-input",{model:{value:c.editingData.tel,callback:function(f){c.editingData.tel=f},expression:"editingData.tel"}})],1)],1)],1),c._v(" "),e("el-row",[e("el-col",{attrs:{span:11}},[e("el-form-item",{attrs:{label:"\u5BC6\u7801",prop:"password"}},[e("el-input",{attrs:{type:"password"},model:{value:c.editingData.password,callback:function(f){c.editingData.password=f},expression:"editingData.password"}})],1)],1),c._v(" "),e("el-col",{staticClass:"line",attrs:{span:2}}),c._v(" "),e("el-col",{attrs:{span:11}},[e("el-form-item",{attrs:{label:0==c.editingData.enabled?"\u7981\u7528":"\u542F\u7528",prop:"enabled"}},[e("el-switch",{attrs:{"on-color":"#13ce66","off-color":"#ff4949","on-value":"1","off-value":"0"},model:{value:c.editingData.enabled,callback:function(f){c.editingData.enabled=f},expression:"editingData.enabled"}})],1)],1)],1)],1),c._v(" "),e("div",{staticClass:"dialog-footer",slot:"footer"},[e("el-button",{on:{click:c.handleCancleEdit}},[c._v("\u53D6 \u6D88")]),c._v(" "),e("el-button",{attrs:{type:"primary"},on:{click:function(){c.handleFromConfirm()}}},[c._v("\u786E \u5B9A")])],1)],1),c._v(" "),e("div",{staticClass:"pagination"},[e("el-pagination",{attrs:{"page-size":c.pageSize,layout:"prev, pager, next",total:c.total},on:{"current-change":c.handleCurrentChange}})],1)],1)},staticRenderFns:[]}},711:function(a,b,c){var d=c(661);"string"==typeof d&&(d=[[a.i,d,""]]),d.locals&&(a.exports=d.locals);c(216)("7f4b985d",d,!0)},840:function(a,b,c){"use strict";Object.defineProperty(b,"__esModule",{value:!0});var e=c(218),f=c.n(e),g=c(219),h=c.n(g);b["default"]={data:function(){var j=this;return{studentGroupList:[],tableData:[],cur_page:1,pageSize:9,total:1e3,editRowIndex:-1,changedDatas:[],editingData:{username:""},dialogFormVisible:!1,rules:{username:[{validator:function(m,n,o){return n?12==(n+"").length&&/\d+/.test(n)?void o():o(new Error("\u8BF7\u8F93\u516512\u5168\u6570\u5B57")):o(new Error("\u8D26\u53F7\u4E0D\u80FD\u4E3A\u7A7A"))},trigger:"blur"}]}}},created:function(){var j=this;this.$axios.post(AppStaticParams.mainUrl+"/group",{rows:1e3}).then(function(k){k.data.list.forEach(function(l){return l.type=j.getRandomType()}),j.studentGroupList=k.data.list,j.getData()}).catch(function(k){return console.log(k)})},methods:{getRandomType:function(){return["primary","success","warning"][Math.floor(3*Math.random())]},getGroupListById:function(j){return this.studentGroupList.filter(function(k){return!!k.studentIds&&0<=k.studentIds.split(",").indexOf(j+"")})},handleCurrentChange:function(j){this.cur_page=j,this.getData()},getData:function(){var j=this;this.$axios.post(this.AppStaticParams.mainUrl+"/users",{page:j.cur_page,rows:j.pageSize,mgrid:1}).then(function(k){j.tableData=k.data.list,j.total=k.data.total})},formatter:function(j){return j.address},filterTag:function(j,k){return k.tag===j},handleEdit:function(j,k){var l=f.a.extend({},k);l.enabled+="",this.dialogFormVisible=!0,this.editingData=l,this.editRowIndex=j},handleCancleEdit:function(){this.editRowIndex=-1,this.dialogFormVisible=!1},handleFromConfirm:function(){var j=this,k=this;this.$refs.editForm.validate(function(l){return l?(-1===k.editRowIndex?(k.editingData.__status="add",k.tableData.push(k.editingData),k.changedDatas.push(k.editingData)):(!k.editingData.__status&&(k.editingData.__status="update",k.changedDatas.push(k.editingData)),console.log(k.editRowIndex,k.editingData),f.a.extend(k.tableData[k.editRowIndex],f.a.clone(k.editingData))),j.editRowIndex=-1,k.dialogFormVisible=!1,!0):(console.log("error submit!!"),!1)})},handleDelete:function(j,k){0!==k.id&&k.id?(k.__status="delete",-1==this.changedDatas.indexOf(k)&&this.changedDatas.push(k)):this.changedDatas=f.a.without(this.changedDatas,k),this.tableData=f.a.without(this.tableData,k),this.editRowIndex=-1},handleAdd:function(){if(-1==this.editRowIndex){this.editingData={mgrid:1},this.dialogFormVisible=!0}},handleSave:function(){var j=this;return 0>=j.changedDatas.length?void j.$message.info("\u5F53\u524D\u6570\u636E\u6CA1\u6709\u4FEE\u6539\uFF0C\u4E0D\u9700\u8981\u4FDD\u5B58"):void j.$axios.post(j.AppStaticParams.mainUrl+"/users/submit",j.changedDatas).then(function(k){k.data.success?j.$message.info("\u6210\u529F\u66F4\u65B0 "+k.data.list.length+" \u6761\u6570\u636E"):console.log(k.data),j.getData(),j.changedDatas=[]}).catch(function(k){j.$message.error("\u4FDD\u5B58\u51FA\u9519"),console.log(k)})}}}}});