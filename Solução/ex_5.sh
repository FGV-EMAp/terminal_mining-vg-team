for text in ../Dados/machado/*/*.txt; do
    cat $text >> temp_text_word_total;
done

tr -d ' [:punct:][:digit:]' < temp_text_word_total | tr '[:upper:]' '[:lower:]' | sed 's/ /\n/g' | sort | uniq -c | sort -nr > resposta_ex_5

rm temp_text_word_total
