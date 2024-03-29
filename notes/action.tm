<TeXmacs|2.1>

<style|book>

<\body>
  <section|Least-Action Principle>

  In this section, we are to find a way of extracting dynamics (action or
  Lagrangian) from any raw data of any entity.

  <subsection|Conventions in This Section>

  Follow the conventions in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>.

  <subsection|Data Fitting Is Equivalent to Least-Action
  Principle><label|section: Generic Dynamics Can Be Extract From Data
  Fitting>

  Let <math|p<around*|(|\<cdummy\>,\<theta\>|)>> represent a parametrized
  distribution of <math|X>, and <math|q> a distribution of <math|X> that
  represents prior knowledge as in the case of maximum-entropy principle. Let
  <math|S<around*|(|x,\<theta\>|)>\<assign\>-ln
  <around*|(|p<around*|(|x,\<theta\>|)>/q<around*|(|x|)>|)>-ln
  Z<around*|(|\<theta\>|)>> with <math|Z> to be determined. Notice that the
  distribution <math|q> is essential for defining <math|S>, since <math|ln
  p<around*|(|x,\<theta\>|)>> is not well-defined. <\footnote>
    First, when the random variable <math|X> is continuous, the
    <math|p<around*|(|x,\<theta\>|)>> has dimension. But logarithm cannot
    accept a variable which has dimension. The second reason is that when we
    take a diffeomorphism of <math|X> to <math|X<rprime|'>>, which can be
    viewed as a coordinate transformation, <math|S> cannot be invariant. But,
    to make it an action (later), <math|S> has to be invariant under
    coordinate transformation. For these two reasons, <math|ln
    p<around*|(|x,\<theta\>|)>> is not well-defined. But, it is easy to prove
    that <math|ln <around*|(|p<around*|(|x,\<theta\>|)>/q<around*|(|x|)>|)>>
    is well-defined.
  </footnote> Then, we can re-formulate <math|p<around*|(|x,\<theta\>|)>> as

  <\equation>
    p<around*|(|x,\<theta\>|)>=Z<rsup|-1><around*|(|\<theta\>|)>
    q<around*|(|\<theta\>|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)><label|equation:Generic
    Density>,
  </equation>

  and since <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,\<theta\>|)>=1>,

  <\equation>
    Z<around*|(|\<theta\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|\<theta\>|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)><label|equation:Partition
    Function>.
  </equation>

  \;

  As a generic form of a parameterized distribution, it can be used to fit
  raw data that obeys an empirical distribution <math|p<rsub|D>>, by
  adjusting parameter <math|\<theta\>>. To do so, we employ the usual loss
  function <math|H<around*|[|p<rsub|D>,p<around*|(|\<cdummy\>,\<theta\>|)>|]>>.
  By omitting the <math|\<theta\>>-independent terms, the loss function comes
  to be

  <\equation*>
    L<around*|(|\<theta\>|)>\<assign\>ln Z<around*|(|\<theta\>|)>+\<bbb-E\><rsub|p<rsub|D>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>.
  </equation*>

  The best fit <math|\<theta\><rsub|\<star\>>> locates at the minimum of
  <math|L<around*|(|\<theta\>|)>>, where <math|p<around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>=p<rsub|D>>.
  At the minimum, we shall have <math|\<partial\>L/\<partial\>\<theta\>=0>.
  Then, we find that <math|\<theta\><rsub|\<star\>>> obeys

  <\equation>
    \<bbb-E\><rsub|p<around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]>=\<bbb-E\><rsub|p<rsub|D>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]><label|equation:Restriction>.
  </equation>

  We can find the <math|\<theta\><rsub|\<star\>>> by iteratively updating
  <math|\<theta\>> along the direction <math|-\<partial\>L/\<partial\>\<theta\>>.
  With a series of direct calculus, we find

  <\equation>
    <frac|\<partial\>L|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=\<bbb-E\><rsub|p<rsub|D>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|p<around*|(|\<cdummy\>,\<theta\>|)>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]><label|equation:Iteration>.
  </equation>

  Notice that <math|L> is equivalent to another loss <math|L<rsub|LA>> where

  <\equation>
    L<rsub|LA><around*|(|\<theta\>|)>\<assign\>\<bbb-E\><rsub|p<rsub|D>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|p<around*|(|\<cdummy\>,\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]><label|equation:Equivalent
    Loss>.
  </equation>

  The expectation <math|\<bbb-E\><rsub|p<around*|(|\<cdummy\>,\<theta\>|)>>>
  is computed by Monte-Carlo method. We sample data points from
  <math|p<around*|(|\<cdummy\>,\<theta\>|)>> with fixed <math|\<theta\>>, and
  compute the mean value of <math|S<around*|(|\<cdummy\>,\<theta\>|)>> on
  these data points. The derivative of <math|\<theta\>> on this expectation
  is taken on the <math|S<around*|(|\<cdummy\>,\<theta\>|)>> instead of on
  the data points. In this way, <math|L<rsub|LA>> is equivalent to <math|L>.

  It can be read from this equation that minimizing <math|L<rsub|LA>> is to
  decrease the <math|S<around*|(|\<cdummy\>,\<theta\>|)>> at data points (the
  first term) while increase it at the points away from data (the second
  term). As figure <reference|figure: Least-Action> illustrates, this way of
  optimization will site a real world datum onto a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>, in statistical sense. In this
  way, the <math|S<around*|(|\<cdummy\>,\<theta\>|)>> is recognized as a
  parameterized action. It thus describes the dynamics of an entity. This
  entity may be of physics, like particles. But it can also be words, genes,
  flock of birds, and so on. For example, we can find out how words
  \Pinteract\Q with each other.

  <big-figure|<with|gr-mode|<tuple|edit|spline>|gr-frame|<tuple|scale|1.00001cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|10|10|center>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-line-width|0.5ln|gr-dash-style|11100|gr-color|blue|<graphics||<with|arrow-end|\|\<gtr\>|<line|<point|-6|-3>|<point|-6.0|3.0>>>|<with|arrow-end|\|\<gtr\>|<line|<point|-6|-3>|<point|6.0|-3.0>>>|<math-at|S<around*|(|x,\<theta\>|)>|<point|-6.40049278190267|3.30061515056306>>|<math-at|x|<point|6.20000992178327|-3.1>>|<with|line-width|5ln|arrow-end|\<gtr\>|opacity|50%|color|red|<line|<point|-1.3|3.2>|<point|-1.3|1.7>>>|<with|line-width|5ln|color|blue|opacity|50%|arrow-begin|\<less\>|<line|<point|0.8|-0.83096059724234>|<point|0.8|-2.33096059724234>>>|<with|dash-style|11100|line-width|0.5ln|color|red|<line|<point|-1.3|1.4>|<point|-1.3|-3.0>>>|<with|color|red|<point|-1.3|1.41877>>|<with|color|red|<math-at|x<rsub|1>|<point|-1.4|-3.3>>>|<with|color|blue|<math-at|x<rsub|2>|<point|0.7|-3.3>>>|<with|dash-style|11100|line-width|0.5ln|color|blue|<line|<point|0.8|0.5>|<point|0.8|-3.0>>>|<with|color|blue|<point|0.8|-0.6>>|<with|color|dark
  cyan|dash-style|11100|<spline|<point|-5|1>|<point|-2.3|-0.7>|<point|0.8|0.5>|<point|3.04196914325401|2.48975575876838>|<point|4.2|2.2>>>|<with|color|dark
  cyan|<spline|<point|-5.04362277379988|-0.0748763911166967>|<point|-2.85798620872125|2.07284242554528>|<point|0.666826517619433|-0.580225885932565>|<point|3.38308005225473|1.9970400013229>|<point|4.21690671870091|2.62872686984274>>>>>|<label|figure:
  Least-Action> This figure illustrate how
  <math|min<rsub|\<theta\>>L<rsub|LA><around*|(|\<theta\>|)>> will site a
  real world datum onto a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>. The green curve represents the
  current not-yet-optimized <math|S<around*|(|\<cdummy\>,\<theta\>|)>>. The
  <math|x<rsub|1>> (red point) is a real world datum while <math|x<rsub|2>>
  (blue point), which is currently a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>, is not. Minimizing
  <math|L<rsub|LA>> by tuning <math|\<theta\>> pushes the
  <math|\<bbb-E\><rsub|p<rsub|D>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
  down to lower value, corresponding to the red downward double-arrow on
  <math|x<rsub|1>>. Also, since <math|x<rsub|2>> is a local minimum, the data
  points sampled from <math|p<around*|(|x,\<theta\>|)>\<propto\>exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>
  will accumulate around <math|x<rsub|2>>. So, minimizing <math|L<rsub|LA>>
  also pulls the <math|\<bbb-E\><rsub|p<around*|(|\<cdummy\>,\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
  up to greater value, corresponding to the blue upward double-arrow on
  <math|x<rsub|2>>. Altogether, it makes <math|x<rsub|1>> a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>> and
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>> is optimized to be the dashed
  green curve.>

  <subsection|Extract Dynamics from Raw Data: An Instance of Classical
  Physics>

  Suppose that we have a set of raw data about an entity from classical
  physics. To describe the entity, we need a configuration like
  <math|x<around*|(|t|)>>. So, the raw data is a set
  <math|<around*|{|x<rsub|k><around*|(|1:T|)>\|k=1,\<ldots\>,D|}>> where time
  is discretized as <math|<around*|(|1,\<ldots\>,T|)>> and the data size is
  <math|D>. We have employed <math|x<rsub|k><around*|(|1:T|)>> for the series
  of <math|<around*|(|x<rsub|k><around*|(|1|)>,\<ldots\>,x<rsub|k><around*|(|T|)>|)>>.
  Thus, each datum is a movie of the physical system, frame by frame. These
  raw data are obtained by experiments and measurements. Considering the
  errors in the measurements, variances shall be involved and the empirical
  distribution <math|p<rsub|D><around*|(|x<around*|(|1:T|)>|)>> comes to be a
  sum of normal distribution.

  As a physical system, the <math|q> that represents free theory shall be
  Gaussian. It may be

  <\equation*>
    q<around*|(|x|)>\<propto\>exp<around*|{|-<frac|1|2><big|sum><rsub|t=1><rsup|T-1>
    <around*|[|x<around*|(|t+1|)>-x<around*|(|t|)>|]><rsup|2>|}>,
  </equation*>

  indicating a kinetic term.

  The action <math|S<around*|[|x,\<theta\>|]>> is given by some ansatz.
  First, we may suppose that the action is local. That is, there is a
  Lagrangian <math|L<around*|(|x,t,\<theta\>|)>> such that
  <math|S<around*|[|x,\<theta\>|]>=<big|sum><rsub|t=1><rsup|T>L<around*|(|x<around*|(|t|)>,t,\<theta\>|)>>.
  Next, we may suppose that there exist some symmetries about the physical
  system, such as autonomous and parity symmetry, which means
  <math|L<around*|(|x,t,\<theta\>|)>=<big|sum><rsub|n=1><rsup|+\<infty\>>\<theta\><rsub|n>
  x<rsup|2n>> when <math|x> is <math|1>-dimensional. These symmetries will
  further restrict the possible form of the action. Finally, we can write
  down a most generic form of action that satisfies all the ansatz. Neural
  network and symbolic regression may help you write down this most generic
  form <\footnote>
    For example, <math|L<around*|(|x,t,\<theta\>|)>=f<around*|(|x,\<theta\>|)>>
    where <math|f> is a neural network.
  </footnote>. Then, we find the best fit <math|\<theta\><rsub|\<star\>>> by
  equation <reference|equation:Iteration>. The action
  <math|S<around*|[|x,\<theta\><rsub|\<star\>>|]>> describes the dynamics
  extracted from the raw data.<\footnote>
    An experiment on general oscillators can be found in the
    <samp|oscillators/Oscillator.ipynb>.
  </footnote>

  <subsection|Maximum-Entropy and Least-Action Are Saddle Point of a
  Functional>

  In fact, equations <reference|equation:Generic Density>,
  <reference|equation:Partition Function>, and
  <reference|equation:Restriction> can be seen as an extremum of the
  functional

  <\equation*>
    V<around*|[|p,\<theta\>,\<mu\>|]>\<assign\>H<around*|[|p,q|]>+<around*|(|\<bbb-E\><rsub|p><around*|[|S<around*|(|x,\<theta\>|)>|]>-\<bbb-E\><rsub|p<rsub|D>><around*|[|S<around*|(|x,\<theta\>|)>|]>|)>+\<mu\><around*|(|\<bbb-E\><rsub|p><around*|[|1|]>-1|)>,
  </equation*>

  or explicitly

  <\equation*>
    V<around*|[|p,\<theta\>,\<mu\>|]>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>ln<frac|p<around*|(|x|)>|q<around*|(|x|)>>+<around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>S<around*|(|x,\<theta\>|)>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<rsub|D><around*|(|x|)>S<around*|(|x,\<theta\>|)>|)>+\<mu\><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>-1|)>.
  </equation*>

  Indeed, variance on <math|p> gives equation <reference|equation:Generic
  Density> and equation <reference|equation:Partition Function>. And partial
  derivative on <math|\<theta\>> gives equation
  <reference|equation:Restriction>. Condition by partial derivative on
  <math|\<mu\>> has been involved in the <math|Z<around*|(|\<theta\>|)>>.

  Interestingly, the second term is just the
  <math|-L<rsub|LA><around*|(|\<theta\>|)>> in equation
  <reference|equation:Equivalent Loss>. So, the extremum is in fact a saddle
  point, as

  <\equation>
    <around*|(|p<rsub|\<star\>>,\<theta\><rsub|\<star\>>,\<mu\><rsub|\<star\>>|)>=min<rsub|p,\<mu\>>
    max<rsub|\<theta\>>V<around*|[|p,\<theta\>,\<mu\>|]>.
  </equation>

  The minimization minimizes the relative entropy between <math|p> and
  <math|q> and the expectation of action <math|S<around*|(|\<cdummy\>,\<theta\>|)>>
  by tuning <math|p>, which in turn relates the probability <math|p> with the
  action <math|S<around*|(|\<cdummy\>,\<theta\>|)>>. The maximization sites
  real data onto the action's local minima by tuning <math|\<theta\>>. So, we
  find that maximum-entropy principle and least-action principle are saddle
  point of a functional <math|V>.

  <subsection|Actions in Machine Learning: Minimize Loss or Loss Gradients?>

  As figure <reference|figure: Least-Action> indicates, we shall push down
  the real world data while pull up the data sampled from the
  <math|p<around*|(|x,\<theta\>|)>>, until the two forces balanced. In fact,
  to sample from <math|p<around*|(|x,\<theta\>|)>>, we will not fully
  evaluate the Markov chain Monte-Carlo to equilibrium, which will consume a
  plenty of computation resources, but only run several steps. In this case,
  the data sampled from <math|p<around*|(|x,\<theta\>|)>> will be close to
  the initial of the Markov chain Monte-Carlo, for which we employ the real
  world data. So, let <math|x\<sim\>p<rsub|D>> as the real word datum, we
  have the sampled <math|x<rprime|'>\<approx\>x>. The difference
  <math|\<Delta\>x\<assign\>x<rprime|'>-x> is small enough, so that we have
  the approximation of the equivalent loss <math|L<rsub|LA>> (equation
  <reference|equation:Equivalent Loss>) as

  <\align>
    <tformat|<table|<row|<cell|L<rsub|LA><around*|(|\<theta\>|)>=>|<cell|\<bbb-E\><rsub|p<rsub|D>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|p<around*|(|\<cdummy\>,\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>>|<row|<cell|\<approx\>>|<cell|\<bbb-E\><rsub|x\<sim\>p<rsub|D>><around*|[|S<around*|(|x,\<theta\>|)>-S<around*|(|x+\<Delta\>x,\<theta\>|)>|]>>>|<row|<cell|=>|<cell|\<bbb-E\><rsub|x\<sim\>p<rsub|D>><around*|[|-<frac|\<partial\>S|\<partial\>x<rsup|\<alpha\>>><around*|(|x,\<theta\>|)>\<Delta\>x<rsup|\<alpha\>>|]>.>>>>
  </align>

  If we use Langevin dynamics for Markov chain Monte-Carlo with extremely low
  temperature (section <reference|section: Conservative Langevin Dynamics
  Satisfies Detailed Balance>), and run for a single-step, we will have
  <math|\<Delta\>x<rsup|\<alpha\>>\<approx\>-<around*|(|\<partial\>S/\<partial\>x<rsub|\<alpha\>>|)><around*|(|x,\<theta\>|)>
  \<Delta\>t>, where <math|\<Delta\>t> is the step-size. Plugging back to
  <math|L<rsub|LA>>, we have

  <\equation*>
    L<rsub|LA><around*|(|\<theta\>|)>\<approx\><wide|L|~><rsub|LA><around*|(|\<theta\>|)>\<assign\>\<bbb-E\><rsub|x\<sim\>p<rsub|D>><around*|[|<around*|\<\|\|\>|<frac|\<partial\>S|\<partial\>x>|\<\|\|\>><rsub|2><rsup|2><around*|(|x,\<theta\>|)>|]>\<Delta\>t.
  </equation*>

  \;

  Minimizing <math|<wide|L|~><rsub|LA><around*|(|\<theta\>|)>> by adjusting
  <math|\<theta\>> is approximately reducing the norm of
  <math|\<partial\>S/\<partial\>x> on real word data. This method of
  optimization is quite different from that used in machine learning. In
  machine learning, the action turns to be the loss function that
  characterizes the difference between the targets and the model predictions.
  The aim of machine learning is minimizing the action (loss function)
  instead of the norm of its gradient.

  There are two kinds of tasks in supervised machine learning: regression and
  classification. For regression task, the loss function that is usually
  employed is mean squared error. And for classification, the loss function
  is chosen to be relative entropy (or named KL-divergence). Let
  <math|f<around*|(|x,\<theta\>|)>> the model with parameter <math|\<theta\>>
  and the input-target pair <math|<around*|(|x,y|)>\<sim\>p<rsub|D>>, we are
  to compute

  <\equation*>
    <frac|<wide|L|~><rsub|LA><around*|(|\<theta\>|)>|\<Delta\>t>=\<bbb-E\><rsub|<around*|(|x,y|)>\<sim\>p<rsub|D>><around*|[|<around*|\<\|\|\>|<frac|\<partial\>S|\<partial\>x>|\<\|\|\>><rsub|2><rsup|2><around*|(|x,y,\<theta\>|)>+<around*|\<\|\|\>|<frac|\<partial\>S|\<partial\>y>|\<\|\|\>><rsub|2><rsup|2><around*|(|x,y,\<theta\>|)>|]>
  </equation*>

  for these two loss functions.

  In regression task, we have model input <math|x\<in\>\<bbb-R\><rsup|n>> and
  scalar target <math|y\<in\>\<bbb-R\>>, where <math|n\<geqslant\>1>. Mean
  squared error is defined by <math|\<bbb-E\><rsub|<around*|(|x,y|)>\<sim\>p<rsub|D>><around*|[|<around*|(|f<around*|(|x,\<theta\>|)>-y|)><rsup|2>|]>>.
  So, the action is

  <\equation*>
    S<rsub|MSE><around*|(|x,y,\<theta\>|)>\<assign\><around*|(|f<around*|(|x,\<theta\>|)>-y|)><rsup|2>.
  </equation*>

  Directly, we have

  <\align>
    <tformat|<table|<row|<cell|<frac|\<partial\>S<rsub|MSE>|\<partial\>x<rsup|\<alpha\>>><around*|(|x,y,\<theta\>|)>=>|<cell|2<around*|(|f<around*|(|x,\<theta\>|)>-y|)><frac|\<partial\>f|\<partial\>x<rsup|\<alpha\>>><around*|(|x,\<theta\>|)>;>>|<row|<cell|<frac|\<partial\>S<rsub|MSE>|\<partial\>y><around*|(|x,y,\<theta\>|)>=>|<cell|2<around*|(|y-f<around*|(|x,\<theta\>|)>|)>.>>>>
  </align>

  Thus, for mean squared error,

  <\equation*>
    <frac|<wide|L|~><rsub|LA><around*|(|\<theta\>|)>|\<Delta\>t>=4
    \<bbb-E\><rsub|<around*|(|x,y|)>\<sim\>p<rsub|D>><around*|[|S<rsub|MSE><around*|(|x,y,\<theta\>|)><around*|(|1+<around*|\<\|\|\>|<frac|\<partial\>f|\<partial\>x>|\<\|\|\>><rsup|2><rsub|2><around*|(|x,\<theta\>|)>|)>|]>.
  </equation*>

  Minimizing <math|<wide|L|~><rsub|LA><around*|(|\<theta\>|)>> by adjusting
  <math|\<theta\>> will minimize <math|S<rsub|MSE>> itself as well as the
  norm of <math|\<partial\>f/\<partial\>x> on real world data
  <math|p<rsub|D>>. The norm of <math|\<partial\>f/\<partial\>x> can be
  viewed as a regularization term, which provides a greater robustness for
  the model.

  In classification task, we have model input <math|x\<in\>\<bbb-R\><rsup|m>>
  and categorical probabilistic logits <math|y\<in\>\<bbb-R\><rsup|n>>, where
  <math|m\<geqslant\>1> and <math|n\<gtr\>1>. Relative entropy is defined as
  <math|\<bbb-E\><rsub|<around*|(|x,y|)>\<sim\>p<rsub|D>><around*|[|<big|sum><rsub|\<alpha\>>p<rsub|\<alpha\>><around*|(|y|)><around*|(|ln
  p<rsub|\<alpha\>><around*|(|y|)>-ln q<rsub|\<alpha\>><around*|(|x,\<theta\>|)>|)>|]>>,
  where <math|p> and <math|q> are softmax function of <math|y> and
  <math|f<around*|(|x,\<theta\>|)>> respectively.<\footnote>
    Softmax function <math|\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    is defined by

    <\equation*>
      softmax<rsup|\<alpha\>><around*|(|x|)>\<assign\><frac|exp<around*|(|x<rsup|\<alpha\>>|)>|<big|sum><rsub|\<beta\>>exp<around*|(|x<rsup|\<beta\>>|)>>.
    </equation*>
  </footnote> So, the action is

  <\equation*>
    S<rsub|RE><around*|(|x,y,\<theta\>|)>\<assign\><big|sum><rsub|\<alpha\>>p<rsub|\<alpha\>><around*|(|y|)><around*|(|ln
    p<rsub|\<alpha\>><around*|(|y|)>-ln q<rsub|\<alpha\>><around*|(|x,\<theta\>|)>|)>.
  </equation*>

  Directly, we have

  <\align>
    <tformat|<table|<row|<cell|<frac|\<partial\>S<rsub|RE>|\<partial\>x<rsup|\<alpha\>>><around*|(|x,y,\<theta\>|)>=>|<cell|<big|sum><rsub|\<beta\>><around*|(|q<rsub|\<beta\>>-y<rsub|\<beta\>>|)><frac|\<partial\>f<rsup|\<beta\>>|\<partial\>x<rsup|\<alpha\>>>;>>|<row|<cell|<frac|\<partial\>S<rsub|RE>|\<partial\>y<rsup|\<alpha\>>><around*|(|x,y,\<theta\>|)>=>|<cell|p<rsub|\<alpha\>><around*|(|ln
    p<rsub|\<alpha\>>-ln q<rsub|\<alpha\>>|)>-p<rsub|\<alpha\>>
    S<rsub|CE>.>>>>
  </align>

  Thus, for relative entropy, <\footnote>
    Usually, we use cross-entropy instead of relative entropy. But from
    cross-entropy, we cannot find a proper action. If using cross-entropy as
    loss function or action, it can be proven that the
    <math|<wide|L|~><rsub|LA><around*|(|\<theta\>|)>> will never vanish.
  </footnote> <\footnote>
    We also usually use <math|y> as <math|p> directly. This will not work
    too, since the components of <math|p> are not mutually independent.
    Indeed, <math|\<partial\>S<rsub|RE>/\<partial\>p<rsub|\<alpha\>>=ln
    p<rsub|\<alpha\>>-ln q<rsub|\<alpha\>>+1>. When <math|p=q>,
    <math|\<partial\>S<rsub|RE>/\<partial\>p<rsub|\<alpha\>>=1>. Contrarily,
    we have

    <\equation>
      <frac|\<partial\>S<rsub|RE>|\<partial\>y<rsup|\<alpha\>>>=<big|sum><rsub|\<beta\>><frac|\<partial\>p<rsub|\<beta\>>|\<partial\>y<rsup|\<alpha\>>><frac|\<partial\>S<rsub|RE>|\<partial\>p<rsub|\<beta\>>>=p<rsub|\<alpha\>><around*|(|ln
      p<rsub|\<alpha\>>-ln q<rsub|\<alpha\>>|)>-p<rsub|\<alpha\>>
      S<rsub|RE>+<with|color|blue|p<rsub|\<alpha\>><around*|(|1-<big|sum><rsub|\<beta\>>p<rsub|\<beta\>>|)>>,
    </equation>

    where we have labeled the contribution of the <math|1> by blue color. It
    is by the restriction <math|<big|sum><rsub|\<beta\>>p<rsub|\<beta\>>=1>
    that this term vanishes. In this way,
    <math|\<partial\>S<rsub|RE>/\<partial\>y<rsup|\<alpha\>>=0> when
    <math|p=q>.
  </footnote>

  <\equation*>
    <frac|<wide|L|~><rsub|LA><around*|(|\<theta\>|)>|\<Delta\>t>=
    \<bbb-E\><rsub|<around*|(|x,y|)>\<sim\>p<rsub|D>><around*|[|<around*|\<\|\|\>|<big|sum><rsub|\<alpha\>><around*|(|p<rsub|\<alpha\>>-q<rsub|\<alpha\>>|)><frac|\<partial\>f<rsup|\<alpha\>>|\<partial\>x>|\<\|\|\>><rsup|2><rsub|2>+<around*|\<\|\|\>|p<around*|(|ln
    p-ln q|)>-p S<rsub|RE>|\<\|\|\>><rsub|2><rsup|2>|]>.
  </equation*>

  Minimizing <math|<wide|L|~><rsub|LA><around*|(|\<theta\>|)>> by adjusting
  <math|\<theta\>> will minimize both of the terms in the expectation. On the
  extremum <math|\<theta\><rsub|\<star\>>>,
  <math|<wide|L|~><rsub|LA><around*|(|\<theta\><rsub|\<star\>>|)>=0>. From
  the second term, since <math|p> is not one-hot (as a result of softmax), we
  have <math|ln p<rsub|\<alpha\>>-ln q<rsub|\<alpha\>>=S<rsub|CE>> for all
  <math|\<alpha\>>. This implies <math|ln p<rsub|\<alpha\>>\<equiv\>ln
  q<rsub|\<alpha\>>> and <math|S<rsub|CE>=0>, on the real world data sampled
  from <math|p<rsub|D>>. Thus, the first term vanishes also. But, during the
  training with <math|<wide|L|~><rsub|LA><around*|(|\<theta\>|)>/\<Delta\>t>
  as loss, <math|<around*|\<\|\|\>|\<partial\>f/\<partial\>x|\<\|\|\>>> will
  also be reduced on the real world data. This again provides a
  regularization for a greater robustness.

  For both mean squared error and relative entropy, form their expressions it
  can be seen directly that, given any <math|\<theta\>>, a pair
  <math|<around*|(|x<rsub|\<star\>>,y<rsub|\<star\>>|)>\<assign\>argmin<rsub|<around*|(|x,y|)>>
  S<around*|(|x,y,\<theta\>|)>> has <math|<around*|(|\<partial\>S/\<partial\>x|)><around*|(|x<rsub|\<star\>>,y<rsub|\<star\>>,\<theta\>|)>=<around*|(|\<partial\>S/\<partial\>y|)><around*|(|x<rsub|\<star\>>,y<rsub|\<star\>>,\<theta\>|)>=0>,
  and vice versa. This is because the loss functions are strictly convex. It
  explains why minimizing the loss and the loss gradients give the same
  performance.

  But this does not mean that the two loss
  <math|\<bbb-E\><rsub|<around*|(|x,y|)>\<sim\>P<rsub|D>><around*|[|S<around*|(|x,y,\<theta\>|)>|]>>
  and <math|\<bbb-E\><rsub|<around*|(|x,y|)>\<sim\>P<rsub|D>><around*|[|<around*|\<\|\|\>|<around*|(|\<partial\>S/\<partial\>x|)><around*|(|x,y,\<theta\>|)>|\<\|\|\>><rsup|2>+|]><around*|\<\|\|\>|<around*|(|\<partial\>S/\<partial\>y|)><around*|(|x,y,\<theta\>|)>|\<\|\|\>><rsup|2>>
  are equivalent. Imagine a Gaussian <math|P<rsub|D>>, around the mean value
  the density is high, the weight of the mean value is large, So, minimizing
  <math|\<bbb-E\><rsub|<around*|(|x,y|)>\<sim\>P<rsub|D>><around*|[|S<around*|(|x,y,\<theta\>|)>|]>>
  will push the <math|S> at the mean value downward greatly, resulting in an
  inverted reflection of bell-shaped curve. But, minimizing
  <math|\<bbb-E\><rsub|<around*|(|x,y|)>\<sim\>P<rsub|D>><around*|[|<around*|\<\|\|\>|<around*|(|\<partial\>S/\<partial\>x|)><around*|(|x,y,\<theta\>|)>|\<\|\|\>><rsup|2>+|]><around*|\<\|\|\>|<around*|(|\<partial\>S/\<partial\>y|)><around*|(|x,y,\<theta\>|)>|\<\|\|\>><rsup|2>>
  will give a plateau around the mean value.

  There are also unsupervised machine learning, such as clustering task.
  <hlink|K-means|https://en.wikipedia.org/wiki/K-means_clustering#Description>,
  for example, has the loss function <math|L<around*|(|x,\<theta\>|)>=<big|sum><rsub|x<rsub|j>\<in\>U<rsub|i>><around*|\<\|\|\>|x<rsub|j>-\<theta\><rsub|i>|\<\|\|\>><rsup|2><rsub|2>>,
  where <math|U<rsub|i>> collects all the <math|x<rsub|j>> that are closer to
  <math|\<theta\><rsub|i>> than to any other <math|\<theta\>> components. The
  <math|p<rsub|D>> has only one datum. So, the loss function
  <math|L<around*|(|x,\<theta\>|)>> can also be viewed as an action. This
  applies to other unsupervised machine learning algorithms where there is a
  loss function to be minimized on the real world data.

  As a summary, we have found that for each supervised or unsupervised
  machine learning task, we can assign a proper action for it.<\footnote>
    Experiments can be found in the folder <samp|actions>.
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
    <associate|auto-4|<tuple|1|2>>
    <associate|auto-5|<tuple|1.3|2>>
    <associate|auto-6|<tuple|1.4|3>>
    <associate|auto-7|<tuple|1.5|3>>
    <associate|equation:Equivalent Loss|<tuple|5|1>>
    <associate|equation:Generic Density|<tuple|1|1>>
    <associate|equation:Iteration|<tuple|4|1>>
    <associate|equation:Partition Function|<tuple|2|1>>
    <associate|equation:Restriction|<tuple|3|1>>
    <associate|figure: Least-Action|<tuple|1|2>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|2>>
    <associate|footnote-3|<tuple|3|2>>
    <associate|footnote-4|<tuple|4|4>>
    <associate|footnote-5|<tuple|5|4>>
    <associate|footnote-6|<tuple|6|4>>
    <associate|footnote-7|<tuple|7|?>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|2>>
    <associate|footnr-3|<tuple|3|2>>
    <associate|footnr-4|<tuple|4|4>>
    <associate|footnr-5|<tuple|5|4>>
    <associate|footnr-6|<tuple|7|4>>
    <associate|footnr-7|<tuple|7|?>>
    <associate|section: Generic Dynamics Can Be Extract From Data
    Fitting|<tuple|1.2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>|| This figure
      illustrate how <with|mode|<quote|math>|min<rsub|\<theta\>>L<rsub|LA><around*|(|\<theta\>|)>>
      will site a real world datum onto a local minimum of
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>. The green
      curve represents the current not-yet-optimized
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>. The
      <with|mode|<quote|math>|x<rsub|1>> (red point) is a real world datum
      while <with|mode|<quote|math>|x<rsub|2>> (blue point), which is
      currently a local minimum of <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>,
      is not. Minimizing <with|mode|<quote|math>|L<rsub|LA>> by tuning
      <with|mode|<quote|math>|\<theta\>> pushes the
      <with|mode|<quote|math>|\<bbb-E\><rsub|p<rsub|D>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
      down to lower value, corresponding to the red downward double-arrow on
      <with|mode|<quote|math>|x<rsub|1>>. Also, since
      <with|mode|<quote|math>|x<rsub|2>> is a local minimum, the data points
      sampled from <with|mode|<quote|math>|p<around*|(|x,\<theta\>|)>\<propto\>exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>
      will accumulate around <with|mode|<quote|math>|x<rsub|2>>. So,
      minimizing <with|mode|<quote|math>|L<rsub|LA>> also pulls the
      <with|mode|<quote|math>|\<bbb-E\><rsub|p<around*|(|\<cdummy\>,\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
      up to greater value, corresponding to the blue upward double-arrow on
      <with|mode|<quote|math>|x<rsub|2>>. Altogether, it makes
      <with|mode|<quote|math>|x<rsub|1>> a local minimum of
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>> and
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>> is
      optimized to be the dashed green curve.>|<pageref|auto-4>>
    </associate>
    <\associate|toc>
      1<space|2spc>Least-Action Principle
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Data Fitting Is Equivalent
      to Least-Action Principle <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Extract Dynamics from Raw
      Data: An Instance of Classical Physics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Maximum-Entropy and
      Least-Action Are Saddle Point of a Functional
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Actions in Machine Learning:
      Minimize Loss or Loss Gradients? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>
    </associate>
  </collection>
</auxiliary>