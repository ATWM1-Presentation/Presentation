function CreateGaborPatchesLocalizer()

    % http://www.icn.ucl.ac.uk/courses/MATLAB-Tutorials/Elliot_Freeman/html/gabor_tutorial.html

    strOutputFolder = '/Users/mmb/MEG/ATWM1/Presentation/PresentationExperiments_EXP9/Bitmaps/';
 
    vPhases = [0.25, 0.25];
    %vPhases = [0.25];
    
    % mode 1 : normal black/white gabor circle, max. contrast
    % mode 2 : inverted circle / or colored gabor circle
    % mode 3 : target circle (add colored, sharp circle/ring)
    
    for iMode = 1:3
    
        %% parameters
        imSize = 65;                           % image size: n X n
        lamda = 25;   %15                          % wavelength (number of pixels per cycle)
        theta = 0;                         % grating orientation
        sigma = 12;    %10                         % gaussian standard deviation in pixels
        phase = vPhases(1);                % phase (0 -> 1)
        trim = .001;    
        
        %% make linear ramp
        X = 1:imSize;                           % X is a vector from 1 to imageSize
        X0 = (X / imSize) - .5;                 % rescale X -> -.5 to .5
        %figure;                                 % make new figure window
        %plot(X0);                               % plot ramp

        %% plot a one-dimensional sinewave
        % sinX = sin(X0 * 2*pi);                  % convert to radians and do sine
        % plot(sinX);                             % plot a 1D sinewave!

        %% mess about with wavelength and phase
        freq = imSize/lamda;                    % compute frequency from wavelength
        Xf = X0 * freq * 2*pi;                  % convert X to radians: 0 -> ( 2*pi * frequency)
        %sinX = sin(Xf) ;                        % make new sinewave
        %plot(sinX, 'r-');                       % plot in red
        phaseRad = (phase * 2* pi);             % convert to radians: 0 -> 2*pi                    

        sinX = sin( Xf + phaseRad) ;            % make phase-shifted sinewave

        %hold on;                                % superimpose next plot on last
        %plot(sinX, 'g-');                       % plot in green
        %hold off;                               % next plot overwrites this one

        %% Now make a 2D grating
        % Start with a 2D ramp use meshgrid to make 2 matrices with ramp values across columns (Xm) or across rows (Ym) respectively
        [Xm Ym] = meshgrid(X0, X0);             % 2D matrices
        %imagesc( [ Xm Ym ] );                   % display Xm and Ym
        %colorbar; axis off                      % add colour bar to see va

        %% Put 2D ramps through sine
        Xf = Xm * freq * 2*pi;                    
        Yf = Ym * freq * 2*pi;                    


        grating = sin( sqrt(Xf.^2 + Yf.^2) + phaseRad );          % make 2D sinewave

        imagesc( grating, [-1 1] );             % display
        %colormap gray(256);                     % use gray colormap (0: black, 1: white)
        %axis off; axis image;                   % use gray colormap

        %% Make a gaussian mask
        %first look at the 1D function
        s = sigma / imSize;                     % gaussian width as fraction of imageSize
        %Xg = exp( -( ( (X0.^2) ) ./ (2* s^2) ));% formula for 1D gaussian
        %Xg = normpdf(X0, 0, (20/imSize)); Xg = Xg/max(Xg);  % alternative using normalized probability function (stats toolbox)
        %plot(Xg)

        %% Make 2D gaussian blob
        gauss = exp( -(((Xm.^2)+(Ym.^2)) ./ (2* s^2)) ); % formula for 2D gaussian
        %imagesc( gauss, [-1 1] );                        % display
        %axis off; axis image;     % use gray colormap

        %% Now multply grating and gaussian to get a GABOR
        gauss(gauss < trim) = 0;                 % trim around edges (for 8-bit colour displays)
        gabor = grating;                % use .* dot-product
        %gabor = grating .* gauss;                % use .* dot-product

        gauss(gauss < trim) = 0;                 % trim around edges (for 8-bit colour displays)
        %imagesc( gabor, [-1 1] );                        % display
        %axis off; axis image;                    % use gray colormap
        %axis image; axis off; colormap gray(256);
        %set(gca,'pos', [0 0 1 1]);               % display nicely without borders
        %set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]); % without background

        % scale to [0,1]
        grating = grating - min(grating(:));
        grating = grating ./ max(grating(:));
        
        color0 = [ 0.5 0.5 0.5 ]; % background color
        
        if iMode == 1
            strOutputPath = sprintf('%slocalizer.bmp', strOutputFolder);                 
            color1 = [ 0 0 0 ];
            color2 = [ 1 1 1 ];
        elseif iMode == 2
            strOutputPath = sprintf('%slocalizer_inv.bmp', strOutputFolder);     
            color1 = [ 1 1 1 ];
            color2 = [ 0 0 0 ];
        elseif iMode == 3
            strOutputPath = sprintf('%slocalizer_target.bmp', strOutputFolder);     
            color1 = [ 1 0 0 ];
            color2 = [ 0 0 0 ];
        end
  
        gabor3d = nan(imSize,imSize,3);       
        gabor3d(:,:,1) = color1(1)*grating + color2(1)*(1-grating);
        gabor3d(:,:,2) = color1(2)*grating + color2(2)*(1-grating);
        gabor3d(:,:,3) = color1(3)*grating + color2(3)*(1-grating);

        gabor3d(:,:,1) = gabor3d(:,:,1) .* gauss + color0(1)*(1-gauss);
        gabor3d(:,:,2) = gabor3d(:,:,2) .* gauss + color0(2)*(1-gauss);
        gabor3d(:,:,3) = gabor3d(:,:,3) .* gauss + color0(3)*(1-gauss);

        circleColor = [ 1 1 1];
        %circleColor = [ 0 0 0 ];

        % add salience with color dot
        if iMode == 3
            iRadius = 3;
            iCenter = ceil(imSize / 2);
            for x = (iCenter-iRadius):(iCenter+iRadius)
                for y = (iCenter-iRadius):(iCenter+iRadius)
                   if sqrt((x-iCenter)^2+(y-iCenter)^2) <= (iRadius+0.5)
                       gabor3d(x,y,1) = circleColor(1);
                       gabor3d(x,y,2) = circleColor(2);
                       gabor3d(x,y,3) = circleColor(3);
                   end
                end
            end
        end

        if iMode == 5
            %iOuterRadius = ceil(imSize / 2) - 4;
            %iInnerRadius = ceil(imSize / 2) - 5;
            iOuterRadius = ceil(imSize / 2) - 26;
            iInnerRadius = ceil(imSize / 2) - 27;
            iCenter = ceil(imSize / 2);
            for x = (iCenter-iOuterRadius):(iCenter+iOuterRadius)
                for y = (iCenter-iOuterRadius):(iCenter+iOuterRadius)
                   dbDistance = sqrt((x-iCenter)^2+(y-iCenter)^2);
                   if  dbDistance <= (iOuterRadius+0.5) && dbDistance >= (iInnerRadius-0.5)
                       gabor3d(x,y,1) = circleColor(1);
                       gabor3d(x,y,2) = circleColor(2);
                       gabor3d(x,y,3) = circleColor(3);
                   end
                end
            end
        end

        imwrite(gabor3d, strOutputPath, 'bmp');
        disp(strOutputPath);

        close();
        
    end

end
