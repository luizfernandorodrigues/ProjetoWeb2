<%-- 
    Document   : index
    Created on : 16/05/2017, 19:39:29
    Author     : luizf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel = "stylesheet" type = "text/css" href="style.css"/>
    </head>
    <body>
        <div class="banner">
            <div class="logo">
                <img id="logo-meteor-home" src="https://d14xs1qewsqjcd.cloudfront.net/assets/logo-diff.svg" alt="Meteor Home Page" width="120" height="120"></img>
            </div>
            <nav class="primary-menu" style="word-spacing: 25px;">
                <span>Developers</span>
                <span>Showcase</span>
                <span>Solutions</span>
                <span>Company</span>
            </nav>
            <!-- form de login-->
            <div class="login">
                
            </div>
            <button type="button" class="icon-custom-menu  fadeInLeft is-closed" data-toggle="offcanvas">
                <span class="icon-top"></span>
                <span class="icon-middle"></span>
                <span class="icon-bottom"></span>
            </button>
        </div>
        <header>
            <img class = "fundo" src = "bg-header-star.jpg">
            <div id="banner-home">
                <div class="content-banner">
                    <h6>The fastest way to build</h6>
                    <h3>JavaScript apps</h3>
                    <span>Meteor is an open source platform for web,
                        <br>mobile, and desktop.</span>
                    <div class="action-banner wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                        <a id="installnow" href="/install" class="btn-custom hvr-rectangle-out-bg">install now<span>version 1.4</span></a>
                        <a id="more-features" href="/tutorials" class="btn-custom hvr-rectangle-out"> tutorial</a>
                    </div>
                </div>

            </div>
        </header>
        <div class = "conteuda-pag">
            <div class = "home-conteudo">
                <div class="integra">
                    <h5>Meteor integrates with</h5>
                    <nav>
                        <li id="angular" class="listopensource"></li>
                        <li id="react" class="listopensource"></li>
                        <li id="mongo" class="listopensource"></li>
                        <li id="graphql" class="listopensource"></li>
                        <li id="npm" class="listopensource"></li>
                        <li id="cordova" class="listopensource"></li>
                    </nav>
                </div>
            </div>
            <div class = "linha"> </div>
            <div id="why">
                <div class="titleWhy">
                    <h3>why meteor?</h3>
                </div>
                <div class="conteudoWhy">
                    <div id="itens">
                        <div id="itens-left" class="items-object">
                            <span class="icone">
                                <img class = "why1" src = "why1.png"> </img>

                            </span>
                            <h3>Ship more with less code</h3>
                            <span>Accomplish in 10 lines what would otherwise take 1000, thanks to an integrated JavaScript stack that
                                extends from the database to the end user's screen.
                            </span>
                        </div>
                        <div id="items-center" class="items-object">
                            <span class="icone">
                                <img class = "why1" src = "why2.png"> </img>
                            </span>
                            <h3>Build apps for any device</h3>
                            <span>Use the same code whether youâ€™re developing for web, iOS, Android, or desktop. Hot push new features
                                without app store approval or forcing users to download a new native app.
                            </span>
                        </div>
                        <div id="items-right" class="items-object">
                            <span class="icone">
                                <img class = "why1" src = "why3.png"> </img>
                            </span>
                            <h3>Integrate technologies you already use</h3>
                            <span>Use popular frameworks and tools, right out-of-the-box. Focus on building features instead of wiring
                                disparate components together yourself.
                            </span>
                        </div>
                    </div>
                </div>
                <div class="linha"></div>
                <div class="opensource using-opensource wow fadeInDown" style="visibility: visible; animation-name: fadeInDown;">
                    <div class="titulo-companhias">
                        <h3>Companies using Meteor</h3>
                        <div class="top-companias">
                            <ul>
                                <li class="mazda"><img src="icon-mazda.png"></li>
                                <li class="ikea"><img src="icon-ikea.png"></li>
                                <li class="honeywell"><img src="icon-honeywell.png"></li>
                                <li class="qualco"><img src="icon-qualco.png"></li>
                                <li class="tour"><img src="icon-tour.png"></li>
                            </ul>
                        </div>
                    </div>
                    <div id="animacao-meteor">
                        <div id="construir-meteor">
                            <div class="titulo-companhias cor-branco">
                                <h3>Built with Meteor</h3>
                            </div>
                            <div class="media-object">                               
                                <div class="media-body">
                                    <h4 class="media-heading">
                                        <span>CodeFights</span>
                                    </h4>
                                    <span class = "link-media">https://codefights.com/</span>
                                    <div class="content-media">
                                        <span>CodeFights gamifies programming through head-to-head online coding challenges and tournaments. </span>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="moreApps">
                            <span class = "more">>View More Apps</span>
                        </div>
                    </div>
                    <div class="linha"></div>
                    <div id="builtgreat">
                        <div class="titulo-companhias">
                            <h3>Commercial services</h3>
                        </div>
                        <div class = "conteudoWhy">
                            <div id="itens">
                                <div id="itens-left" class="items-object">
                                    <h3>Effortless Meteor Hosting</h3>
                                    <span>Stop wasting time on devops. Deploy your app using Galaxy, the easiest way to scale and manage your Meteor apps.</span>
                                    <span>Get Meteor Hosting</span>
                                </div>
                                <div class="items-object">
                                    <h3>Official Developer Support</h3>
                                    <span>Need help troubleshooting or improving your code? Work directly with the engineers behind the Meteor framework.</span>
                                    <span>Get Paid Support</span>
                                </div>
                                <div id="items-right" class="items-object">
                                    <h3>Global Partner Network</h3>
                                    <span class="des-commercial">Choose from hundreds of Official Meteor Partners to help you with app development and training.</span>
                                    <span>Find a Partner</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id ="estatisticas">
            <div class="titulo-companhias cor-branco">
                <h3>Community</h3>
            </div>
            <div class="objetos-estatisticas">
                <i class="icon"></i>
                <span id="number-packages" class = "number-statisics">12191</span>
                <span class="descricao">PACKAGES</span>
            </div>
            <div class="objetos-estatisticas">
                <i class="icon"></i>
                <span id="number-service" class="number-statisics">220</span>
                <span class="descricao">PROFESSIONAL SERVICE<br> PROVIDERS</span>
            </div>
            <div class="objetos-estatisticas">
                <i class="icon"></i>
                <span id="number-question" class="number-statisics">25317</span>
                <span class="descricao">STACK OVERFLOW<br> QUESTIONS</span>
            </div>
            <div class="objetos-estatisticas">
                <i class="icon"></i>
                <span id="number-uniqueinstall" class="number-statisics">508K</span>
                <span class="descricao">UNIQUE<br> INSTALLS</span>
            </div>
        </div>
        <div id="get-start" class="wow fadeInUp">
            <div class="getstar">
                <img src="m1.png"></img>
                <span>Build great apps faster than ever using Meteor</span>
            </div>
            <span class = "btn">Get Started Now</span>
        </div>
        <div class = "linha"></div>
        <footer>
            <div class="container">
                <div id="alllist-footer">
                    <div class="list-footer">
                        <img src="logo-black.svg" alt ="meteor home page">
                        <span class="des">© 2017 Meteor Development Group Inc.
                            <br>
                            <br>
                            Open source downloads supported by
                            <a href="https://www.keycdn.com">keyCDN</a>
                            and 
                            <a href="https://www.maxcdn.com">MaxCDN</a>
                        </span>
                    </div>
                    <div class="list-footer">
                        <a href="/">Home</a>
                        <br>
                        <a href="https://github.com/meteor/meteor">GitHub</a>
                        <br>
                        <a href="https://twitter.com/meteorjs">Twitter</a>
                        <br>
                        <a href="https://www.youtube.com/user/MeteorVideos">YouTube</a>
                        <br>
                        <a href="https://www.facebook.com/meteorjs/">Facebook</a>
                    </div>
                    <br>
                    <div class="list-footer">
                        <a href="/developers">Developers</a>
                        <br>
                        <a href="/install">Install</a>
                        <br>
                        <a href="/tutorials">Tutorials</a>
                        <br>
                        <a href="http://guide.meteor.com/">Guide</a>
                        <br>
                        <a href="http://docs.meteor.com/#/basic/">Documentation</a>
                        <br>
                        <a href="/showcase">Apps Showcase</a>
                        <br>
                        <a href="https://forums.meteor.com/">Forums</a>
                        <br>
                        <a href="http://www.meetup.com/topics/meteor/">Meetups</a>
                        <br>
                        <a href="/meteor-faq">Meteor FAQ</a>
                        <br>
                        <a href="/speaker-kit">Speaker Kit</a>
                        <br>
                        <a href="/articles">Articles</a>
                    </div>
                    <br>
                    <div class="list-footer">
                        <a href="/solutions">Solutions</a>
                        <br>
                        <a href="galaxy">Meteor Hosting</a>
                        <br>
                        <a href="/partners">Official Partners</a>
                        <br>
                        <a href="/become-a-partner">Become a Partner</a>
                        <br>
                        <a href="/submit-rfp">Submit RFP</a>
                        <br>
                        <a href="/galaxy-faq">Galaxy FAQ</a>
                        <br>
                        <a href="http://graphql.com">GraphQL</a>
                        <br>
                        <a href="http://status.meteor.com/">System Status</a>
                    </div>
                    <br>
                    <div class="list-footer">
                        <a href="/company">Company</a>
                        <br>
                        <a href="https://blog.meteor.com/">Blog</a>
                        <br>
                        <a href="careers">Careers</a>
                        <br>
                        <a href="/culture">Culture</a>
                        <br>
                        <a href="/press">Press</a>
                        <br>
                        <a href="/contact">Contact Us</a>
                        <br>
                        <a href="/policy">Policies</a>
                        <br>
                        <a href="http://www.apollodata.com">Apollo Data</a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>

