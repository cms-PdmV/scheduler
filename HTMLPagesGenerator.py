

class HTMLPagesGenerator(object):

    def generate(self):
      print "Generating HTML files:";
      self.generateLogInForm();
      self.generateTimeTable();
      self.generateWelcome();

    def generateLogInForm(self):
      
      headerFile = open('html/toGeneratePages/header.html', 'r');
      externalCssFile = open('html/toGeneratePages/externalCss.html', 'r');
      logInFormFile = open('html/toGeneratePages/logInFormDIV.html', 'r');
      footerFile = open('html/toGeneratePages/footer.html', 'r');

      outputFile = open('html/logInForm.html', 'w');

      htmlStart =  '<html>' +'\n';
      htmlStart += '    <head>' +'\n';
      htmlStart += '	<title>CERN - CMS planning system</title>' +'\n';
      outputFile.write(htmlStart);
      outputFile.write('\n');
      
      for line in externalCssFile:
	outputFile.write(line);
      outputFile.write('\n');

      for line in headerFile: 
	outputFile.write(line);
      outputFile.write('\n');

      for line in logInFormFile: 
	outputFile.write(line);
      outputFile.write('\n');
      
      for line in footerFile: 
	outputFile.write(line);

      htmlEnd = '    </body>' + '\n';
      htmlEnd += '</html>';
      outputFile.write(htmlEnd);

      headerFile.close();
      footerFile.close();
      logInFormFile.close();
      externalCssFile.close();
      
      outputFile.close();
      

    def generateTimeTable(self):

      headerFile = open('html/toGeneratePages/header.html', 'r');
      externalCssFile = open('html/toGeneratePages/externalCss.html', 'r');
      footerFile = open('html/toGeneratePages/footer.html', 'r');

      outputFile = open('html/timeTable.html', 'w');

      htmlStart =  '<html>' +'\n';
      htmlStart += '    <head>' +'\n';
      htmlStart += '	<title>CERN - CMS planning system</title>' +'\n';
      outputFile.write(htmlStart);
      outputFile.write('\n');
      
      for line in externalCssFile:
	outputFile.write(line);
      outputFile.write('\n');

      libraryLink =  '        <link rel="stylesheet" href="../javaScript/d3jsStyle.css">' +'\n';
      libraryLink += '        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>' +'\n';      
      libraryLink += '        <script src="http://d3js.org/d3.v3.js"></script>' +'\n';
      libraryLink += '	</head>' +'\n';
      libraryLink += '	<body>' +'\n';
      outputFile.write(libraryLink + '\n');
      
      for line in headerFile: 
	outputFile.write(line);
      outputFile.write('\n');

      scriptLink  =  '        <br>' +'\n';
      scriptLink +=  '        <h1 align="center">CMS planning system</h1>' +'\n';
      scriptLink +=  '        <div id="chart" align="center"></div>' +'\n';
      scriptLink +=  '        <script type="text/javascript" src="../javaScript/d3jsTimeTableData.js"></script>' +'\n';
      scriptLink +=  '        <script src="../javaScript/d3jsTimeTable.js"></script>' +'\n';
      outputFile.write(scriptLink + '\n');

      for line in footerFile: 
	outputFile.write(line);
      outputFile.write('\n');

      htmlEnd = '    </body>' + '\n';
      htmlEnd += '</html>';
      outputFile.write(htmlEnd);

      headerFile.close();
      footerFile.close();
      externalCssFile.close();
      
      outputFile.close();


    def generateWelcome(self):

      headerFile = open('html/toGeneratePages/header.html', 'r');
      externalCssFile = open('html/toGeneratePages/externalCss.html', 'r');
      welcomeFile = open('html/toGeneratePages/welcomeDIV.html', 'r');
      footerFile = open('html/toGeneratePages/footer.html', 'r');

      outputFile = open('html/welcome.html', 'w');

      htmlStart =  '<html>' +'\n';
      htmlStart += '    <head>' +'\n';
      htmlStart += '	<title>CERN - CMS planning system</title>' +'\n';
      outputFile.write(htmlStart);
      outputFile.write('\n');
      
      for line in externalCssFile:
	outputFile.write(line);
      outputFile.write('\n');

      libraryLink =  '	</head>' +'\n';
      libraryLink += '	<body>' +'\n';
      outputFile.write(libraryLink + '\n');
      
      for line in headerFile: 
	outputFile.write(line);
      outputFile.write('\n');

      for line in welcomeFile: 
	outputFile.write(line);
      outputFile.write('\n');

      for line in footerFile: 
	outputFile.write(line);
      outputFile.write('\n');

      htmlEnd = '    </body>' + '\n';
      htmlEnd += '</html>';
      outputFile.write(htmlEnd);

      headerFile.close();
      footerFile.close();
      welcomeFile.close();
      externalCssFile.close();
      
      outputFile.close();
