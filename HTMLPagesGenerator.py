
import Config
from Config import *

import Authentication
from Authentication import *

class HTMLPagesGenerator(object):

    def generate(self):
      print "Generating HTML files:";
      self.generateWelcome();

    def generateWelcome(self):
      # Static output
      welcome = HTMLWelcomePageGenerator();
      welcome.generate();

    def generateLogInForm(self):
      logInPage = HTMLLogInPageGenerator();
      return logInPage.generate();

    def generateTimeTable(self):
      timeTable = HTMLTimeTablePageGenerator();
      return timeTable.generate();



class HTMLWelcomePageGenerator(object):
    def generate(self):

      outputFile = open('html/welcome.html', 'w');

      htmlStart =  '<html>' +'\n';
      htmlStart += '    <head>' +'\n';
      htmlStart += '	<title>CERN - CMS planning system</title>' +'\n';
      outputFile.write(htmlStart);
      outputFile.write('\n');

      externalCssFile = open('html/toGeneratePages/externalCss.html', 'r');
      
      for line in externalCssFile:
	outputFile.write(line);
      outputFile.write('\n');
      
      externalCssFile.close();
      
      libraryLink =  '	</head>' +'\n';
      libraryLink += '	<body>' +'\n';
      outputFile.write(libraryLink + '\n');
      
      htmlHeaderGenerator = HTMLHeaderGenerator();
      htmlHeader = htmlHeaderGenerator.generate();
      outputFile.write(htmlHeader);

      welcomeFile = open('html/toGeneratePages/welcomeDIV.html', 'r');
      
      for line in welcomeFile: 
	outputFile.write(line);
      outputFile.write('\n');
      
      welcomeFile.close();

      footerFile = open('html/toGeneratePages/footer.html', 'r');

      for line in footerFile: 
	outputFile.write(line);
      outputFile.write('\n');
      
      footerFile.close();

      htmlEnd = '    </body>' + '\n';
      htmlEnd += '</html>';
      outputFile.write(htmlEnd);
      
      outputFile.close();


class HTMLLogInPageGenerator(object):
    def generate(self):
      
      outputFile = "";

      htmlStart =  '<html>' +'\n';
      htmlStart += '    <head>' +'\n';
      htmlStart += '	<title>CERN - CMS planning system Log in</title>' +'\n';
      outputFile += htmlStart + '\n';

      externalCssFile = open('html/toGeneratePages/externalCss.html', 'r');

      for line in externalCssFile:
	outputFile += line;
      outputFile += '\n';
      
      externalCssFile.close();

      htmlHeaderGenerator = HTMLHeaderGenerator();
      htmlHeader = htmlHeaderGenerator.generate();
      outputFile += htmlHeader;

      logInFormFile = open('html/toGeneratePages/logInFormDIV.html', 'r');

      for line in logInFormFile: 
	outputFile += line;
      outputFile += '\n';
      
      logInFormFile.close();
      
      footerFile = open('html/toGeneratePages/footer.html', 'r');

      for line in footerFile: 
	outputFile += line;

      htmlEnd = '    </body>' + '\n';
      htmlEnd += '</html>';
      outputFile += htmlEnd;

      footerFile.close();
      
      return outputFile;



class HTMLTimeTablePageGenerator(object):
    def generate(self):

      outputFile = "";

      htmlStart =  '<html>' +'\n';
      htmlStart += '    <head>' +'\n';
      htmlStart += '	<title>CERN - CMS planning system</title>' +'\n';
      outputFile += htmlStart + '\n';

      externalCssFile = open('html/toGeneratePages/externalCss.html', 'r');

      for line in externalCssFile:
	outputFile += line;
      outputFile += '\n';

      externalCssFile.close();

      libraryLink =  '        <link rel="stylesheet" href="../javaScript/d3jsStyle.css">' +'\n';
      libraryLink += '        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>' +'\n';      
      libraryLink += '        <script src="http://d3js.org/d3.v3.js"></script>' +'\n';
      libraryLink += '	</head>' +'\n';
      libraryLink += '	<body>' +'\n';
      outputFile += libraryLink + '\n';
      
      headerGenerator = HTMLHeaderGenerator();
      header = headerGenerator.generate();
      outputFile += header;

      scriptLink  =  '        <br>' +'\n';
      scriptLink +=  '        <h1 align="center">CMS planning system</h1>' +'\n';
      scriptLink +=  '        <div id="chart" align="center"></div>' +'\n';
      scriptLink +=  '        <script type="text/javascript" src="../javaScript/d3jsTimeTableData.js"></script>' +'\n';
      scriptLink +=  '        <script src="../javaScript/d3jsTimeTable.js"></script>' +'\n';
      outputFile += scriptLink + '\n';

      footerFile = open('html/toGeneratePages/footer.html', 'r');

      for line in footerFile: 
	outputFile += line;
      outputFile += '\n';
      
      footerFile.close();

      htmlEnd = '    </body>' + '\n';
      htmlEnd += '</html>';
      outputFile += htmlEnd;
      
      return outputFile;



class HTMLHeaderGenerator(object):
  
    def generate(self):
      
      href = SERVER_NAME + "logIn/";
      if (authentication.USER_NAME == authentication.ANONYM):
	title = "Sign in to your CERN account";
	text = "Sign in";
      else :
	title = "Log out from your CERN account";
	text = "Log out " + authentication.USER_NAME;

      html = """
	<div class="region region-page-top">
	    <div id="cern-toolbar" class="user-not-authenticated">
		<h1>
		    <a href="http://cern.ch" title="CERN">CERN <span>Accelerating science</span></a>
		</h1>
		<ul>
		    <li class="cern-accountli">
			<a href=\"""" + href + """\" title=\"""" + title + """\" class="cern-account">""" + text + """</a>
		    </li>
		    <li>
			<a href="http://cern.ch/directory" title="Search CERN resources and browse the directory" class="cern-directory">Directory</a>
		    </li>
		</ul>
	    </div>
	</div>
      """;

      return html;
      