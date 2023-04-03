for text in ../Dados/machado/*/*.txt; do
    sed -n '3p' $text >> temp_res_ex_2;
done

sort temp_res_ex_2 > resposta_ex_2

rm temp_res_ex_2
