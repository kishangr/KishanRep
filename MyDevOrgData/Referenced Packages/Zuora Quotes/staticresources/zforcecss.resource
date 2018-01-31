body, td, input, textarea, select {
    font: 10px/16px Verdana, Arial, Helvetica, sans-serif;
    color: #000;
}

.message {
  background-color: transparent !important;
  border-style: none !important;
  font-size: 1.1em !important;
  padding: 0 !important; 
  margin: 0 !important;
}

.messageBody {
  background-color: transparent !important;
  border-style: none !important;
  font-size: 1.1em !important;
  padding-top:5px; 
  padding-bottom:5px;
}

.msg-box{
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    padding-top: 11px;
    padding-bottom: 0px;
    padding-left: 11px;
    margin: 5px;
}

.msg-success{
    border: 2px solid #7AC141;
    background-color: #E7F3DD;
}

.msg-warning {
  border: 2px solid #F5C757;
  background-color: #FFF7D3;
}

.msg-failure {
    border: 2px solid #EA3D39;
    background-color: #FFE3DF;
}

.action {
    border: 1px solid #B5B5B5;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    padding: 3px 6px;
    background-color: white;
    color: #333333;
    font-size: 11px;
    line-height: 10px;
    height: 10px;
    margin-left: 6px;
}

a:link, a:visited,a:hover,a:active{
    color: #333333;
    text-decoration: none;
}

/* Color inactive links within property component */ 
div.pbBody td.dataCol a:link, div.pbBody td.dataCol a:visited {
    color: #006699;
    text-decoration: none;
}

/* Color active links in property component */
div.pbBody td.dataCol a:hover, div.pbBody td.dataCol a:active {
    color: #006699;
    text-decoration: underline;
}

.header{
    font-size: 12px;
    font-weight: bold;
    color: #34332F;
}

.msg-container{
    display: table;
    width: 100%;
}

.msg-content, .msg-actions{
    display: table-cell;
}

.msg-actions{
  padding: 10px;
    vertical-align: middle;
    text-align: center;
    width: 100%;
}

.quote-box{
    border: 1px solid #EAEAEA;
    border-top: 3px solid #7AC141;
    border-bottom: 1px solid #EAEAEA;
    padding: 20px 12px;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    background: #F8F8F8;
    min-width: 1100px;
}
.step{
    text-align: left;
    margin-top: 5px;
    margin-bottom: 5px;
}
.step span{
    padding: 0 4px;
}
.step-title {
    cursor: pointer;
}
.gray-text{
    color: #3a4b5c;
    font-size: 12px;
    opacity: 0.8;
}

.gray-text:hover{
    font-weight: bold;
    opacity: 1;
}

.bold-text {font-weight: bold; font-size:12px;}
#navigationBar{
    font-family: SalesforceSans, Helvetica, Arial, sans-serif !important;
}
.stepBlock{
    display: inline-block;
    padding: 1em;
    cursor: pointer;
}
.stepBlock:hover .stepName, .stepBlock:hover .numberCircle {
    font-weight: bold;
    opacity: 1;
}
.numberCircle {
    border-radius: 12px;
    background: #fff;
    border: 2px solid #3a4b5c;
    color: #3a4b5c;
    opacity: 0.5;
    text-align: center;
    font-size: 12px;
}
.numberCircle.selectedStep {
    background: #3a4b5c;
    color: #fff;
}
.stepName{
    font-size: 12px;
    opacity: 0.5;
    color: #3a4b5c;
}
.stepComponent{
    display: inline-block;
    vertical-align: middle;
}
.stepBreak {
    border-radius: 3px;
    background: #fff;
    border: 2px solid #3a4b5c;
    color: #3a4b5c;
    opacity: 0.8;
    padding: 0 !important;
    margin-left: 1em;
}
#navigationBar > .stepBlock:last-child > .stepBreak{
    display: none;
}
.selectedStep {
    font-weight: bold;
    opacity: 1;
}
