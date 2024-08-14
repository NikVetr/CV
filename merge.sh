#!/bin/bash

# Set the filenames
resume="vetr_resume_2pg.pdf"
cv="vetr_cv.pdf"
blank="blank.pdf"
output="vetr_resume+CV.pdf"

# Check if the files exist
if [[ -f "$resume" && -f "$cv"  && -f "$blank" ]]; then
    # Merge the PDFs
    pdfunite "$resume" "$blank" "$cv" "$output"
    echo "PDFs merged successfully into $output"
else
    echo "One or both PDF files are missing!"
fi
