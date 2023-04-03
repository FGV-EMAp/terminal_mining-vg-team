for text in ../Dados/machado/contos/*.txt; do
    sed -n '1p' $text >> temp_res_ex_3;
done

sed -E 's/([0-9]{4})/@\1/g' temp_res_ex_3 | sort -t '@' -k2 | sed 's/@//g' > resposta_ex_3

rm temp_res_ex_3
