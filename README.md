# Competency framework
This defines competencies in the information and communication technology sphere. It's a open and free resource, which can be used freely by everyone. 

## Entitys
<dl>
  <dt>Competency</dt>
  <dd>A competency describes the know-how to do something, based on skills and knowledge.</dd>
  <dt>Discipline</dt>
  <dd>A discipline describes an area of information and communication technology and it categorizes competencies.</dd>
</dl>

## Tools
This chapter documents some prefered tools to work with this repository.

### Editing with Visual Studio Code
1. Install Visual Studio Code (https://code.visualstudio.com/)
1. Add Red Hats XML extension (https://marketplace.visualstudio.com/items?itemName=redhat.vscode-xml)

### Validation with Xerces
1. Install Xerces-C++ (http://xerces.apache.org/xerces-c/)
   - On ArchLinux: `pacman -S xerces-c`
1. Use `StdInParse` (http://xerces.apache.org/xerces-c/stdinparse-3.html) to validate documents <br> `StdInParse -s -n < document.xml`

## Resources
- Documents 
  - Best Practices for XML Internationalization (https://www.w3.org/TR/xml-i18n-bp/)