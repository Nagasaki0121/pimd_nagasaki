function vfs_real = FourierTransform(Inputimage, threshhold)
  
    I = imread(Inputimage);
    I = im2gray(I);

    % 画像に対してFFT
    J = fft2(I); % 画像に対して 2次元FFT (周波数領域 0 ～ 2*pi)
    J = fftshift(J); % 周波数領域を-pi～piとする (DCを中央にする)

    
    % フィルタマスクの作成 区間[-1, 1]内の636 and 136個の等間隔の点のベクトルを作成
    [f1, f2] = meshgrid(linspace(-1, 1, 636), linspace(-1, 1, 138)); % 画像FFT分の周波数領域メッシュを作成
    r = sqrt(f1.^2 + f2.^2); % DCからの距離を求める
    Hd = ones(138, 636); %すべての要素が1の配列

    Hd(r > threshhold) = 0; % ローパスフィルタ (切り替え)


    filtered_J = J .* Hd; % フィルタ処理 (周波数領域)
    filtered_J = ifftshift(filtered_J); % 周波数領域を 0 ～ 2*pi に戻す
    vfs = ifft2(filtered_J); % IFFT処理で空間領域へ変換
    vfs_real =real(vfs);


    
end