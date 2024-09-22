<TeXmacs|2.1>

<style|book>

<\body>
  <section|Master Equation, Detailed Balance, and Relative
  Entropy><label|section: Master Equation, Detailed Balance, and Relative
  Entropy>

  <subsection|Conventions in This Section>

  Let <math|X> a multi-dimensional random variables, being, discrete,
  continuous, or partially discrete and partially continuous, with alphabet
  <math|\<cal-X\>> and distribution <math|P>. Even though the discussion in
  this section applies to both discrete and continuous random variables, we
  use the notation of the continuous. The reason is that converting from
  discrete to continuous may cause problems (section <reference|section:
  Shannon Entropy Fails for Continuous Random Variable>), while the inverse
  will be safe and direct as long as any smooth structure of <math|X> is not
  employed throughout the discussion.

  <subsection|Master Equation Describes Generic Dynamics of Markov
  Chain><label|section: Master Equation Describes Generic Dynamics of Markov
  Chain>

  The generic dynamics of a Markov chain can be characterized by its
  <with|font-series|bold|transition density>
  <math|q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|y\|x|)>> which describes
  the density that transits from <math|x> at time <math|t> to <math|y> at
  time <math|t<rprime|'>>. Since the underlying dynamics which determines
  <math|q<rsub|t\<rightarrow\>t<rprime|'>>> is usually autonomous, we can
  suppose that <math|q<rsub|t\<rightarrow\>t<rprime|'>>> depends only on the
  difference <math|\<Delta\>t\<assign\>t<rprime|'>-t>. This will greatly
  reduce the complexity while covering most of the important situations. So,
  throughout this note, we use <math|q<rsub|\<Delta\>t>> instead of
  <math|q<rsub|t\<rightarrow\>t<rprime|'>>>.

  During a temporal unit <math|\<Delta\>t>, the change of density at
  <math|X=x> equals to the total density that transits into <math|x>
  subtracting the total density that transits out of <math|x>. That is,

  <\equation>
    p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|x\|y|)>p<around*|(|y,t|)>-<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|y\|x|)>p<around*|(|x,t|)>.<label|equation:Discrete
    Time Master Equation>
  </equation>

  It is called the <with|font-series|bold|discrete time master equation>.

  What are the requirements for transition density? The last term of master
  equation <reference|equation:Discrete Time Master Equation> can be
  re-written as <math|p<around*|(|x,t|)>\<times\><big|int><rsub|\<cal-X\>>\<mathd\>y
  q<rsub|\<Delta\>t><around*|(|y\|x|)>>. If <math|q<rsub|\<Delta\>t>> is
  normalized by <math|<big|int><rsub|\<cal-X\>>\<mathd\>y
  q<rsub|\<Delta\>t><around*|(|y\|x|)>=1> for any <math|x\<in\>\<cal-X\>>,
  then we have

  <\equation*>
    p<around*|(|x,t+\<Delta\>t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|x\|y|)>p<around*|(|y,t|)>.
  </equation*>

  It means the density at <math|x> equals to the density transited into
  <math|x> during the time interval <math|\<Delta\>t> (this is a little
  weird). We have <math|p<around*|(|x,t|)>\<gtr\>0> for all
  <math|x\<in\>\<cal-X\>>, but have to guarantee that
  <math|p<around*|(|x,t+\<Delta\>t|)>\<gtr\>0>, for sharing the same alphabet
  <math|\<cal-X\>>. Basically, this requires
  <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>> to be non-negative for all
  <math|x,y\<in\>\<cal-X\>>, since, otherwise, we can construct a
  <math|p<around*|(|y,t|)>> with large value on the place where
  <math|q<rsub|\<Delta\>><around*|(|x\|y|)>\<less\>0> and tiny value on the
  rest, so that <math|p<around*|(|x,t+\<Delta\>t|)>\<less\>0>. This is
  natural since <math|q<rsub|\<Delta\>><around*|(|x\|y|)>> describes the
  transited density, and negative transited density cannot be \Pphysical\Q.
  It further requires that for each <math|x\<in\>\<cal-X\>>, there is density
  transited into <math|x>. Precisely, for any <math|x> there is a measurable
  subset of <math|y> such that <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>\<gtr\>0>.
  Combined with the non-negativity, it directly implies
  <math|p<around*|(|x,t+\<Delta\>t|)>\<gtr\>0>. As a summary, we require the
  transition density <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>> to be
  normalized on <math|x>, to be non-negative, and to be that there is
  measurable density transited into <math|x> (or equivalently,
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>y
  q<rsub|\<Delta\>t><around*|(|x\|y|)>\<gtr\>0>).

  If we apply <math|q<rsub|\<Delta\>t>> twice to <math|p<around*|(|x,t|)>>,
  we get <math|p<around*|(|x,t+2\<Delta\>t|)>>:

  <\align>
    <tformat|<table|<row|<cell|>|<cell|p<around*|(|x,t+2\<Delta\>t|)>>>|<row|<cell|<around*|{|<text|master
    equation>|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|x\|y|)>p<around*|(|y,t+\<Delta\>t|)>>>|<row|<cell|<around*|{|<text|master
    equation>|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|x\|y|)> <big|int><rsub|\<cal-X\>>\<mathd\>z
    q<rsub|\<Delta\>t><around*|(|y\|z|)>p<around*|(|z,t|)>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>z<around*|[|<big|int><rsub|\<cal-X\>>\<mathd\>y
    \ q<rsub|\<Delta\>t><around*|(|x\|y|)>
    q<rsub|\<Delta\>t><around*|(|y\|z|)>|]>p<around*|(|z,t|)>>>|<row|<cell|<around*|{|<text|definition
    of <math|q<rsub|2\<Delta\>t>>>|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>z
    q<rsub|2\<Delta\>t><around*|(|x\|z|)> p<around*|(|z,t|)>,>>>>
  </align>

  thus, <math|q<rsub|2\<Delta\>t><around*|(|x\|z|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
  \ q<rsub|\<Delta\>t><around*|(|x\|y|)> q<rsub|\<Delta\>t><around*|(|y\|z|)>>.
  Repeat this process, we will arrive at

  <\equation>
    q<rsub|<around*|(|n+1|)> \<Delta\>t><around*|(|x\|z|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|1>\<cdots\><big|int>\<mathd\>y<rsub|n>
    q<rsub|\<Delta\>t><around*|(|x\|y<rsub|1>|)>\<cdots\>q<rsub|\<Delta\>t><around*|(|y<rsub|n>\|z|)>.
  </equation>

  This is a little like path integral: we sum over all the paths from
  <math|z> to <math|x>.

  If <math|q<rsub|\<Delta\>t>> is smooth on <math|\<Delta\>t>, then we have
  the linear expansion <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>=\<chi\><around*|(|x,y|)>+r<around*|(|x,y|)>
  \<Delta\>t+o<around*|(|\<Delta\>t|)>> where <math|q<rsub|0>> and <math|r>
  are well-defined functions (at least well-defined <hlink|generalized
  function|https://en.wikipedia.org/wiki/Generalized_function>s). When
  <math|\<Delta\>t=0>, there is no transition at all, and
  <math|p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
  \<chi\><around*|(|x,y|)>p<around*|(|y,t|)>>. The density function <math|p>
  is arbitrary, implying that <math|\<chi\><around*|(|x,y|)>=\<delta\><around*|(|x-y|)>>.
  Plugging all these back to equation <reference|equation:Discrete Time
  Master Equation> and taking the limit <math|\<Delta\>t\<rightarrow\>0>, we
  get the <with|font-series|bold|continuous time master equation>:

  <\equation>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    r<around*|(|x,y|)>p<around*|(|y,t|)>-<big|int><rsub|\<cal-X\>>\<mathd\>y
    r<around*|(|y,x|)>p<around*|(|x,t|)>.<label|equation:Master Equation>
  </equation>

  The <math|r> is called the <with|font-series|bold|transition rate>,
  characterizing the speed of transition. The normalization
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  q<rsub|\<Delta\>t><around*|(|x\|y|)>=1> demands that
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>x r<around*|(|x,y|)>=0>. And the
  non-negativity <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>\<geqslant\>0>
  demands that <math|r<around*|(|x,y|)>\<geqslant\>0> when <math|x\<neq\>y>.
  The last requirement of transition density demands that
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|x,y|)>\<gtr\>-1>,
  which is a little weird.

  <subsection|Detailed Balance Provides Stationary Distribution>

  Let <math|\<Pi\>> a stationary solution of master equation
  <reference|equation:Master Equation>. Then, <math|\<Pi\>> satisfies
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>y <around*|[|r<around*|(|x,y|)>
  \<pi\><around*|(|y|)>-r<around*|(|y,x|)>\<pi\><around*|(|x|)>|]>=0>. But,
  this condition is too weak to be used. A more useful condition, which is
  stronger than this, is that the integrand vanishes everywhere:

  <\equation>
    r<around*|(|x,y|)> \<pi\><around*|(|y|)>=r<around*|(|y,x|)>\<pi\><around*|(|x|)>,<label|equation:Detailed
    Balance>
  </equation>

  which is called the <with|font-series|bold|detailed balance> condition.

  Given a transition rate, we wonder if there exists a density function such
  that detailed balance <reference|equation:Detailed Balance> holds. This
  problem is very complicated. In many applications, we consider the inverse:
  given a density function, if there exists a transition rate such that
  detailed balance holds. This inverse problem is much simpler, and a proper
  transition rate can be constructed out of the density function (such as in
  Metropolis-Hastings algorithm).

  <subsection|Detailed Balance and Connectivity Monotonically Reduce Relative
  Entropy><label|section: Detailed Balance with Ergodicity Monotonically
  Reduces Relative Entropy>

  Given the time <math|t>, if the time-dependent distribution
  <math|P<around*|(|t|)>> and the stationary distribution <math|\<Pi\>> share
  the same alphabet <math|\<cal-X\>>, which means
  <math|p<around*|(|x,t|)>\<gtr\>0> and <math|\<pi\><around*|(|x|)>\<gtr\>0>
  for each <math|x\<in\>\<cal-X\>>, we have defined the relative entropy
  between them, as

  <\equation>
    H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)> ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.
  </equation>

  It describes the uncertainty (surprise) caused by <math|P<around*|(|t|)>>
  when prior knowledge is given by <math|\<Pi\>>. It is a plausible
  generalization of Shannon entropy to continuous random variables.

  We can calculate the time-derivative of relative entropy by master equation
  <reference|equation:Master Equation>. Generally, the time-derivative of
  relative entropy has no interesting property. But, if the <math|\<pi\>> is
  more than stationary but satisfying a stronger condition: detailed balance,
  then <math|\<mathd\>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>/\<mathd\>t> will
  have a regular form<\footnote>
    The proof is given as follow. Directly, we have

    <\align>
      <tformat|<table|<row|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=>|<cell|<frac|\<mathd\>|\<mathd\>t><big|int><rsub|\<cal-X\>>\<mathd\>x
      <around*|[|p<around*|(|x,t|)> ln p<around*|(|x,t|)>-p<around*|(|x,t|)>
      ln \<pi\><around*|(|x|)>|]>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <around*|[|<frac|\<partial\>p|\<partial\>t><around*|(|x,t|)> ln
      p<around*|(|x,t|)>+<frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>-<frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>
      \ ln \<pi\><around*|(|x|)>|]>.>>>>
    </align>

    Since <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
    <around*|(|\<partial\>p/\<partial\>t|)><around*|(|x,t|)>=<around*|(|\<partial\>/\<partial\>t|)><big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)>=0>, the second term vanishes. Then, we get

    <\equation*>
      <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
      <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>
      ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.
    </equation*>

    Now, we replace <math|\<partial\>p/\<partial\>t> by master equation
    <reference|equation:Master Equation>, as

    <\equation*>
      <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y <around*|[|r<around*|(|x,y|)>
      p<around*|(|y,t|)>-r<around*|(|y,x|)> p<around*|(|x,t|)>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>,
    </equation*>

    Then, insert detailed balance <math|r<around*|(|x,y|)>=r<around*|(|y,x|)>
    \<pi\><around*|(|x|)>/\<pi\><around*|(|y|)>>, as

    <\align>
      <tformat|<table|<row|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y <around*|[|r<around*|(|y,x|)>
      \<pi\><around*|(|x|)> <frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-r<around*|(|y,x|)>p<around*|(|x,t|)>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.>>>>
    </align>

    Since <math|x> and <math|y> are dummy, we interchange them in the
    integrand, and then insert detailed balance again, as

    <\align>
      <tformat|<table|<row|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|x,y|)>
      \<pi\><around*|(|y|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>
      \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>>>|<row|<cell|<around*|{|detailed
      balance|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>
      \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>.>>>>
    </align>

    By adding the two previous results together, we find

    <\align>
      <tformat|<table|<row|<cell|>|<cell|2
      <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>>>|<row|<cell|<around*|[|1st
      result|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>|<row|<cell|<around*|[|2nd
      result|]>+>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>
      \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>>>|<row|<cell|=>|<cell|-<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]><around*|[|
      ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>,>>>>
    </align>

    from which we directly get the result. Notice that this proof is very
    tricky: it uses detailed balance twice, between which the expression is
    symmetrized. It is an ingenious mathematical engineering.
  </footnote>

  <\equation>
    <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=-<frac|1|2><big|int><rsub|\<cal-X\>>\<mathd\>x
    <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
    \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]><around*|[|
    ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>.<label|equation:relative
    entropy derivative>
  </equation>

  \;

  We are to check the sign of the integrand. The <math|r<around*|(|y,x|)>> is
  negative only when <math|x=y>, on which the integrand vanishes. Thus,
  <math|r<around*|(|y,x|)>> can be treated as non-negative, so is the
  <math|r<around*|(|y,x|)> \<pi\><around*|(|x|)>> (since
  <math|\<pi\><around*|(|x|)>\<gtr\>0> for all <math|x\<in\>\<cal-X\>>). Now,
  we check the sign of the last two terms. If
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>\<gtr\>p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>,
  then <math|ln<around*|[|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>|]>\<gtr\>ln<around*|[|p<around*|(|y,t|)>/\<pi\><around*|(|y|)>|]>>,
  thus the sign of the last two terms is positive. The same goes for
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>\<less\>p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>.
  Only when <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>
  can it be zero. Altogether, the integrand is non-positive, thus
  <math|\<mathd\>H/\<mathd\>t\<leqslant\>0>.

  The integrand vanishes when either <math|r<around*|(|y,x|)>=0> or
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>.
  If <math|r<around*|(|y,x|)>\<gtr\>0> for each <math|x\<neq\>y>, then
  <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=0> only when
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>
  for all <math|x,y\<in\>\<cal-X\>>, which implies that
  <math|p<around*|(|\<cdummy\>,t|)>=\<pi\>> (since
  <math|><math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
  \<pi\><around*|(|x|)>=1>), or <math|P<around*|(|t|)>=\<Pi\>>.

  Contrarily, if <math|r<around*|(|y,x|)>=0> on some subset
  <math|U\<subset\>\<cal-X\>\<times\>\<cal-X\>>, it seems that
  <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=0> cannot imply
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>
  on <math|U>. But, if there is a <math|z\<in\>\<cal-X\>> such that both
  <math|<around*|(|x,z|)>> and <math|<around*|(|y,z|)>> are not in <math|U>,
  then <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=0> implies
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|z,t|)>/\<pi\><around*|(|z|)>>
  and <math|p<around*|(|y,t|)>/\<pi\><around*|(|y|)>=\<pi\><around*|(|z,t|)>/\<pi\><around*|(|z|)>>,
  thus implies <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>.
  It hints for connectivity. Precisely, for each <math|x,z\<in\>\<cal-X\>>,
  if there is a series <math|<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>>
  from <math|x> (<math|y<rsub|1>\<assign\>x>) to <math|z>
  (<math|y<rsub|n>\<assign\>z>) with both
  <math|r<around*|(|y<rsub|i+1>,y<rsub|i>|)>> and
  <math|r<around*|(|y<rsub|i>,y<rsub|i+1>|)>> are positive for each <math|i>,
  then we say <math|x> and <math|z> are <with|font-series|bold|connected>,
  and the series is called a <with|font-series|bold|path>. It means
  <with|font-shape|italic|there are densities transiting along the forward
  and backward directions of the path.> In this situation,
  <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=0> implies
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|z,t|)>/\<pi\><around*|(|z|)>>.<\footnote>
    We have, along the path, <math|p<around*|(|y<rsub|1>,t|)>/\<pi\><around*|(|y<rsub|1>|)>=p<around*|(|y<rsub|2>,t|)>/\<pi\><around*|(|y<rsub|2>|)>=\<cdots\>=p<around*|(|y<rsub|n>,t|)>/\<pi\><around*|(|y<rsub|n>|)>>,
    thus <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|z,t|)>/\<pi\><around*|(|z|)>>
    since <math|x=y<rsub|1>> and <math|z=y<rsub|n>>.
  </footnote> So, by repeating the previous discussion on the case
  \P<math|r<around*|(|y,x|)>\<gtr\>0> for each <math|x\<neq\>y>\Q, we find
  <math|P<around*|(|t|)>=\<Pi\>> at <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=0> if every two elements in
  <math|\<cal-X\>> are connected.

  Let us examine the connectivity further. We additionally
  <with|font-shape|italic|define> that every element in <math|\<cal-X\>> is
  connected to itself, then connectivity forms an equivalence relation. So,
  it seperates <math|\<cal-X\>> into subsets (equivalence classes)
  <math|\<cal-X\><rsub|1>,\<ldots\>,\<cal-X\><rsub|n>> with
  <math|\<cal-X\><rsub|i>\<cap\>\<cal-X\><rsub|j>=\<varnothing\>> for each
  <math|i\<neq\>j> and <math|\<cal-X\>=\<cup\><rsub|i=1><rsup|n>\<cal-X\><rsub|i>>.
  In each subset <math|\<cal-X\><rsub|i>>, every two elements are connected.
  In this way, the whole random system are seperated into many independent
  subsystems. The distributions <math|P<rsub|i><around*|(|t|)>> and
  <math|\<Pi\><rsub|i>> defined in the subsystem <math|i> have the alphabet
  <math|\<cal-X\><rsub|i>> and densities functions
  <math|p<rsub|i><around*|(|x,t|)>\<assign\>p<around*|(|x,t|)>/<big|int><rsub|\<cal-X\><rsub|i>>\<mathd\>x
  p<around*|(|x,t|)>> and <math|\<pi\><rsub|i><around*|(|x|)>\<assign\>\<pi\><around*|(|x|)>/<big|int><rsub|\<cal-X\><rsub|i>>\<mathd\>x
  \<pi\><around*|(|x|)>> respectively (the denominators are used for
  normalization). Applying the previous discussion to this subsystem, we find
  <math|P<rsub|i><around*|(|t|)>=\<Pi\><rsub|i>> at
  <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<rsub|i><around*|(|t|)>,\<Pi\><rsub|i>|)>=0>.

  So, for the whole random system or each of its subsystems, the following
  theorem holds.

  <\theorem>
    Let <math|\<Pi\>> a distribution with alphabet <math|\<cal-X\>>. If there
    is a transition rate r such that 1) every two elements in
    <math|\<cal-X\>> are connected and that 2) the detailed balance
    <reference|equation:Detailed Balance> holds for <math|\<Pi\>> and
    <math|r>, then for any time-dependent distribution
    <math|P<around*|(|t|)>> with the same alphabet (at one time) evolved by
    the master equation <reference|equation:Master Equation>,
    <math|P<around*|(|t|)>> will monotonically and constantly relax to
    <math|\<Pi\>>.
  </theorem>

  Many textures use Fokker-Planck equation to prove the monotonic reduction
  of relative entropy. With an integral by part, they arrive at a negative
  definite expression, which means the monotonic reduction. This proof needs
  smooth structure on <math|X>, which is essential for integral by part. In
  this section, we provides a more generic alternative to the proof, for
  which smooth structure on <math|X> is unnecessary. It employs detailed
  condition instead of Fokker-Planck equation, which is a specific case of
  detailed balance (section <reference|section: Conservative Langevin
  Dynamics Satisfies Detailed Balance>).

  <subsection|Temporal Smoothness of Transition Density Is Necessary to
  Ensure Relaxation>

  The temporal smooth structure, however, cannot be avoided. Indeed, the
  smoothness of transition density on time and thus the smoothness of
  <math|p<around*|(|x,t|)>> on <math|t> is essential for the monotonic
  reduction of relative entropy, which is the essential end of our
  discussion.<\footnote>
    You may wonder if the temporal smoothness implies the continuum of
    alphabet. Explicitly, if <math|p<around*|(|x,t|)>> is smooth on <math|t>,
    then does the value of <math|x> have to be continuous? The answer is no.
    For example, consider an alphabet <math|\<cal-X\>=<around*|{|0,1|}>>; the
    <math|p<around*|(|1,t|)>> is given by
    <math|\<sigma\><around*|(|\<zeta\><around*|(|t|)>|)>> where
    <math|\<sigma\>> denotes the sigmoid function and
    <math|\<zeta\><around*|(|t|)>> is smooth on <math|t>, thus
    <math|p<around*|(|0,t|)>=1-\<sigma\><around*|(|\<zeta\><around*|(|t|)>|)>>.
    In this example, <math|p<around*|(|x,t|)>> is smooth on <math|t> but the
    random variable is discrete.
  </footnote>

  To see this clearly, let us examine <math|H<around*|(|P<around*|(|t+\<Delta\>t|)>,\<Pi\>|)>-H<around*|(|P<around*|(|t|)>,\<Pi\>|)>>
  when <math|\<Delta\>t> is not an infinitesimal. By definition,

  <\equation*>
    H<around*|(|P<around*|(|t+\<Delta\>t|)>,\<Pi\>|)>-H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t+\<Delta\>t|)> ln<frac|p<around*|(|x,t+\<Delta\>t|)>|\<pi\><around*|(|x|)>>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)> ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.
  </equation*>

  Inserting <math|<with|color|dark cyan|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,t+\<Delta\>t|)> ln<around*|(|p<around*|(|x,t|)>/\<pi\><around*|(|x,t|)>|)>>>
  gives

  <\align>
    <tformat|<table|<row|<cell|>|<cell|H<around*|(|P<around*|(|t+\<Delta\>t|)>,\<Pi\>|)>-H<around*|(|P<around*|(|t|)>,\<Pi\>|)>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t+\<Delta\>t|)> ln<frac|p<around*|(|x,t+\<Delta\>t|)>|\<pi\><around*|(|x|)>>-<with|color|dark
    cyan|<big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x,t+\<Delta\>t|)>
    ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>>|<row|<cell|+>|<cell|<with|color|dark
    cyan|<big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x,t+\<Delta\>t|)>
    ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)> ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t+\<Delta\>t|)> ln<frac|p<around*|(|x,t+\<Delta\>t|)>|p<around*|(|x,t|)>>>>|<row|<cell|+>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
    <around*|[|p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>|]>
    ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>>>
  </align>

  The first line is recognized as <math|H<around*|(|P<around*|(|t+\<Delta\>t|)>,P<around*|(|t|)>|)>>,
  which is non-negative. Following the same steps in section
  <reference|section: Detailed Balance with Ergodicity Monotonically Reduces
  Relative Entropy> (but using discrete time master equation
  <reference|equation:Discrete Time Master Equation> instead), the second
  line reduces to

  <\equation*>
    -<frac|1|2><big|int><rsub|\<cal-X\>>\<mathd\>x<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|y\|x|)>\<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]><around*|[|
    ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>,
  </equation*>

  which is non-positive. The sign of the final result can be arbitrary.
  Indeed, the first line is determined by the difference between
  <math|p<around*|(|\<cdummy\>,t+\<Delta\>t|)>> and
  <math|p<around*|(|\<cdummy\>,t|)>>, while the second line is determined by
  the difference between <math|p<around*|(|\<cdummy\>,t|)>> and
  <math|\<pi\>>. They are intrinsically different, thus mutually independent.
  So, we conclude that the smoothness of <math|q<rsub|\<Delta\>t>> on
  <math|\<Delta\>t> is essential for the guarantee of the monotonic reduce of
  relative entropy between <math|p<around*|(|\<cdummy\>,t|)>> and
  <math|\<pi\>>, thus its relaxation.

  <section|Kramers-Moyal Expansion and Langevin Dynamics>

  We follow the discussion in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>, but focusing on the specific
  situation where there is extra smooth structure on <math|X>. This
  smoothness reflects on the connectivity of the alphabet <math|\<cal-X\>>,
  and on the smooth \Pspatial\Q dependence of the density functions
  <math|p<around*|(|x,t|)>> and <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>>.
  This means, the conclusions in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy> hold in this section, but the
  inverse is not guaranteed.

  <subsection|Spatial Expansion of Master Equation Gives Kramers-Moyal
  Expansion>

  Let the alphabet <math|\<cal-X\>=\<bbb-R\><rsup|n>> for some integer
  <math|n\<geqslant\>1>, which has sufficient connectivity. In addition,
  suppose that <math|p<around*|(|x,t|)>> and
  <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>> are smooth on <math|x> and
  <math|y>.

  Now, the master equation <reference|equation:Discrete Time Master Equation>
  becomes

  <\equation*>
    p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    <around*|[|q<rsub|\<Delta\>t><around*|(|x\|y|)>
    p<around*|(|y,t|)>-q<rsub|\<Delta\>t><around*|(|y\|x|)>p<around*|(|x,t|)>|]>.
  </equation*>

  Let <math|\<epsilon\>\<assign\>x-y> and
  <math|\<omega\><around*|(|x,\<epsilon\>|)>\<assign\>q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>>.
  We then have, for the first term,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|x\|y|)> p<around*|(|y,t|)>>>|<row|<cell|<around*|{|y=x-\<epsilon\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x\|x-\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|<around*|(|x-\<epsilon\>|)>+\<epsilon\>\|x-\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>>>|<row|<cell|<around*|{|\<omega\>\<assign\>\<cdots\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x-\<epsilon\>,\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>.>>>>
  </align>

  And for the second term,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|y\|x|)>p<around*|(|x,t|)>>>|<row|<cell|<around*|{|y=x-\<epsilon\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\><around*|(|-\<epsilon\>|)>
    q<rsub|\<Delta\>t><around*|(|x-\<epsilon\>\|x|)>
    p<around*|(|x,t|)>>>|<row|<cell|<around*|{|-\<epsilon\>\<rightarrow\>\<epsilon\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<around*|(|x+\<epsilon\>\|x|)> p<around*|(|x,t|)>>>|<row|<cell|<around*|{|\<omega\>\<assign\>\<cdots\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x,\<epsilon\>|)> p<around*|(|x,t|)>.>>>>
  </align>

  Altogether, we have

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x-\<epsilon\>,\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x,\<epsilon\>|)> p<around*|(|x,t|)>.
  </equation*>

  Now, since <math|q<rsub|\<Delta\>t>> and <math|p> are smooth, we can Taylor
  expand the first term, and find

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \ \<omega\><around*|(|x,\<epsilon\>|)>
    p<around*|(|x,t|)>+<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|p<around*|(|x,t|)> <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>|]>.
  </equation*>

  All together, we get

  <\equation*>
    p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|p<around*|(|x,t|)> <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>|]>.
  </equation*>

  By denoting

  <\equation*>
    M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>,
  </equation*>

  we arrive at

  <\equation>
    p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>
    p<around*|(|x,t|)>|]>.<label|equation:Kramers-Moyal expansion>
  </equation>

  This is called the <with|font-series|bold|Kramers\UMoyal expansion>.

  Recalling that <math|\<omega\><around*|(|x,\<epsilon\>|)>=q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>>,
  we have

  <\equation*>
    M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>
  </equation*>

  so <math|M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>>
  is recognized as the <math|k>-order moment of <math|\<epsilon\>> sampled
  from transition density <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>>
  (regarding <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>> as a
  distribution <math|Q<rsub|\<Delta\>t><around*|(|\<epsilon\>|)>>).

  <subsection|Langevin Dynamics that Satisfies Detailed Balance Is
  Conservative><label|section: Conservative Langevin Dynamics Satisfies
  Detailed Balance>

  Given <math|\<mu\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> and
  <math|\<Sigma\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n\<times\>n>>,
  which is positive definite and symmetric, the transition density of
  <with|font-series|bold|Langevin dynamics>,
  <math|q<rsub|\<mathd\>t><around*|(|x<rprime|'>\|x|)>>, is a normal
  distribution of <math|x<rprime|'>-x> with mean value
  <math|\<mu\><around*|(|x|)> \<mathd\>t> and variance
  <math|2\<Sigma\><around*|(|x|)>\<mathd\>t>. Thus,
  <math|M<rsup|\<alpha\>><around*|(|x|)>=\<mu\><rsup|\<alpha\>><around*|(|x|)>
  \<mathd\>t>, <math|M<rsup|\<alpha\>\<beta\>><around*|(|x|)>=2\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
  \<mathd\>t>, and higher orders are of <math|o<around*|(|\<mathd\>t|)>>. The
  Kramers-Moyal expansion gives

  <\equation>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=-\<nabla\><rsub|\<alpha\>><around*|(|\<mu\><rsup|\<alpha\>><around*|(|x|)>
    p<around*|(|x,t|)>|)>+\<nabla\><rsub|\<alpha\>>\<nabla\><rsub|\<beta\>><around*|(|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    p<around*|(|x,t|)>|)>,
  </equation>

  which is the <with|font-series|bold|Fokker-Planck equation>.

  As a special case of master equation, we may wonder when Fokker-Planck
  equation will satisfy detailed balance? Directly from the form of
  transition density, we find that if there is a stationary distribution
  <math|\<Pi\>> such that Fokker-Planck equation satisfies detailed balance,
  then we must have <\footnote>
    <\small>
      Suppose there is a stationary distribution <math|\<pi\>> such that
      <math|q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>
      \<pi\><around*|(|x|)>=q<rsub|\<mathd\>t><around*|(|x\|x+\<epsilon\>|)>\<pi\><around*|(|x+\<epsilon\>|)>>.
      Since <math|q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>> obeys
      normal distribution <math|\<cal-N\><around*|(|\<mu\><around*|(|x|)>\<mathd\>t,2\<Sigma\><around*|(|x|)>\<mathd\>t|)>>
      on <math|\<epsilon\>>, the the relation comes to be

      <\align>
        <tformat|<table|<row|<cell|>|<cell|<frac|1|<sqrt|<around*|(|4\<pi\>|)><rsup|n>
        det<around*|[|\<Sigma\><around*|(|x|)>|]>>>exp<around*|(|-<frac|1|4\<mathd\>t><around*|(|\<epsilon\>-\<mu\><around*|(|x|)>\<mathd\>t|)>\<cdummy\>\<Sigma\><rsup|-1><around*|(|x|)>\<cdot\><around*|(|\<epsilon\>-\<mu\><around*|(|x|)>\<mathd\>t|)>|)>\<pi\><around*|(|x|)>>>|<row|<cell|=>|<cell|<frac|1|<sqrt|<around*|(|4\<pi\>|)><rsup|n>
        det<around*|[|\<Sigma\><around*|(|x+\<epsilon\>|)>|]>>>exp<around*|(|-<frac|1|4\<mathd\>t><around*|(|-\<epsilon\>-\<mu\><around*|(|x+\<epsilon\>|)>\<mathd\>t|)>\<cdummy\>\<Sigma\><rsup|-1><around*|(|x+\<epsilon\>|)>\<cdot\><around*|(|-\<epsilon\>-\<mu\><around*|(|x+\<epsilon\>|)>\<mathd\>t|)>|)>\<pi\><around*|(|x+\<epsilon\>|)>.>>>>
      </align>

      Notice that

      <\align>
        <tformat|<table|<row|<cell|ln det<around*|[|\<Sigma\><around*|(|x+\<epsilon\>|)>|]>=>|<cell|ln
        det<around*|[|\<Sigma\><around*|(|x|)>+<around*|(|\<epsilon\>\<cdummy\>\<nabla\>|)>\<Sigma\><around*|(|x|)>|]>>>|<row|<cell|=>|<cell|ln
        det<around*|[|\<Sigma\><around*|(|x|)>|]>+ln
        det<around*|[|1+<around*|(|\<epsilon\>\<cdummy\>\<nabla\>|)><around*|(|\<Sigma\><rsup|-1><around*|(|x|)>\<cdummy\>\<Sigma\><around*|(|x|)>|)>|]>>>|<row|<cell|=>|<cell|ln
        det<around*|[|\<Sigma\><around*|(|x|)>|]>+ln<around*|{|1+tr<around*|[|<around*|(|\<epsilon\>\<cdummy\>\<nabla\>|)><around*|(|\<Sigma\><rsup|-1><around*|(|x|)>\<cdummy\>\<Sigma\><around*|(|x|)>|)>|]>|}>>>|<row|<cell|=>|<cell|n
        det<around*|[|\<Sigma\><around*|(|x|)>|]>+
        tr<around*|[|<around*|(|\<epsilon\>\<cdummy\>\<nabla\>|)><around*|(|\<Sigma\><rsup|-1><around*|(|x|)>\<cdummy\>\<Sigma\><around*|(|x|)>|)>|]>>>|<row|<cell|=>|<cell|ln
        det<around*|[|\<Sigma\><around*|(|x|)>|]>+\<epsilon\>\<cdummy\>\<nabla\>tr
        ln \<Sigma\>.>>>>
      </align>

      The typical order of <math|\<epsilon\>> is
      <math|<with|font|cal|O><around*|(|<sqrt|\<Sigma\><around*|(|x|)>
      \<mathd\>t>|)>>, or say, <math|\<mu\><around*|(|x|)>\<mathd\>t=<with|font|cal|O><around*|(|\<epsilon\><rsup|2>
      \<mu\><around*|(|x|)>/\<Sigma\><around*|(|x|)>|)>>. If
      <math|\<mu\><around*|(|x|)>=<with|font|cal|O><around*|(|\<Sigma\><around*|(|x|)>|)>>,
      then we have <math|\<mu\><around*|(|x|)>
      \<mathd\>t=<with|font|cal|><around*|(|\<epsilon\><rsup|2>|)>>. So, we
      have

      <\equation*>
        -<frac|1|4\<mathd\>t><around*|(|-\<epsilon\>-\<mu\><around*|(|x+\<epsilon\>|)>\<mathd\>t|)>\<cdummy\>\<Sigma\><rsup|-1><around*|(|x+\<epsilon\>|)>\<cdot\><around*|(|-\<epsilon\>-\<mu\><around*|(|x+\<epsilon\>|)>\<mathd\>t|)>=-<frac|1|4\<mathd\>t><around*|(|-\<epsilon\>-\<mu\><around*|(|x|)>\<mathd\>t|)>\<cdummy\>\<Sigma\><rsup|-1><around*|(|x|)>\<cdot\><around*|(|-\<epsilon\>-\<mu\><around*|(|x|)>\<mathd\>t|)>+o<around*|(|\<epsilon\><rsup|2>|)>.
      </equation*>

      Altogether, expanding the first formula on both sides by
      <math|\<epsilon\>> to the lowest order gives

      <\equation*>
        \<mu\><around*|(|x|)>=\<Sigma\><around*|(|x|)>\<cdot\>\<nabla\><around*|[|ln\<pi\><around*|(|x|)>-<frac|1|2>
        tr ln \<Sigma\><around*|(|x|)>|]>.
      </equation*>
    </small>
  </footnote>

  <\equation>
    \<mu\><rsup|\<alpha\>><around*|(|x|)>=\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>\<nabla\><rsub|\<beta\>><around*|[|ln\<pi\><around*|(|x|)>-<frac|1|2>
    tr ln \<Sigma\><around*|(|x|)>|]>.
  </equation>

  This indicates that, to satisfy detailed balance, <math|\<mu\>> shall be
  conservative.<\footnote>
    Recall that <math|\<Sigma\>> is symmetric thus can be diagonalized, the
    <math|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>> factor can be
    then be absorbed by a re-definition of <math|x> and
    <math|\<mu\><around*|(|x|)>>, so that vector field <math|\<mu\>> is the
    gradient of a scalar function, that is, being conservative.
  </footnote>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|2>>
    <associate|auto-6|<tuple|1.5|4>>
    <associate|auto-7|<tuple|2|5>>
    <associate|auto-8|<tuple|2.1|5>>
    <associate|auto-9|<tuple|2.2|6>>
    <associate|equation:Detailed Balance|<tuple|4|2>>
    <associate|equation:Discrete Time Master Equation|<tuple|1|1>>
    <associate|equation:Kramers-Moyal expansion|<tuple|7|6>>
    <associate|equation:Master Equation|<tuple|3|2>>
    <associate|equation:relative entropy derivative|<tuple|6|3>>
    <associate|footnote-1|<tuple|1|3>>
    <associate|footnote-2|<tuple|2|3>>
    <associate|footnote-3|<tuple|3|4>>
    <associate|footnote-4|<tuple|4|6>>
    <associate|footnote-5|<tuple|5|6>>
    <associate|footnr-1|<tuple|1|3>>
    <associate|footnr-2|<tuple|2|3>>
    <associate|footnr-3|<tuple|3|4>>
    <associate|footnr-4|<tuple|4|6>>
    <associate|footnr-5|<tuple|5|6>>
    <associate|section: Conservative Langevin Dynamics Satisfies Detailed
    Balance|<tuple|2.2|6>>
    <associate|section: Detailed Balance with Ergodicity Monotonically
    Reduces Relative Entropy|<tuple|1.4|2>>
    <associate|section: Master Equation Describes Generic Dynamics of Markov
    Chain|<tuple|1.2|1>>
    <associate|section: Master Equation, Detailed Balance, and Relative
    Entropy|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Master Equation, Detailed Balance, and Relative Entropy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Master Equation Describes
      Generic Dynamics of Markov Chain <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Detailed Balance Provides
      Stationary Distribution <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Detailed Balance and
      Connectivity Monotonically Reduce Relative Entropy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Temporal Smoothness of
      Transition Density Is Necessary to Ensure Relaxation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      2<space|2spc>Kramers-Moyal Expansion and Langevin Dynamics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Spatial Expansion of Master
      Equation Gives Kramers-Moyal Expansion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Langevin Dynamics that
      Satisfies Detailed Balance Is Conservative
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>