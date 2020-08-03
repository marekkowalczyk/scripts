# crop page from top so that it is 200mm tall

cpdf -crop "0mm 0mm PW 200mm" in.pdf -o out.pdf

cpdf -crop "0mm 20mm PW PH" in.pdf -o out.pdf