## DOCUMENT CONVERT FROM MARKDOWN TO DOCX
#
## NOTES
  # Fonts tried by order of preference: Constantia, Noto Serif
    # EB Garramond, Georgia, Lora
  # $PATH_OF_FILE = "${env:USERPROFILE}\Documents\HJCSIC.docx"
  # $PATH_OF_FILE = "($PSSCRIPTROOT | Split-Path -Qualifier)\Documents"

## CONVERT
pandoc.exe .\HJCSIC.md `
  --from markdown+inline_notes+escaped_line_breaks `
  --to docx `
  --reference-doc=template.docx `
  --dpi=220 `
  --wrap=none `
  --output .\HJCSIC.docx
  #  --reference-doc=template_font-times.docx `
