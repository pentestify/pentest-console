Office Open XML Ruby on Rails App
Deployment Notes:

Prerequisites
-------------

1. To run this app you will need to have ruby on rails 2.3 installed, if you don't have this installed visit the following download link:
http://rubyonrails.org/download. 

The current Ruby installer is 1.8.6-27 Release Candidate 2

2. The following gems will also need to be installed:
gem install -v=2.3.2 rails
gem install libxml-ruby  
gem install libxslt-ruby
gem install zipruby
gem install nokogiri

Note: ignore the "Enclosing class" warnings for libxml-ruby


Installation
------------
Once the prerequisites are installed, extract the archive OpenXMLRubyExample.zip and navigate via the commandline to the root directory 
of the application.  


Running the Application
-----------------------
Once in the correct directory type the command 'ruby script/server'.

The application will be started on localhost:3000 and you can view the app by using the following link.
http://localhost:3000

There are sample files in the application folder C:\OpenXMLRubyExample\public\data that you can use to try out the application with:
- transform.xslt
- template.docx
- HL7.xml)

If you supply these sample files and press upload, it will generate a DOCX file  and stream it out to your browser.
