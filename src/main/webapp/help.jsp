<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2024/6/26
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页--在线预约挂号系统</title>
    <jsp:include page="include/headtag.jsp"/>
</head>
<body>
<jsp:include page="include/head.jsp"/>
<jsp:include page="include/menu.jsp"/>

<div style="margin-top: 65px; margin-left: 300px;">
    <div id="page-wrapper" style="margin-top: 50px;">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="text-left">帮助中心</h3>
                </div>
            </div>
            <hr />
            <ul class="nav nav-tabs">
                <li class="active"><a href="#common" data-toggle="tab">常见问题</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        预约指南 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#order" data-toggle="tab">预约挂号须知总则</a></li>
                        <li class="divider"></li>
                        <li><a href="#netbooking" data-toggle="tab">网站预约挂号流程</a></li>
                        <li class="divider"></li>
                        <li><a href="#appoint" data-toggle="tab">如何查询/取消预约</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        帐号指南 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#howlogin" data-toggle="tab">如何登录</a></li>
                    </ul>
                </li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <!-- 常见问题 -->
                <div class="tab-pane fade active in text-left" id="common">
                    <div class="col-md-12">
                        <div class="col-md-2">
                            <p class="text-left">问题列表</p>
                        </div>
                    </div>
                    <br /><br />
                    <div style="border-bottom: 1px solid #ccc;"></div>

                    <div class="col-md-12" style="margin-top: 20px;">
                        <div class="question">
                            <h4>问题1: 如何进行账户注册？</h4>
                            <p>回答: 要注册一个新账户，请点击首页右上角的“注册”按钮，填写必要的信息并提交。</p>
                        </div>
                        <div class="question">
                            <h4>问题2: 如何重置密码？</h4>
                            <p>回答: 如果您忘记了密码，可以点击登录页面的“忘记密码”链接，按照提示进行操作以重置密码。</p>
                        </div>
                        <div class="question">
                            <h4>问题3: 如何预约？</h4>
                            <p>回答: 查看预约指南</p>
                        </div>
                    </div>
                </div>
                <!-- 预约挂号须知总则 -->
                <div class="tab-pane fade text-left" id="order">
                    <div class="col-md-12">
                        <div class="col-md-2">
                            <p class="text-left">挂号须知</p>
                        </div>
                    </div>
                    <br /><br />
                    <div style="border-bottom: 1px solid #ccc;"></div>
                    <div class="help_right_content">
                        <p>为提高患者预约效率，改善患者预约体验，通过自助设备或在线平台让患者自主完成挂号、缴费、查询等医疗服务的系统。</p>
                        <strong>一、预约范围</strong>
                        <p>1.1 统一平台不提供当日预约服务，用户可预约接入统一平台医院的大部分科室次日起至三个月内的就诊号源，统一平台按照医院、科室、职称、专业不点名预约。具体预约挂号周期和号源信息，以服务电话查询和网站公示为准。</p>
                        <p>1.2 每天可预约次日号源的服务时间截止到15:00前。（注：停止预约时间有所不同，具体以各家医院的个性化预约须知为准）</p>
                        <strong>二、实名制注册预约</strong>
                        <p>2.1 统一平台电话预约和网上预约挂号采取实名制注册，用户首次预约必须注册就诊人的真实有效基本信息，包括就诊人员的真实姓名、有效证件号（身份证、军官证、护照、港澳通行证、台胞证）、性别、电话、手机号码等基本信息。</p>
                        <p>2.2 用户到医院取号就诊时须出示与预约登记实名信息一致的本人有效证件，否则医院不予办理挂号业务及诊疗服务。</p>
                        <p>2.3 统一平台电话注册和网站注册，1个账号只能关联1个有效证件号。</p>
                        <strong>三、账户信息管理</strong>
                        <p>3.1 请保证您的统一平台账户信息真实有效，如用错误信息，或虚假信息预约挂号，不仅在就诊当日影响您取号就诊，同时也会影响到您今后的预约行为。</p>
                        <p>3.2 注册用户如名下存在未就诊的预约号源时，无法申请修改注册信息，请先取消所有当前有效预约号源或等约成号源过期的次日后再申请修改。</p>
                        <p>3.3 用户如修改本人注册姓名、有效证件号、手机号，须在线提出申请，须提供用户本人手持注册时的有效证件的人证合一，以便工作人员核实信息，我们将在5个工作日内协助处理完成，并以电话或邮件方式通知到您，请保持电话畅通。（注：如原注册手机号有效，用户可选择在线自助完成更换手机号的工作）</p>
                        <strong>四、查询、取消预约</strong>
                        <p>4.1 用户在医院规定的取消时限内可以取消预约号，超过退号截止时间系统将限制用户退号，一般截止时间为就诊日期的前一天下午15:00点，就诊当天不能取消当日预约号。（注：个别医院的预约取消截止时间有所不同，具体规则请关注各家医院的个性化预约须知）</p>
                        <p>4.2 在医院规定的取消预约时限内，用户可登录统一平台网站的"我的预约"直接取消。</p>
                        <p>4.3 如果您在就诊当天不能前往医院取号就诊，请提前退号，否则会因造成号源的浪费，影响其他患者的就诊而被记录爽约档案，由此会影响到您今后的预约行为，请您谅解。</p>
                        <strong>五、特别声明</strong>
                        <p>5.1 以上为统一平台服务总则，各家医院的特殊预约规则详见医院首页公示的"预约须知"。</p>
                        <p>5.2 统一平台不收取医事服务费，各家医院仅收取与医生职称相对应的医事服务费，如与您预约时不符，则以当日医院挂号窗口为准。</p>
                        <p>5.3 用户如需医保报销，请预约医保限定的定点报销医院。</p>
                        <p>5.4 请不要随意向他人泄露自己的实名身份信息，由于统一平台对预约者实行实名身份信息绑定，这样做会导致您的实名身份信息进入管制名单而无法进行预约。</p>
                        <p>5.5 本服务为用户提供便捷的预约方式，不承诺所有用户随时都能约到指定的号，有不便之处敬请谅解，有任何好的建议也可以直接向我们反馈。</p>
                    </div>
                </div>
                <!-- 网站预约挂号流程 -->
                <div class="tab-pane fade text-left" id="netbooking">
                    <br/>
                    <h4>1、网站预约挂号如何挂号？</h4>
                    <p>进入预约挂号统一平台网站首页，首先选择身份，直接跳转到响应登录界面。</p>
                    <p align="center">
                        <img src="images/help/1.png">
                    </p>
                    <h4>2、选择挂号医生</h4>
                    <p>选择您要预约的医生。</p>
                    <p align="center">
                        <img src="/images/help/2.png">
                    </p>
                    <h4>3、选择挂号时间</h4>
                    <p>选择您要预约的时间。</p>
                    <p align="center">
                        <img src="images/help/3.png">
                    </p>
                    <h4>4、确认个人信息，提交订单</h4>
                    <p>确认您的个人信息，并提交订单。</p>
                    <p align="center">
                        <img src="images/help/4.png" style="width: 600px; height: auto;">
                    </p>

                </div>
                <!-- 如何查询/取消预约 -->
                <div class="tab-pane fade" id="appoint">
                    <br/>
                    <h3>在我的预约进行订单管理。</h3>
                    <h4>1.在我的预约，您可以查询或取消预约。</h4>
                    <p align="center">
                        <img src="images/help/5.png" >
                    </p>
                    <h4>2.在我的预约，您可以修改预约。</h4>
                    <p>点击修改预约显示出响应的可选择的其他预约信息，进行选择确认</p>
                    <p align="center">
                        <img src="images/help/6.png">
                    </p>
                    <h4>3.在我的预约，您可以取消预约。</h4>
                    <p>点击取消预约，根据提示取消预约</p>
                    <p align="center">
                        <img src="images/help/7.png">
                    </p>
                </div>
                <!-- 如何登录 -->
                <div class="tab-pane fade text-left" id="howlogin">
                    <h3>如何登录</h3>
                    <div class="help_right_content">
                        <p>1、网站预约挂号如何登录？ 进入预约挂号统一平台网站首页，首先选择身份，直接跳转到响应登录界面。</p>
                        <p align="center">
                            <img src="images/help/login1.png">
                        </p>
                        <p>2、登录，如果没有注册，进入注册页面注册账号。身份证号作为唯一标识，请谨慎注册。</p>
                        <p align="center">
                            <img src="images/help/login2.png">
                        </p>
                    </div>
                    <h3>如何注册</h3>
                    <div class="help_right_content">
                        <p>进入注册页面注册账号。身份证号作为唯一标识，请谨慎注册。</p>
                        <p align="center">
                            <img src="images/help/login2.png">
                        </p>
                        <p>身份证号信息填写格式要正确</p>
                        <p align="center">
                            <img src="images/help/login3.png">
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
</div>
</body>
</html>
