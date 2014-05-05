<nav class="navbar navbar-default" role="navigation" id="main-navbar">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display-->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${createLink(uri:'/')}"><img src="${resource(dir: 'images', file: 'favicon.ico')}" style="width:1em; height:1em; position:relative; top:-0.1em"> ITINERATE</a>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <!-- <li><a href="${createLink(controller: 'about', action: 'index')}">About Us</a></li> -->
            <g:if test="${session.userId}">
                <li><a href="${createLink(controller: 'itinerary', action: 'show')}">itineraries</a></li>
                <li><a href="${createLink(controller: 'user', action: 'signOut')}">sign out</a></li>
            </g:if>    
            <g:else>
                <li><a href="${createLink(controller: 'signup', action: 'index')}">sign up</a></li>
                <li><div class="dropdown">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" id="myDropdown">
                        sign in <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <div class="loginform-in">
                            <center><h3 id="loginHeader">Sign In to Start Itinerating</h3></center>
                            <center><div class="err" id="add_err"></div></center>
                            <center>
                                <g:form controller="user" action="signIn" id="form-login">
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="username" name="email" placeholder="email" size="20px">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" name="password" id="password" placeholder="password">
                                    </div>
                                    <button type="submit" class="btn btn-default" id="submitConnection">Submit</button>
                                </g:form>
                            </center>
                        </div>
                    </ul>
                </div></li>
            </g:else>

            <li class="dropdown">
                <a class="loginButton"></a>
            </li>

        </ul>
    </div>
</nav>
