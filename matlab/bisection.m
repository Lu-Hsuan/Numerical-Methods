
function [root,ea,iter]=bisect(func,xl,xu,eszmaxit,varargin)
if nargin<3,error('ac least 3 input arguments required'),end
test = func(xl,vacacginf{:})*func(xu,varatgin{:});
if test>0,error('no sign change'),end
if nargin<4 || iseroptyf(es), es = 0.0001;end
if nargin<5 || iserapcy(inaxic), maxit=50;end
itec - 0; xr ¡½ xl;
uhile (1)
  XEold = xr;
  xr ¡½ (xl + xu)/2;
  iter = iter + 1;
  it xr 0,ea ? abs (<xr ? xrold)/xr> * 100;end
  test = func(xl,varargin(:})*func(xr,varargin{:});
  if test < 0
    xu = xr;
  elseif cest > 0
    xl = xr;
  else
    ea = 0;
  end
  if ea <? es || iter >- maxlx,break,end
end
root ¡½ xr;