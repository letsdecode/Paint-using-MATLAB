%% FlAG paint
img = imread('india.png');
%img = imresize(img,[10 10]);
img=im2bw(rgb2gray(img),0.9);
imshow(img);
%%
import java.awt.Robot
import java.awt.event.*

robot = Robot();

robot.delay(1000);
robot.keyPress(KeyEvent.VK_ALT);
robot.keyPress(KeyEvent.VK_TAB);
robot.keyRelease(KeyEvent.VK_TAB);
robot.keyRelease(KeyEvent.VK_ALT);
robot.delay(500);

scrn = scrnshot([0,0,1920,1080]);
imshow(scrn);
[x,y]=ginput(3);

robot.delay(1000);
close

% color 1
robot.delay(500);
robot.mouseMove(x(1),y(1)); %move to color 1
robot.mouseMove(x(1),y(1));
robot.mouseMove(x(1),y(1));
robot.mouseMove(x(1),y(1));
robot.delay(100);
robot.mousePress(InputEvent.BUTTON1_MASK);  %select the color
robot.delay(100);
robot.mouseRelease(InputEvent.BUTTON1_MASK);    

robot.delay(1000);
start = [300,250];
robot.mouseMove(start(1),start(2));
robot.delay(1000);
for i=1:120      %upto 120 pixels we print one color
    robot.mouseMove(start(1),start(2)+i);
    for j=1:size(img,2)
        robot.mouseMove(start(1)+j,start(2)+i);
        if img(i,j)==0
            robot.mousePress(InputEvent.BUTTON1_MASK);
            robot.delay(1);
        else
            robot.mouseRelease(InputEvent.BUTTON1_MASK);
            robot.delay(1);
        end
    end
    robot.mouseRelease(InputEvent.BUTTON1_MASK);
end

%% second color
robot.delay(2000);
robot.mouseMove(x(2),y(2));
robot.mouseMove(x(2),y(2));
robot.mouseMove(x(2),y(2));
robot.mouseMove(x(2),y(2));   %move to second color
robot.mouseMove(x(2),y(2));
robot.delay(500);
robot.mousePress(InputEvent.BUTTON1_MASK);  %select other color
robot.delay(100);
robot.mouseRelease(InputEvent.BUTTON1_MASK);   

robot.delay(1000);
%robot.mouseMove(start(1),start(2));
robot.delay(2000);
for i=120:247            %between these pixels we paint other color
    robot.mouseMove(start(1),start(2)+i);
    for j=1:size(img,2)
        robot.mouseMove(start(1)+j,start(2)+i);
        if img(i,j)==0
            robot.mousePress(InputEvent.BUTTON1_MASK);
            robot.delay(1);
        else
            robot.mouseRelease(InputEvent.BUTTON1_MASK);
            robot.delay(1);
        end
    end
    robot.mouseRelease(InputEvent.BUTTON1_MASK);
end

%% third color
robot.delay(2000);
robot.mouseMove(x(3),y(3));   %move to third position
robot.mouseMove(x(3),y(3));
robot.mouseMove(x(3),y(3));
robot.mouseMove(x(3),y(3));
robot.mouseMove(x(3),y(3));
robot.delay(500);
robot.mousePress(InputEvent.BUTTON1_MASK);   %select the color
robot.delay(100);
robot.mouseRelease(InputEvent.BUTTON1_MASK);    



robot.delay(1000);
%robot.mouseMove(start(1),start(2));
robot.delay(2000);
for i=247:size(img,1)    %between these pixels paint third color
    robot.mouseMove(start(1),start(2)+i);
    for j=1:size(img,2)
        robot.mouseMove(start(1)+j,start(2)+i);
        if img(i,j)==0
            robot.mousePress(InputEvent.BUTTON1_MASK);
            robot.delay(1);
        else
            robot.mouseRelease(InputEvent.BUTTON1_MASK);
            robot.delay(1);
        end
    end
    robot.mouseRelease(InputEvent.BUTTON1_MASK);
end

