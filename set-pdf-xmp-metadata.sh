exiftool -XMP-dc:Creator=”’Jane Doe” -XMP-dc:Publisher=”Research-publishing.net” test.pdf

# XMP dc Tags
# Dublin Core namespace tags.
#
# These tags belong to the ExifTool XMP-dc family 1 group.
#
# Tag Name	Writable	Values / Notes
# Contributor	string+
# Coverage	string
# Creator	string+
# Date	date+
# Description	lang-alt
# Format	string
# Identifier	string
# Language	string+
# Publisher	string+
# Relation	string+
# Rights	lang-alt
# Source	string/
# Subject	string+
# Title	lang-alt
# Type	string+
#
#
#
# XMP pdf Tags
# Adobe PDF namespace tags. The official XMP specification defines only Keywords, PDFVersion, Producer and Trapped. The other tags are included because they have been observed in PDF files, but some are avoided when writing due to name conflicts with other XMP namespaces.
#
# These tags belong to the ExifTool XMP-pdf family 1 group.
#
# Tag Name	Writable	Values / Notes
# Author	string
# Copyright	string/
# CreationDate	date
# Creator	string/
# Keywords	string
# Marked	boolean/
# ModDate	date
# PDFVersion	string
# Producer	string
# Subject	string/
# Title	string/
# Trapped	string	'False' = False
# 'True' = True
# 'Unknown' = Unknown
#
