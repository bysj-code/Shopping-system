(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/discusstejiashangpin/add-or-update"],{"323b":function(e,t,n){"use strict";var r,i=function(){var e=this,t=e.$createElement;e._self._c},u=[];n.d(t,"b",(function(){return i})),n.d(t,"c",(function(){return u})),n.d(t,"a",(function(){return r}))},3882:function(e,t,n){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var r=i(n("a34a"));function i(e){return e&&e.__esModule?e:{default:e}}function u(e,t,n,r,i,u,a){try{var s=e[u](a),c=s.value}catch(o){return void n(o)}s.done?t(c):Promise.resolve(c).then(r,i)}function a(e){return function(){var t=this,n=arguments;return new Promise((function(r,i){var a=e.apply(t,n);function s(e){u(a,r,i,s,c,"next",e)}function c(e){u(a,r,i,s,c,"throw",e)}s(void 0)}))}}var s=function(){Promise.all([n.e("common/vendor"),n.e("components/w-picker/w-picker")]).then(function(){return resolve(n("1756"))}.bind(null,n)).catch(n.oe)},c={data:function(){return{ruleForm:{refid:"",userid:"",content:"",reply:""},user:{}}},components:{wPicker:s},computed:{},onLoad:function(){var t=a(r.default.mark((function t(n){var i,u,a,s;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return i=e.getStorageSync("nowTable"),t.next=3,this.$api.session(i);case 3:if(u=t.sent,this.user=u.data,this.ruleForm.userid=e.getStorageSync("userid"),n.refid&&(this.ruleForm.refid=n.refid),!n.id){t.next=13;break}return this.ruleForm.id=n.id,t.next=11,this.$api.info("discusstejiashangpin",this.ruleForm.id);case 11:u=t.sent,this.ruleForm=u.data;case 13:if(!n.cross){t.next=32;break}a=e.getStorageSync("crossObj"),t.t0=r.default.keys(a);case 16:if((t.t1=t.t0()).done){t.next=32;break}if(s=t.t1.value,"refid"!=s){t.next=21;break}return this.ruleForm.refid=a[s],t.abrupt("continue",16);case 21:if("userid"!=s){t.next=24;break}return this.ruleForm.userid=a[s],t.abrupt("continue",16);case 24:if("content"!=s){t.next=27;break}return this.ruleForm.content=a[s],t.abrupt("continue",16);case 27:if("reply"!=s){t.next=30;break}return this.ruleForm.reply=a[s],t.abrupt("continue",16);case 30:t.next=16;break;case 32:this.styleChange();case 33:case"end":return t.stop()}}),t,this)})));function n(e){return t.apply(this,arguments)}return n}(),methods:{styleChange:function(){this.$nextTick((function(){}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var e=a(r.default.mark((function e(){return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(this.ruleForm.refid){e.next=3;break}return this.$utils.msg("关联表id不能为空"),e.abrupt("return");case 3:if(this.ruleForm.userid){e.next=6;break}return this.$utils.msg("用户id不能为空"),e.abrupt("return");case 6:if(this.ruleForm.content){e.next=9;break}return this.$utils.msg("评论内容不能为空"),e.abrupt("return");case 9:if(!this.ruleForm.id){e.next=14;break}return e.next=12,this.$api.update("discusstejiashangpin",this.ruleForm);case 12:e.next=16;break;case 14:return e.next=16,this.$api.add("discusstejiashangpin",this.ruleForm);case 16:this.$utils.msgBack("提交成功");case 17:case"end":return e.stop()}}),e,this)})));function t(){return e.apply(this,arguments)}return t}(),optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var t=new Date,n=t.getFullYear(),r=t.getMonth()+1,i=t.getDate();return"start"===e?n-=60:"end"===e&&(n+=2),r=r>9?r:"0"+r,i=i>9?i:"0"+i,"".concat(n,"-").concat(r,"-").concat(i)},toggleTab:function(e){this.$refs[e].show()}}};t.default=c}).call(this,n("543d")["default"])},6137:function(e,t,n){"use strict";(function(e){n("c845"),n("921b");r(n("66fd"));var t=r(n("e149"));function r(e){return e&&e.__esModule?e:{default:e}}e(t.default)}).call(this,n("543d")["createPage"])},"6ae7":function(e,t,n){"use strict";var r=n("ff8c"),i=n.n(r);i.a},"8a5d":function(e,t,n){"use strict";n.r(t);var r=n("3882"),i=n.n(r);for(var u in r)"default"!==u&&function(e){n.d(t,e,(function(){return r[e]}))}(u);t["default"]=i.a},e149:function(e,t,n){"use strict";n.r(t);var r=n("323b"),i=n("8a5d");for(var u in i)"default"!==u&&function(e){n.d(t,e,(function(){return i[e]}))}(u);n("6ae7");var a,s=n("f0c5"),c=Object(s["a"])(i["default"],r["b"],r["c"],!1,null,"05c2d778",null,!1,r["a"],a);t["default"]=c.exports},ff8c:function(e,t,n){}},[["6137","common/runtime","common/vendor"]]]);