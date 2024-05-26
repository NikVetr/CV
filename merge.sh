#!/bin/bash

# Set the filenames
resume="vetr_resume_1pg.pdf"
cv="vetr_cv.pdf"
output="vetr_resume+CV.pdf"

# Check if the files exist
if [[ -f "$resume" && -f "$cv" ]]; then
    # Merge the PDFs
    pdfunite "$resume" "$cv" "$output"
    echo "PDFs merged successfully into $output"
else
    echo "One or both PDF files are missing!"
fi
