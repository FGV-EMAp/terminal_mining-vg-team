text=../Dados/machado/contos/macn001.txt

tr -d ' [:punct:]' < "$text" | tr '[:upper:]' '[:lower:]' | sed 's/ /\n/g' | sort | uniq -c | sed 's/^ *//' | sort -nr > resposta_ex_4
