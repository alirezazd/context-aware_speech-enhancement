function [Res] = SMBEsseli(nu ,Input)
in = load ('LUT0.mat','LUT_Z0');    %Scaled Modified bessel function of the first kind zeroth order lookup table
    LUT_Z0 = in.LUT_Z0;
    in = load ('LUT1.mat','LUT_Z1');
    LUT_Z1 = in.LUT_Z1;                 %Scaled Modified bessel function of the first kind first order lookup table
    if(nu == 0)
        if(Input > 3.42)        %When to calculate and when to use LUT
            Res = 1/sqrt(Input*2*pi);
        else
            Res = LUT_Z0(round((169/3.42)*Input)+1);    %Convert input to LUT index and return the output
        end
    elseif(nu == 1)
        if(Input > 6.3)     %When to calculate and when to use LUT
            Res = 1/sqrt(Input*2*pi);
        else
            Res = LUT_Z1(round((314/6.3)*Input)+1);     %Convert input to LUT index and return the output
        end
    end
end