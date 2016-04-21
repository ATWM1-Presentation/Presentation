function CreateGaborPatches()

    % http://www.icn.ucl.ac.uk/courses/MATLAB-Tutorials/Elliot_Freeman/html/gabor_tutorial.html

    strOutputFolder = '/Users/mmb/MEG/ATWM1/Presentation/PresentationExperiments_EXP9/Bitmaps/';
 
    vPhases = [0.25, 0.25];
    
    for bAddFrame = [0 1]
       
        for iPhase = 1:length(vPhases)

            % create frame versions only for phase = 0
            if iPhase > 1 && bAddFrame
                continue;
            end
            
            for iAngle = 1:180
 
                %% parameters
                imSize = 55;                           % image size: n X n
                lamda = 20;                             % wavelength (number of pixels per cycle)
                theta = iAngle;                         % grating orientation
                sigma = 8;                             % gaussian standard deviation in pixels
                phase = vPhases(iPhase);                % phase (0 -> 1)
                trim = .005;                            % trim off gaussian values smaller than this
                %trim = .1;                            % trim off gaussian values smaller than this

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
                grating = sin( Xf + phaseRad);          % make 2D sinewave
                %imagesc( grating, [-1 1] );             % display
                %colormap gray(256);                     % use gray colormap (0: black, 1: white)
                %axis off; axis image;                   % use gray colormap

                %% Change orientation by adding Xm and Ym together in different proportions
                thetaRad = (theta / 360) * 2*pi;        % convert theta (orientation) to radians
                Xt = Xm * cos(thetaRad);                % compute proportion of Xm for given orientation
                Yt = Ym * sin(thetaRad);                % compute proportion of Ym for given orientation
                XYt = [ Xt + Yt ];                      % sum X and Y components
                XYf = XYt * freq * 2*pi;                % convert to radians and scale by frequency
                grating = sin( XYf + phaseRad);                   % make 2D sinewave
                %imagesc( grating, [-1 1] );                     % display
                %axis off; axis image;    % use gray colormap

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
                
                if iPhase == 1
                    if bAddFrame
                        strOutputPath = sprintf('%sgabor_%03d_framed.bmp', strOutputFolder, iAngle);
                    else
                        strOutputPath = sprintf('%sgabor_%03d.bmp', strOutputFolder, iAngle);
                    end
                else
                    strOutputPath = sprintf('%sgabor_%03d_alt.bmp', strOutputFolder, iAngle);
                end
                %saveas(gcf, strOutputPath, 'bmp'); % error on macosx
                % workaround:
                %print(gcf, '-dbmp', strOutputPath);

                % scale to [0,1]
                grating = grating - min(grating(:));
                grating = grating ./ max(grating(:));
                
                if iPhase == 1
                   %color1 = [ 1 0 0 ];
                   color1 = [ 0 0 0 ];
                   color2 = [ 1 1 1 ];             
                else
                   %color1 = [ 0 1 0 ];
                   color1 = [ 0 0 0 ];
                   color2 = [ 1 1 1 ];             
                end
               
                color0 = [ 0.5 0.5 0.5 ]; % background color
                              
                gabor3d = nan(imSize,imSize,3);       
                gabor3d(:,:,1) = color1(1)*grating + color2(1)*(1-grating);
                gabor3d(:,:,2) = color1(2)*grating + color2(2)*(1-grating);
                gabor3d(:,:,3) = color1(3)*grating + color2(3)*(1-grating);
                
                gabor3d(:,:,1) = gabor3d(:,:,1) .* gauss + color0(1)*(1-gauss);
                gabor3d(:,:,2) = gabor3d(:,:,2) .* gauss + color0(2)*(1-gauss);
                gabor3d(:,:,3) = gabor3d(:,:,3) .* gauss + color0(3)*(1-gauss);
                
                if bAddFrame
                    % add white frame around gabor patch
                    iPixelThickness = 3;
                    gabor3d([1:iPixelThickness],:,1) = 255;
                    gabor3d([1:iPixelThickness],:,2) = 255;
                    gabor3d([1:iPixelThickness],:,3) = 255;
                    gabor3d([end-iPixelThickness+1:end],:,1) = 255;
                    gabor3d([end-iPixelThickness+1:end],:,2) = 255;
                    gabor3d([end-iPixelThickness+1:end],:,3) = 255;
                    gabor3d(:,[1:iPixelThickness],1) = 255;
                    gabor3d(:,[1:iPixelThickness],2) = 255;
                    gabor3d(:,[1:iPixelThickness],3) = 255;
                    gabor3d(:,[end-iPixelThickness+1:end],1) = 255;
                    gabor3d(:,[end-iPixelThickness+1:end],2) = 255;
                    gabor3d(:,[end-iPixelThickness+1:end],3) = 255;
                end
                
                % Create indexed image
                %[gaborOut,~] = gray2ind(gabor);

                %imwrite(gaborOut, gray(256), strOutputPath, 'bmp'); % darker output
                imwrite(gabor3d, strOutputPath, 'bmp');
                disp(strOutputPath);

                close();
            end 
        end
    end
end
