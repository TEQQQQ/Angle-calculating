% Sinyal oku
sinyal = rand(1,256);

% Blok boyutunu tanımla
block_size = 16;

% blokları ayır
num_blocks = floor(length(sinyal)/block_size);
blocks = reshape(sinyal(1:num_blocks*block_size), block_size, num_blocks);

% her bloğun min ve max değerini bul
min_values = min(blocks);
max_values = max(blocks);

% min ve max değerler arasındaki eğrinin uzunluğunu ve açısını hesapla
lengths = sqrt((min_values-max_values).^2);
angles = atan2(min_values-max_values, block_size);

% sonuçları görüntüle
disp(lengths);
disp(angles);
